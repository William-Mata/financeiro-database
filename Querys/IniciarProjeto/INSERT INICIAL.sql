----------------------------------- PERFIL DE ACESSO ------------------------------------
INSERT INTO PerfilDeAcesso (Descricao)
SELECT 'Administrador'
WHERE NOT EXISTS (SELECT 1 FROM PerfilDeAcesso WHERE Descricao = 'Administrador')

----------------------------------- USUARIO ---------------------------------------------

INSERT INTO Usuario (PerfilDeAcessoId ,Nome, Email, Senha)
SELECT 1, 'Administrador', 'Administrador@financeiro.com.br','hBP2YWrQjzPljq/fp2IxVtKsb2+RUBQBX9TZZEJR8pM='
WHERE NOT EXISTS (SELECT 1 FROM Usuario WHERE Nome = 'Administrador')


------------------------------------ TELA -----------------------------------------------

INSERT INTO Tela (Descricao)
SELECT w.Descricao FROM
(VALUES
    ('Login'),
    ('DashBoard'),
    ('Despesa'),
    ('Receita'),
    ('Cartão'),
    ('Conta Bancária'),
    ('Usuario'),
    ('Perfil De Acesso')
) w (Descricao)
WHERE NOT EXISTS (SELECT 1 FROM Tela t WHERE t.Descricao = w.Descricao);


------------------------------------ PERMISSÃO -----------------------------------------------

INSERT INTO Permissao (Descricao)
SELECT w.Descricao FROM 
(VALUES
    ('Ler'),
    ('Criar'),
    ('Alterar'),
    ('Excluir')
) w (Descricao)
WHERE NOT EXISTS (SELECT 1 FROM Permissao p WHERE p.Descricao = w.Descricao)


------------------------------------ PERFIL DE ACESSO TELA PERMISSAO --------------------------------------

INSERT INTO PerfilDeAcessoTelaPermissao
SELECT 1, TelaId, p.PermissaoId FROM Tela t
    CROSS JOIN Permissao p
WHERE NOT EXISTS (SELECT 1 FROM PerfilDeAcessoTelaPermissao ptp WHERE t.TelaId = ptp.TelaId AND ptp.PerfilDeAcessoId = 1 AND ptp.PermissaoId = p.PermissaoId) 
ORDER BY 2
