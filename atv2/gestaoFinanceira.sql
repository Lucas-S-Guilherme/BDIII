CREATE DATABASE gestao_financeira;
USE gestao_financeira;
#DROP DATABASE gestao_financeira;

CREATE TABLE endereco (
id_end INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
cep_end VARCHAR(10) NOT NULL,
logradouro_end VARCHAR(255) NOT NULL,
num_end VARCHAR(10) NOT NULL,
bairro_end VARCHAR(100) NOT NULL,
cidade_end VARCHAR(100) NOT NULL,
uf_end VARCHAR(2) NOT NULL
);

#id_end não é especificado por que possuí auto_increment
# exemplo onde é especificado as colunas da tabela:
INSERT INTO endereco (cep_end, logradouro_end, num_end, bairro_end, cidade_end, uf_end)
VALUES ('76908410', 'rua bananil', '1984', 'das amebas', 'bostilian', 'TA');

#no exemplo sem especificar as colunas, o ID precisa de pelo menos a inserção do NULL
INSERT INTO endereco VALUES (null, '09823451', 'Brasil', '1010', 'Faria Lima', 'jipa city', 'RO');
INSERT INTO endereco VALUES (NULL, '098234521', 'Aracucu', '7070', 'Neverland', 'Belo', 'UZ');

#SELECT * FROM endereco;
CREATE TABLE empresa (
id_emp INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cnpj_emp VARCHAR(14) NOT NULL,
razao_social_emp VARCHAR(255) NOT NULL,
nome_fantasia_emp VARCHAR(255),
inscricao_est_emp VARCHAR(255),
ativ_econ_emp VARCHAR (255),
situacao_emp ENUM('ativada', 'desativada') NOT NULL,
responsavel_emp VARCHAR(255),
contato1_emp VARCHAR(11) NOT NULL,
contato2_emp VARCHAR(11),
contato3_emp VARCHAR(11),
email1_emp VARCHAR(255) NOT NULL,
email2_emp VARCHAR(255),
imagem_emp MEDIUMBLOB,
id_end_fk INT NOT NULL,
FOREIGN KEY (id_end_fk) REFERENCES endereco(id_end)
);

#exemplo especificando todas colunas, até mesmo as que aceitam null
INSERT INTO empresa (id_emp, cnpj_emp, razao_social_emp, nome_fantasia_emp, inscricao_est_emp, ativ_econ_emp, 
situacao_emp, responsavel_emp, contato1_emp, contato2_emp, contato3_emp, email1_emp, email2_emp, imagem_emp, id_end_fk) 
VALUES(NULL, '09823458192345', 'brasileirinho', NULL, NULL, NULL, 'ativada', NULL, '69970707070', NULL, NULL,
 'brasileirinho@mail', NULL, NULL, '1');
 
# Neste exemplo foi citada somente as propriedades com NOT NULL
INSERT INTO empresa (cnpj_emp, razao_social_emp, situacao_emp, contato1_emp, email1_emp, id_end_fk)
VALUES ('0982459723458', 'Braziuela', 'desativada', '69969696969', 'brazuela@mail.com', 2);

INSERT INTO empresa 
VALUES (NULL, '1234', 'empresário guerreiro', NULL, NULL, NULL, 'desativada', NULL, '69993579590', NULL, NULL, 'mail@mail.com', NULL, NULL, 3);
 
#SELECT * FROM empresa;

CREATE TABLE funcionario (
id_fun INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cpf_fun VARCHAR(11) UNIQUE NOT NULL,
nome_fun VARCHAR(255) NOT NULL,
imagem_fun LONGBLOB,
rg_fun VARCHAR(9),
orgao_emissor_fun VARCHAR(255),
sexo_fun CHAR(1) NOT NULL,
data_nasc_fun DATE,
estado_civil_fun VARCHAR(10),
funcao_fun VARCHAR(45),
data_contratacao_fun DATE,
data_dispensa_fun DATE,
remuneracao_fun DOUBLE,
situacao_fun ENUM('ativo', 'demitido', 'restrição'),
celular_fun VARCHAR(11) NOT NULL,
contato_casa_fun VARCHAR(11),
obs_fun VARCHAR(255),
email_prof_fun VARCHAR(255),
email_pessoal_fun VARCHAR(255),
id_emp_fk INT NOT NULL,
FOREIGN KEY (id_emp_fk) REFERENCES empresa (id_emp),
id_end_fk INT NOT NULL,
FOREIGN KEY (id_end_fk) REFERENCES endereco (id_end)
);

