CREATE TABLE PerfilDeAcessoTelaPermissao
(
    PerfilDeAcessoId TINYINT NOT NULL,
    TelaId TINYINT NOT NULL,
    PermissaoId TINYINT NOT NULL,
    PRIMARY KEY (PerfilDeAcessoId, TelaId, PermissaoId),
    FOREIGN KEY (PerfilDeAcessoId) REFERENCES PerfilDeAcesso(PerfilDeAcessoId),
    FOREIGN KEY (TelaId) REFERENCES Tela(TelaId),
    FOREIGN KEY (PermissaoId) REFERENCES Permissao(PermissaoId)
);