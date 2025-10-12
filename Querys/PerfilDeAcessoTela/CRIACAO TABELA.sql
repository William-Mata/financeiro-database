CREATE TABLE PerfilDeAcessoTela 
(
    PerfilDeAcessoId TINYINT NOT NULL,
    TelaId TINYINT NOT NULL,
    PRIMARY KEY (PerfilDeAcessoId, TelaId),
    FOREIGN KEY (PerfilDeAcessoId) REFERENCES PerfilDeAcesso(PerfilDeAcessoId),
    FOREIGN KEY (TelaId) REFERENCES Tela(TelaId)
);