# exemplo citando somente as colunas com NOT NULL (exceto id, que tem auto_increment)
INSERT INTO funcionario (cpf_fun, nome_fun, sexo_fun, celular_fun, id_emp_fk, id_end_fk) VALUES ('01031100202', 'Lucas Guilherme', 'M', '69993579590', 1, 1);

#Exemplo onde nenhuma coluna é referenciada, então todos valores foram inseridos
INSERT INTO funcionario VALUES (NULL, '12345678912', 'Testando123', NULL, '123123123', 'SESDECRO', 'F', '1990-04-10', 'Solteira', 'Diretor', '2024-10-25', NULL, 5500, 'ativo', '69970707070',
'null', 'Trabalhador no mundo', 'contamail@mail.com', 'contatopessoal@mail.com', 2, 2);

INSERT INTO funcionario (id_fun, cpf_fun, nome_fun, imagem_fun, rg_fun, orgao_emissor_fun, sexo_fun, data_nasc_fun, estado_civil_fun, funcao_fun, data_contratacao_fun,
 data_dispensa_fun, remuneracao_fun, situacao_fun, celular_fun, contato_casa_fun, obs_fun, email_prof_fun, email_pessoal_fun, id_emp_fk, id_end_fk) 
VALUES (NULL, '08392832592', 'guilherme', NULL, '987323859', 'Senasp', 'M', '1980-10-10', 'Solteiro', 'Coordenador', '2025-03-30', null, 10000, 'ativo', '69993579590',
'98983452859', 'observador', 'mail.mail@mail', 'mail@gmail.com', 3, 3);

#SELECT * FROM funcionario;

CREATE TABLE usuario
(id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_usuario VARCHAR(100) NOT NULL,
login_usuario VARCHAR(255) NOT NULL,
senha_usuario VARCHAR(255) NOT NULL,
perfil_acesso_usuario ENUM('Gerente', 'Diretor', 'Chefe', 'Administrativo'),
id_fun_fk INT NOT NULL,
FOREIGN KEY (id_fun_fk) REFERENCES funcionario (id_fun)
);

#inserindo sem especificar as colunas
INSERT INTO usuario VALUES (NULL, 'Lucas Guilherme', 'Lucas', 'senha', 'Gerente', 1);

#referenciado somente colunas NOT NULL
INSERT INTO usuario (nome_usuario, login_usuario, senha_usuario, id_fun_fk) VALUES ('Jão', 'Jão', '1234', 2);

INSERT INTO usuario VALUES (null, 'Maria José', 'Maria', '1234', NULL, 3);

CREATE TABLE cliente_pf
(id_cli INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cpf_cli VARCHAR(11) UNIQUE NOT NULL,
nome_cli VARCHAR(100) NOT NULL,
rg_cli VARCHAR(12),
orgao_emissor_cli VARCHAR(45),
sexo_cli CHAR(1),
data_nasc_cli DATE,
celular_cli VARCHAR(11) NOT NULL,
contato_trabalho_cli VARCHAR(11),
contato_casa_cli VARCHAR(11),
email_pessoal_cli VARCHAR(255),
email_prof_cli VARCHAR(255),
imagem_cli VARCHAR(255),
id_end_fk INT NOT NULL,
FOREIGN KEY (id_end_fk) REFERENCES endereco (id_end)
);
#Inserindo tudo sem referenciar colunas - todas colunas
INSERT INTO cliente_pf VALUES (NULL, '01031102202', 'Antônio', '123456', 'SESDECRO', 'M', '1994-04-10', '69923458679', 
NULL, NULL, NULL, NULL, NULL, 3);
#somente nas colunas NOT NULL - observe que id_cli, por ter AUTO_INCREMENT não requer que seja especificada
INSERT INTO cliente_pf (cpf_cli, nome_cli, celular_cli, id_end_fk) VALUES ('01031100201', 'João Carreiro', '69987349824', 2);
INSERT INTO cliente_pf VALUES (NULL, '09238491234', 'zé', '123459867', 'PC', 'M', '1994-10-02', '69993579843', '818723', '098123123', 'mail@mail', 'mailprof@mail', '0isdfsdf.', 3);
#SELECT * FROM cliente_pf;
#DROP TABLE cliente_pf;

