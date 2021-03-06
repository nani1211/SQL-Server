SET TRANSACTION ISOLATION LEVEL READ COMMITTED
-- Dropping the transactional subscriptions
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @subscriber = N'CL-HLG-HSQLECOM\HSQLECOM', @destination_db = N'DB_HOM_EXTRA_NPC', @article = N'all'
GO

-- Dropping the transactional articles
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Administrador', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Administrador', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Campo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Campo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CampoValor', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CampoValor', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CanalVenda', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CanalVenda', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Categoria', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Categoria', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaArvoreFilho', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaArvoreFilho', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaArvorePai', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaArvorePai', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaSimilar', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CategoriaSimilar', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ColecaoModelo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ColecaoModelo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ColecaoTipo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ColecaoTipo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'CompraEntregaStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'CompraEntregaStatus', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Controle', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Controle', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'DicionarioCaptcha', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'DicionarioCaptcha', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Estoque', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Estoque', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Fabricante', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Fabricante', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FaixaPreco', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FaixaPreco', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FasePedido', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FasePedido', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Feriado', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Feriado', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FormaPagamento', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FormaPagamento', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FormaPagamentoSige', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FormaPagamentoSige', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Fornecedor', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Fornecedor', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FreteEntregaTipo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FreteEntregaTipo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'FreteModalTipo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'FreteModalTipo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Grupo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Grupo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'GrupoItem', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'GrupoItem', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'GuiaVisual', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'GuiaVisual', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'LojaColaborador', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'LojaColaborador', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'LojaColaboradorUtm', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'LojaColaboradorUtm', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Marca', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Marca', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'NomenclaturaBrasileiraMercadoria', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'NomenclaturaBrasileiraMercadoria', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Perfil', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Perfil', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'PerfilRecursoSeguro', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'PerfilRecursoSeguro', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Produto', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Produto', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ProdutoCampoValor', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ProdutoCampoValor', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ProdutoCategoriaSimilar', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ProdutoCategoriaSimilar', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'RecursoSeguro', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'RecursoSeguro', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'RegDepartamento', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'RegDepartamento', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'RegFamilia', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'RegFamilia', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'RegSetor', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'RegSetor', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'RegSubFamilia', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'RegSubFamilia', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ResenhaInteresse', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ResenhaInteresse', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'Sku', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'Sku', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuCampoValor', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuCampoValor', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuCondicaoComercial', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuCondicaoComercial', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuEan', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuEan', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuGrupoItem', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuGrupoItem', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuKitFilho', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuKitFilho', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuServico', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuServico', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuServicoPrefixoExcecao', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuServicoPrefixoExcecao', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'SkuServicoTipo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'SkuServicoTipo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'TipoCampo', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'TipoCampo', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'TipoProgramaRecompensa', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'TipoProgramaRecompensa', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'TipoSku', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'TipoSku', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'TipoTermoAceite', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'TipoTermoAceite', @force_invalidate_snapshot = 1
GO
use [DB_HOM_CORP_NPC]
exec sp_dropsubscription @publication = N'CORP_OUTROS_NPC', @article = N'ValeStatus', @subscriber = N'all', @destination_db = N'all'
GO
use [DB_HOM_CORP_NPC]
exec sp_droparticle @publication = N'CORP_OUTROS_NPC', @article = N'ValeStatus', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [DB_HOM_CORP_NPC]
exec sp_droppublication @publication = N'CORP_OUTROS_NPC'
GO

