CREATE TABLE Usuario
(
	UsuarioId BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
	PerfilDeAcessoId TINYINT NOT NULL,
	Nome NVARCHAR(255) NOT NULL,
	Email NVARCHAR(255) UNIQUE NOT NULL,
	Senha NVARCHAR(255) NOT NULL,
	RefreshToken NVARCHAR(255) UNIQUE NULL,
	QuantidadeTentativasLogin TINYINT NOT NULL DEFAULT 0,
	Status VARCHAR(50) NOT NULL DEFAULT 'Ativo',
	DataExpiracaoRefreshToken DATETIME2 NULL,
	DataCadastro DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	DataUltimaAtualizacao DATETIME2 NULL,
	DataUltimoAcesso DATETIME2 NULL,
	DataBloqueio DATETIME2 NULL,
	FOREIGN KEY (PerfilDeAcessoId) REFERENCES PerfilDeAcesso(PerfilDeAcessoId)
)

-- Índice para consultas por Email (já coberto pelo UNIQUE)

-- Índice para consultas por RefreshToken (já coberto pelo UNIQUE)

-- Índice para consultas por nome (se necessário)
CREATE NONCLUSTERED INDEX IX_Usuario_Nome ON Usuario (Nome)