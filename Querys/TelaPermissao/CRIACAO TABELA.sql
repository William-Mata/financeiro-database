CREATE TABLE TelaPermissao
(
    TelaId TINYINT NOT NULL,
    PermissaoId TINYINT NOT NULL,
    PRIMARY KEY (TelaId, PermissaoId),
    FOREIGN KEY (TelaId) REFERENCES Tela(TelaId),
    FOREIGN KEY (PermissaoId) REFERENCES Permissao(PermissaoId)
);