CREATE TABLE cliente_pj (
id_pj INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cnpj_pj VARCHAR(14) NOT NULL,
razao_social_pj VARCHAR(255) NOT NULL,
nome_fantasia_pj VARCHAR(255),
inscricao_est_pj VARCHAR(255),
ativ_econ_pj VARCHAR (255),
situacao_pj ENUM('ativada', 'desativada') NOT NULL,
responsavel_pj VARCHAR(255),
contato1_pj VARCHAR(11) NOT NULL,
contato2_pj VARCHAR(11),
contato3_pj VARCHAR(11),
email1_pj VARCHAR(255) NOT NULL,
email2_pj VARCHAR(255),
imagem_ccli MEDIUMBLOB,
id_end_fk INT NOT NULL,
FOREIGN KEY (id_end_fk) REFERENCES endereco(id_end)
);

INSERT INTO cliente_pj VALUES (NULL, '12341234123412', 'razao ambiental', 'nomeFantasioso', 'inscEstadual', 'ramoTodo', 'ativada', 'Lucao', '12341234123', '12341234123', '12341234123', 
'mail@mail.com', 'mail@maiiill.com', NULL, 1);
INSERT INTO cliente_pj (cnpj_pj, razao_social_pj, situacao_pj, contato1_pj, email1_pj, id_end_fk) VALUES ('12341234', 'empresatop', 'ativada', '97982341829', 'mailobrigatorio@mail', 2);
INSERT INTO cliente_pj (cnpj_pj, razao_social_pj, situacao_pj, contato1_pj, email1_pj, id_end_fk) VALUES ('2345235612345', 'empresatopera', 'ativada', '9798234189', 'mailobrigatoio@mail', 3);

CREATE TABLE caixa (
id_caixa INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_caixa VARCHAR(11) NOT NULL,
data_abertura_caixa TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
numero_caixa INT NOT NULL,
saldo_inicial_caixa DOUBLE NOT NULL,
descricao_caixa VARCHAR(255),
data_fechamento_caixa DATETIME,
status_caixa ENUM('ON', 'OFF', 'REV') NOT NULL,
saldo_atual_caixa DOUBLE NOT NULL
);

#DROP TABLE caixa;
#SELECT * FROM caixa;
INSERT INTO caixa (tipo_caixa, numero_caixa, saldo_inicial_caixa, status_caixa, saldo_atual_caixa) VALUES ('operacional', 1, 2000, 'OFF', 5000);
#inserindo null em data_abertura_caixa, CURRENT_TIMESTAMP não funciona
INSERT INTO caixa (tipo_caixa, data_abertura_caixa, numero_caixa, saldo_inicial_caixa, data_fechamento_caixa, status_caixa, saldo_atual_caixa) 
VALUES ('operacional', NULL, 1, 2000, NULL, 'OFF', 5000);
INSERT INTO caixa VALUES (NULL, 'Diário', NOW(), 2, 2345, 'Caixa do fulaninho', '2024-10-12 01:01:01', 'OFF',  109234);

