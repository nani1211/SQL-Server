USE [db_controle_ddl_tabelas]
GO
/****** Object:  DdlTrigger [AdicaoDeTabelaAutomatica]    Script Date: 07/13/2011 22:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------

exec sp_changepublication @publication = 'ControleDDLTabelas'
, @property = 'replicate_ddl'
, @value = '0'
, @force_invalidate_snapshot = 0
, @force_reinit_subscription = 0
go

CREATE TRIGGER [AdicaoDeTabelaAutomatica] ON DATABASE 
FOR CREATE_TABLE, 
    ALTER_TABLE, 
    DROP_TABLE
AS 
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @data XML;
	SET @data = EVENTDATA();
	DECLARE @TipoObjeto 	[VARCHAR](50)
	SET @TipoObjeto 	= @DATA.value('(/EVENT_INSTANCE/ObjectType)[1]','varchar(50)')
	DECLARE	@return_value int
	
	DECLARE @schema sysname;
	DECLARE @object sysname;
	DECLARE @eventType sysname;
	
	DECLARE @InsCmd varchar(50)
	DECLARE @UpdCmd varchar(50)
	DECLARE @DelCmd varchar(50)
	
	SET @eventType = @data.value('(/EVENT_INSTANCE/EventType)[1]', 'sysname');
	SET @schema = @data.value('(/EVENT_INSTANCE/SchemaName)[1]', 'sysname');
	SET @object = @data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'sysname') 
	SET @InsCmd = N'CALL [sp_MSins_dbo' + @object + ']'
	SET @DelCmd = N'CALL [sp_MSdel_dbo' + @object + ']'
	SET @UpdCmd = N'CALL [sp_MSupd_dbo' + @object + ']'
	IF @object IS NOT NULL
	PRINT '  ' + @eventType + ' - ' + @schema + '.' + @object;
	ELSE
	PRINT '  ' + @eventType + ' - ' + @schema;
	IF @eventType IS NULL
	PRINT CONVERT(nvarchar(max), @data);

	IF OBJECT_ID('dba.dbo.AuditDDLOperations') IS NOT NULL AND OBJECT_ID('dba.dbo.ControleVersao') IS NOT NULL  and @eventtype IN ('CREATE_TABLE') AND (@object NOT LIKE 'sp_MS%' OR @object NOT LIKE 'AUDIT%')
	begin
		print 'Adicionando nova tabela na publicação'
		EXEC	@return_value = sp_addarticle @publication = N'ControleDDLTabelas', @article = @object, @source_owner = N'dbo', @source_object = @object, @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'none', @schema_option = 0x0000000009C359DF, @identityrangemanagementoption = N'manual', @destination_table = @object, @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = @InsCmd, @del_cmd = @DelCmd, @upd_cmd = @UpdCmd, @force_invalidate_snapshot = 1
		IF  @return_value = 0
		begin
			print 'Artigo Incluído na publicação'
			print 'Gerando snapshot para novo artigo'
			exec msdb.dbo.sp_start_job @job_id = 'D5D7D6D6-B906-42BE-92AC-2A5C58066B32', @step_name = 'Snapshot Agent startup message.'
			print 'Snapshot Iniciado. Dentro de 2 minutos verifique se a(s) tabela(s) foi criada nas lojas.'
		end
		else
		begin
			print 'O artigo não pôde ser incluído na publicação dessa vez. Excluindo artigo ' + @object + '. Tente a criação desse objeto novamente após 2 minutos.'
			exec('drop table [' + @object + ']')
		end
		
		print 'Auditando alteração na tabela'
		INSERT dba.dbo.AuditDDLOperations	(	[DatabaseName],	[LoginName],	[PostTime], 	[DatabaseUser], 	[Event], 	[Schema], 	[Object], 	[TSQL], 	[XmlEvent]	) 	VALUES 	(	DB_NAME(),	ORIGINAL_LOGIN(),	GETDATE(), 	CONVERT(sysname, CURRENT_USER), 	@eventType, 	CONVERT(sysname, @schema), 	CONVERT(sysname, @object), 	@data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(max)'), 	@data	);
		print 'Alteração Auditada'
		print '' + char(13)
	end
	IF OBJECT_ID('dba.dbo.AuditDDLOperations') IS NOT NULL AND OBJECT_ID('dba.dbo.ControleVersao') IS NOT NULL and @eventtype IN ('ALTER_TABLE') AND (@object NOT LIKE 'sp_MS%' OR @object NOT LIKE 'AUDIT%')
	begin
		print 'Auditando alteração na tabela'
		INSERT dba.dbo.AuditDDLOperations	
		(	
		[DatabaseName],	[LoginName], HostName,	[PostTime], 	[DatabaseUser], 	[Event], 	[Schema], 	[Object], ObjectType, 	[TSQL]--, 	[XmlEvent]	
		) 	VALUES 	
		(	
		DB_NAME(),	ORIGINAL_LOGIN(), HOST_NAME(),	GETDATE(), 	CONVERT(sysname, CURRENT_USER), 	@eventType, 	CONVERT(sysname, @schema), 	CONVERT(sysname, @object), @TipoObjeto, 	@data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(max)')--, 	@data
		);
		print 'Alteração Auditada'
		print '' + char(13)
		
--		-- Variáveis concernentes ao email a ser enviado
--		declare @msgemail varchar(500)
--		declare @destinatarios varchar(500)
--		set @destinatarios = 'rafael.bahia@corp.pontofrio.com; ti.front.dev@corp.pontofrio.com'
--		declare @assunto varchar(500)
--		set @assunto = 'Nova alteração - ambiente de desenvolvimento'
--		set @msgemail = 'Uma nova alteração foi realizada no ambiente de desenvolvimento. O objeto ' + @object + ' foi alterado pelo usuário ' + ORIGINAL_LOGIN() + '. Caso haja algum outro usuário alterando o objeto mencionado, entrar em contato com o autor da mudança para resolução de possíveis conflitos de versão. ' + ORIGINAL_LOGIN() + ', não se esqueça de atrelar o objeto modificado às atividades do JIRA, TFS, etc.'
--		
--		-- Iniciando serviço de email
--		exec msdb.dbo.sysmail_start_sp
--		-- Enviando o email de notificação
--		exec msdb.dbo.sp_send_dbmail @profile_name = 'DBA',@recipients = @destinatarios, @subject = @assunto, @body = @msgemail

	end
END;


GO

ENABLE TRIGGER [AdicaoDeTabelaAutomatica] ON DATABASE
GO

exec sp_changepublication @publication = 'ControleDDLTabelas'
, @property = 'replicate_ddl'
, @value = '1'
, @force_invalidate_snapshot = 0
, @force_reinit_subscription = 0