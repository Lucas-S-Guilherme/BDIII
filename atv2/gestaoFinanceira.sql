CREATE DATABASE gestao_financeira;

USE gestao_financeira;

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

SELECT * FROM endereco;

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
fk_id_endereco INT NOT NULL,
FOREIGN KEY (fk_id_endereco) REFERENCES endereco(id_end)
);

#exemplo especificando todas colunas, até mesmo as que aceitam null
INSERT INTO empresa (id_emp, cnpj_emp, razao_social_emp, nome_fantasia_emp, inscricao_est_emp, ativ_econ_emp, 
situacao_emp, responsavel_emp, contato1_emp, contato2_emp, contato3_emp, email1_emp, email2_emp, imagem_emp, fk_id_endereco) 
VALUES(NULL, '09823458192345', 'brasileirinho', NULL, NULL, NULL, 'ativada', NULL, '69970707070', NULL, NULL,
 'brasileirinho@mail', NULL, NULL, '1');
 
# também é possível não especificar o id, mesmo sendo NOT NULL, pois ele possuí auto_increment
 INSERT INTO empresa (cnpj_emp, razao_social_emp, situacao_emp, contato1_emp, email1_emp, fk_id_endereco)
 VALUES ('0982459723458', 'Braziuela', 'desativada', '69969696969', 'brazuela@mail.com', 2);

INSERT INTO empresa 
VALUES (NULL, '1234', 'empresário guerreiro', NULL, NULL, NULL, 'desativada', NULL, '69993579590', NULL, NULL, 'mail@mail.com', NULL, NULL, 3);
 
SELECT * FROM empresa;
 


CREATE TABLE funcionario (
id_fun INT AUTO_INCREMENT NOT NULL,
cpf_fun VARCHAR(11) UNIQUE NOT NULL,
nome_fun VARCHAR(255) NOT NULL,
empresa_fun
);