CREATE TABLE venda (
id_venda INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
data_venda TIMESTAMP NOT NULL,
valor_venda DOUBLE NOT NULL,
qtd_venda DOUBLE NOT NULL,
id_caixa_fk INT NOT NULL,
FOREIGN KEY (id_caixa_fk) REFERENCES caixa (id_caixa),
id_cli_fk INT NULL,
FOREIGN KEY (id_cli_fk) REFERENCES cliente_pf (id_cli),
id_pj_fk INT NULL,
FOREIGN KEY (id_pj_fk) REFERENCES cliente_pj (id_pj),
id_func_vist_fk INT NOT NULL,
FOREIGN KEY (id_func_vist_fk) REFERENCES funcionario (id_fun),
id_emp_fk INT NOT NULL,
FOREIGN KEY (id_emp_fk) REFERENCES empresa (id_emp),
-- Garante que apenas uma das colunas (id_cli_fk OU id_pj_fk) seja preenchida
CONSTRAINT chk_cliente CHECK (
        (id_cli_fk IS NOT NULL AND id_pj_fk IS NULL) OR
        (id_cli_fk IS NULL AND id_pj_fk IS NOT NULL)
    )
);
#DROP TABLE venda;
INSERT INTO venda VALUES (NULL, NOW(), 55, 1, 2, 1, NULL, 1, 1);
INSERT INTO venda VALUES (NULL, NOW(), 123, 5, 3, NULL, 1, 2, 2);
INSERT INTO venda VALUES (NULL, NOW(), 75, 3, 2, 2, NULL, 3, 3);
#SELECT * FROM venda;

CREATE TABLE servico (
id_serv INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_serv VARCHAR(300) NOT NULL,
valor_sugerido_serv DOUBLE NOT NULL,
tempo_estimado_serv TIME,
garantia_serv DATE,
tipo_serv VARCHAR(100)
);

INSERT INTO servico VALUES (null, 'zé ferreiro', 200, '00:30:00', '2025-08-10', 'Concerto');
INSERT INTO servico VALUES (null, 'zézao', 1200, '00:40:00', '2025-12-10', 'aprumo');
INSERT INTO servico VALUES (null, 'Tonhao', 600, '12:40:00', '2026-12-10', 'retifica');

CREATE TABLE venda_servico (
id_serv_fk INT NOT NULL,
FOREIGN KEY (id_serv_fk) REFERENCES servico (id_serv),
id_venda_fk INT NOT NULL,
FOREIGN KEY (id_venda_fk) REFERENCES venda (id_venda)
);

INSERT INTO venda_servico VALUES (1, 1);
INSERT INTO venda_servico VALUES (1, 2);
INSERT INTO venda_servico VALUES (3, 3);

CREATE TABLE fornecedor (
id_forn INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cnpj_forn VARCHAR(14) NOT NULL,
razao_social_forn VARCHAR(255) NOT NULL,
nome_fantasia_forn VARCHAR(255),
inscricao_estadual_forn VARCHAR(255),
ativ_economica_forn VARCHAR(255),
situacao_forn VARCHAR(10),
responsavel_forn VARCHAR (255),
contato1_forn VARCHAR (11) NOT NULL,
contato2_forn VARCHAR (11),
contato3_forn VARCHAR (11),
email1_forn VARCHAR(255) NOT NULL,
email2_forn VARCHAR(255)
);

#DROP TABLE fornecedor;
INSERT INTO fornecedor VALUES (NULL, '12341234', 'RAZAOSOCIAL', 'NOMEFAN', 'INSCESTADU', 'PEIXARIA', 'ATIVO', 'João do Bairro', '12341234123', NULL, NULL, 'mail@mail.com', null);
INSERT INTO fornecedor VALUES (NULL, '12341234', 'Razao Social', 'Nomequalquer1', 'Inscricão qualquer', 'softwares', 'Desativado', 'José', '1234123', NULL, NULL, 'Mail@aaaa.com', NULL);
INSERT INTO fornecedor VALUES (NULL, '12341234', 'Compre Barato', 'pIRATEX', '623562345', 'softwares LIVRES', 'Desativado', 'pEZAO', '126735723', NULL, NULL, 'Mail@aaa.com', NULL);

CREATE TABLE despesas (
id_despesa INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
data_despesa TIMESTAMP NOT NULL,
descricao_despesa VARCHAR(255) NOT NULL,
valor_despesa DOUBLE NOT NULL,
vencimento_despesa DATE,
id_forn_fk INT NOT NULL,
FOREIGN KEY (id_forn_fk) REFERENCES fornecedor (id_forn)
);

INSERT INTO despesas VALUES (NULL, NOW(), 'Despesa fútil', 100, '2025-10-12', 1);
INSERT INTO despesas VALUES (NULL, NOW(), 'Despesa bosta', 1000, '2025-10-12', 2);
INSERT INTO despesas VALUES (NULL, NOW(), 'Despesa eterna', 100111, '2035-12-12', 3);

CREATE TABLE pagamento (
id_pag INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
valor_pag DOUBLE,
status_pag VARCHAR(15),
id_despesas_fk INT NOT NULL,
FOREIGN KEY (id_despesas_fk) REFERENCES despesas (id_despesa),
id_caixa_fk INT NOT NULL,
FOREIGN KEY (id_caixa_fk) REFERENCES caixa (id_caixa)
);
#DROP TABLE pagamento;

CREATE TABLE plano_contas (
    id_plano_contas INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descricao_pla_con VARCHAR(255) NOT NULL,
    abreviatura_pla_con VARCHAR(5),
    natureza_conta VARCHAR(45) NOT NULL,
    observacao_pla_con VARCHAR(255)
);

INSERT INTO plano_contas (descricao_pla_con, abreviatura_pla_con, natureza_conta, observacao_pla_con) VALUES ('Receita de Vendas', 'RECV', 'Credora', 'Conta para registro de vendas');
INSERT INTO plano_contas (descricao_pla_con, abreviatura_pla_con, natureza_conta) VALUES ('Despesas Administrativas', 'DESP', 'Devedora');
INSERT INTO plano_contas (descricao_pla_con, natureza_conta, observacao_pla_con) VALUES ('Caixa e Equivalentes', 'Devedora', 'Contas de disponibilidades');


CREATE TABLE recebimento (
    id_recebimento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_hora_rec DATETIME NOT NULL,
    forma_rec_venda VARCHAR(45) NOT NULL,
    obs_rec VARCHAR(255),
    encargo_banc_rec DECIMAL(10,2),
    id_caixa_fk INT NOT NULL,
    id_plano_contas_fk INT NOT NULL,
    FOREIGN KEY (id_caixa_fk) REFERENCES caixa(id_caixa),
    FOREIGN KEY (id_plano_contas_fk) REFERENCES plano_contas(id_plano_contas)
);


INSERT INTO recebimento (data_hora_rec, forma_rec_venda, obs_rec, encargo_banc_rec, id_caixa_fk, id_plano_contas_fk) VALUES (NOW(), 'Cartão de Crédito', 'Venda #1234', 2.50, 1, 1);
INSERT INTO recebimento (data_hora_rec, forma_rec_venda, id_caixa_fk, id_plano_contas_fk) VALUES ('2024-05-15 14:30:00', 'PIX', 2, 1);
INSERT INTO recebimento (data_hora_rec, forma_rec_venda, obs_rec, encargo_banc_rec, id_caixa_fk, id_plano_contas_fk) VALUES ('2024-05-16 09:15:00', 'Boleto', 'Cliente PJ', 5.00, 3, 1);

CREATE TABLE encargo_bancario (
    id_encargo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo_encargo VARCHAR(45) NOT NULL,
    dispositivo_encargo VARCHAR(45),
    operacao_encargo ENUM('Débito', 'Crédito') NOT NULL,
    aliquota_encargo DOUBLE NOT NULL,
    id_recebimento_fk INT NOT NULL,
    FOREIGN KEY (id_recebimento_fk) REFERENCES recebimento(id_recebimento)
);

INSERT INTO encargo_bancario (tipo_encargo, dispositivo_encargo, operacao_encargo, aliquota_encargo, id_recebimento_fk)
VALUES ('Taxa Cartão', 'Máquina POS', 'Débito', 2.99, 1);

INSERT INTO encargo_bancario (tipo_encargo, operacao_encargo, aliquota_encargo, id_recebimento_fk)
VALUES ('IOF', 'Débito', 0.38, 2);

INSERT INTO encargo_bancario (tipo_encargo, dispositivo_encargo, operacao_encargo, aliquota_encargo, id_recebimento_fk)
VALUES ('Tarifa Boleto', 'Banco 123', 'Débito', 5.00, 3);

#SELECT * FROM encargo_bancario;

#DROP DATABASE gestao_financeira;
