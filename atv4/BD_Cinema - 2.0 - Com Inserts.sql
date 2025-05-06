#Banco de Dados do Cinema 2.0

create database bd_cinema_2;
use bd_cinema_2;
#DROP DATABASE bd_cinema_2;

create table Cliente(
id_cli int primary key auto_increment,
nome_cli varchar(300),
sexo_cli varchar(100),
data_nasc_cli date,
cpf_cli varchar(100),
rg_cli varchar(100),
email_cli varchar(300),
endereco_cli varchar(300),
telefone_cli varchar(300),
cartao_sus_cli varchar(300),
tipagem_sanguinea_cli varchar(100)
);

create table Fornecedor(
id_forn int primary key auto_increment,
nome_forn varchar(300),
razao_Social_forn varchar(300),
cnpj_forn varchar(300),
endereco_forn varchar(300),
email_forn varchar(300),
telefone_forn varchar(300)
);

create table Despesa(
id_desp int primary key auto_increment,
descricao_desp varchar(300),
valor_desp float,
data_desp date,
parcelas_desp int,
vencimento_desp date
);

create table Funcionario(
id_fun int primary key auto_increment,
nome_fun varchar(300),
cpf_fun varchar(100),
rg_fun varchar (100),
telefone_fun varchar(100),
email_fun varchar(300),
sexo_fun varchar(100),
funcao_fun varchar(300),
salario_fun float,
horario_entrada_fun time,
horario_saida_fun time,
data_nasc_fun date,
carteira_trabalho_fun varchar(300)
);

create table Caixa(
id_cai int primary key auto_increment,
numero_cai int,
data_cai date,
saldo_inicial_cai float,
saldo_final_cai float,
total_recebimentos_cai float,
total_retiradas_cai float,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun)
);

create table Pagamento(
id_pag int primary key auto_increment,
valor_pag float,
data_pag date,
parcela_pag int,
status_pag varchar(300),
forma_pag varchar(300),
id_cai_fk int,
foreign key(id_cai_fk) references Caixa(id_cai),
id_desp_fk int,
foreign key(id_desp_fk) references Despesa(id_desp)
);

create table Filme(
id_film int primary key auto_increment,
titulo_film varchar(300),
sinopse_film varchar(500),
atores_film varchar(300),
diretor_film varchar(300),
genero_film varchar(300),
classificacao_indicativa_film varchar(300),
duracao_film time
);

create table Sala(
id_sala int primary key auto_increment,
nome_sala varchar(300),
numero_sala int,
capacidade_sala varchar(300),
local_sala varchar(300)
);

create table Poltrona(
id_polt int primary key auto_increment,
numero_polt int,
fileira_polt int,
coordenada_polt varchar(100),
status_polt varchar(100),
id_sala_fk int,
foreign key(id_sala_fk) references Sala(id_sala)
);

create table Sessao(
id_ses int primary key auto_increment,
hora_inicio_ses time,
data_ses date,
hora_fim_ses time,
id_sala_fk int,
foreign key(id_sala_fk) references Sala(id_sala),
id_film_fk int,
foreign key(id_film_fk) references Filme(id_film)
);

create table Ingresso(
id_ing int primary key auto_increment,
valor_ing float,
data_ing date,
cod_barras_ing varchar(300),
id_ses_fk int,
foreign key (id_ses_fk) references Sessao (id_ses)
);

create table Venda(
id_vend int primary key auto_increment,
valor_vend float,
hora_vend time,
data_vend date,
id_polt_fk int,
foreign key(id_polt_fk) references Poltrona(id_polt),
id_ing_fk int,
foreign key(id_ing_fk) references Ingresso(id_ing),
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun),
id_cli_fk int,
foreign key(id_cli_fk) references Cliente(id_cli)
);

create table Produto(
id_prod int primary key auto_increment,
nome_prod varchar(300),
marca_prod varchar(300),
valor_venda_prod float,
valor_compra_prod float,
estoque_prod int,
tipo_prod varchar(300),
descricao_prod varchar(300)
);

create table Venda_Produto(
id_vend_prod int primary key auto_increment,
qtd_itens_vend_prod int,
valor_vend_prod float,
id_prod_fk int,
foreign key(id_prod_fk) references Produto(id_prod),
id_vend_fk int,
foreign key(id_vend_fk) references Venda(id_vend)
);

create table Compra(
id_comp int primary key auto_increment,
valor_comp float,
hora_comp time,
data_comp date,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun),
id_forn_fk int,
foreign key(id_forn_fk) references Fornecedor(id_forn)
);

create table Compra_Produto(
id_vend_comp int primary key auto_increment,
qtd_itens_comp_prod int,
valor_comp_prod float,
id_prod_fk int,
foreign key(id_prod_fk) references Produto(id_prod),
id_comp_fk int,
foreign key(id_comp_fk) references Compra(id_comp)
);

insert into Cliente values(null, 'Bernardo Sebastião Bruno Mendes', 'Masculino', '1968-06-10','496.702.865-90', '26.671.677-5', 'bernardo_sebastiao_mendes@hotmail.com', 'Rua Barão José Miguel, , Nº 541, Bairro', '(82) 2815-4982', '979612111910003', 'AB+');
insert into Cliente values(null, 'Lúcia Vanessa Moraes', 'Feminino', '1969-04-30', '125.677.389-16', '11.376.596-4', 'lucia_moraes@outlook.com', 'Rua Divino Alcides Santos, nº 610, Bairro Vila Camarim', '(21) 98783-4871', '167091242130001', 'O-');
insert into Cliente values(null, 'Pietro Ian Peixoto', 'Masculino', '1969-12-15', '918.985.672-47', '27.782.916-1', 'pietro.ian.peixoto@gmail.com', 'Rua Pedras Brancas, nº 470, Bairro Nova Esperança', '(47) 98695-3713', '951969232230007', 'B+');
insert into Cliente values(null, 'Eloá Tânia Kamilly Campos', 'Feminino', '1970-06-21', '294.927.666-04', '22.584.593-3', 'eloa-campos74@gmail.com', 'Rua Casa do Ator 783, nº 122, Bairro Vila Olímpia', '(11) 99345-6882', '976843162080002', 'O+');
insert into Cliente values(null, 'Luiz Thales Benjamin Moraes', 'Masculino', '1970-10-23', '844.453.646-65', '25.271.350-3', 'luisthales@gmail.com', null, '(95) 98522-1979', '199969865880005', 'AB+');
insert into Cliente values(null, 'Letícia Lavínia Milena Novaes', 'Feminino', '1971-05-24', '133.117.564-01', '33.585.038-8', 'leticia_novaes@outlook.com', '2ª Travessa Monte Castelo , nº 746, Bairro Vergel do Lago', '(82) 98143-4651', '123616178650000', 'A-');
insert into Cliente values(null, 'Letícia Ana Cardoso', 'Feminino', '1971-08-04', '668.582.130-23', '48.866.840-2', 'leticiaanacardoso@novaes.me', 'Rua Jenner Augusto , nº 529, Bairro Jardins', '(79) 99521-9139', '166375673830005', 'O-');
insert into Cliente values(null, 'Rafaela Fabiana Barbosa', 'Feminino', '1974-09-14', '709.679.918-46', '40.476.313-3', 'rafaela.fabiana.barbosa@gmail.com', 'Rua Ana Landmann , nº 807, Bairro Costa e Silva', '(47) 98438-9246', '287756570020007', 'B+');
insert into Cliente values(null, 'Oliver Juan Nogueira', 'Masculino', '1975-12-23', '513.097.603-73', '35.738.710-7', null, null, null, '863232411560009', 'A+');
insert into Cliente values(null, 'Ruan Bento Kaique Martins', 'Masculino', '1977-01-30', '685.387.530-37', '42.861.955-1', 'ruan@gmail.com', 'Rua México , nº 340, Bairro Baixada da Habitasa', '(95) 98192-2787', '284909243870004', 'B+');
insert into Cliente values(null, 'Ricardo Luis Bastida Tavares', 'Masculino', '1977-07-23', '288.742.147-66', '10.508.678-2', 'ricardo@outlook.com', 'Rua José Suides Rodrigues , nº 607, Bairro Cariacica Sede', '(98) 98126-3417', '137492655440007', 'A+');
insert into Cliente values(null, 'Regiane Thomaz Bastida', 'Feminino', '1978-01-20', '812.107.101-10', '47.701.277-2', 'regiane@outlook.com', 'Rua Negreiros Ferreira , nº 920, Bairro São Francisco', '(22) 96754-6878', '216007669020007', 'B-');
insert into Cliente values(null, 'Dyego Knupp Araujo', 'Masculino', null, '855.544.082-30', '12.813.160-3', 'dyego@outlook.com', 'Praça dos Gerânios , nº 892, Bairro Sobrinho', '(65) 98644-0470', '855217764860006', 'AB+');
insert into Cliente values(null, 'Maurício Antonio Lyrio', 'Masculino', '1982-01-29', '877.764.277-56', '45.303.193-6', 'mauricio@outlook.com', 'Quadra Quadra 24 , nº 357, Bairro 357', '(28) 98992-8252', '230097396700005','O-');
insert into Cliente values(null, 'Rosinalda Esteves Filho', 'Feminino', '1982-08-20', '876.381.597-48', '42.709.465-3', 'rosinalda@outlook.com', 'Passarela Beira Rio , nº 156, Bairro Perpétuo Socorro', '(61) 98676-4546', '189692523100005', 'O+');
insert into Cliente values(null, 'Carolina Jéssica Campos', 'Feminino', '1982-11-09', '024.142.101-25', '31.641.349-5', 'carolina@hotmail.com', 'Rua Manoel Amaro de Matos , nº , Bairro ', '(18) 99946-3761', null, 'O+');
insert into Cliente values(null, 'Nicolas Thomas Gael da Luz', 'Masculino', '1983-12-06', '945.331.054-91', '32.760.673-3', 'nicolas@hotmail.com', 'Rua Dom Augusto , nº 267, Bairro Parque do Lago', '(21) 97498-1047', '743016604490007', 'A-');
insert into Cliente values(null, 'Nei Malaquias Torres', 'Masculino', '1986-03-15', '934.793.995-17', '48.354.127-8', 'nei@hotmail.com', 'Travessa Rio Solimoes , nº 473, Bairro Marabaixo', '(62) 99885-3088', '759286613040005', 'B+');
insert into Cliente values(null, 'Nicholye Firmino Sarmento', 'Feminino', '1987-05-31', '414.752.353-64', '12.683.844-6', 'nicholye@hotmail.com', 'Rua João Leonel Caetano , nº 231, Bairro Jardim Anchieta', '(69) 99563-9277', '820448428370003', 'AB+');
insert into Cliente values(null, 'Elizabetti Moraes Norte', null, '1987-06-04', '146.544.643-52', '47.897.694-X', 'elizabetti@hotmail.com', 'Rua Treze , nº 347, Bairro Bela Vista', '(67) 97576-5125', '224180568550004', 'A-');
insert into Cliente values(null, 'Maria Carmoriz Schuenck', 'Feminino', '1988-04-25', '666.163.406-51', '44.687.787-6', 'mariacar@hotmail.com', 'Rua Ataulfo Alves , nº 368, Bairro Santa Cruz', '(27) 97305-4514', '862446084300003', 'B+');
insert into Cliente values(null, 'Gleice Darmont Araujo', null, '1988-12-13', '336.519.443-60', '26.308.043-2', 'gleice@gmail.com', 'Rua Rio Iguaçu , nº 636, Bairro Cidade de Deus', '(24) 97186-3349', '150216486800004', 'O+');
insert into Cliente values(null, 'Geanny Carmoriz Damasceno', 'Feminino', '1989-07-05', '424.526.290-73', '37.441.958-9', null, 'Rua 02 C , nº 550, Bairro Cidade Operária', '(83) 97398-3721', '883663231370009', 'O+');
insert into Cliente values(null, 'Emanoel Boelho Portugal', 'Masculino', '1996-07-07', '552.429.851-86', '29.314.122-8', 'emanoel@outlook.com', 'Passagem São Francisco Xavier , nº 748, Bairro Coqueiro', '(85) 98135-5389', '237213183950006', 'O-');
insert into Cliente values(null, 'Laudemar Borralho Portugal', 'Masculino', '1996-12-29', '261.226.518-00', '16.783.068-5', 'laudemar@hotmail.com', null, '(63) 99815-9930', '719963354540009', 'AB+');
insert into Cliente values(null, 'Cristiano Bochimpani Rocha', 'Masculino', '1997-03-24', '116.434.757-89', '10.756.692-8', 'cristiano@outlook.com', 'Rua do Pavão , nº 365, Bairro Mecejana', null, '836944930530001', 'B+');
insert into Cliente values(null, 'Ariel Bochimpani Muchão', 'Masculino', '1971-07-04', '851.218.774-39', '17.455.762-0', 'arielbochi@outlook.com', 'Rua dos Cravos , nº 300, Bairro Jardim das Flores', '(18) 97178-4435', '829545680800009', 'B-');
insert into Cliente values(null, 'Margareth Valente Donato', 'Feminino', '1972-01-03', '462.362.618-06', '26.485.379-9', 'margareth@outlook.com', 'Rua Barão da Passagem , nº 676, Bairro Catolé', '(99) 98944-5260', '230857381290003', 'AB+');
insert into Cliente values(null, 'Suellem Uchôa Abreu', 'Feminino', '1972-07-14', '384.911.523-26', '45.863.758-0', 'suellem@gmail.com', 'Rua Mercúrio , nº 667, Bairro Parque Residencial Quinta da Lagoa', '(63) 99295-7476', '223050191450008', 'O-');
insert into Cliente values(null, 'Rita de Souza Muniz', null, null, '324.931.231-23', '48.539.665-8', 'rita@hotmail.com', 'Travessa Gaspar Dutra , nº 867, Bairro Santo Antônio', '(83) 99621-8774', '215726754900002', 'O+');
insert into Cliente values(null, 'Elita Darmont Matta', 'Feminino', '1973-09-10', '372.115.262-03', '24.222.455-6', 'elita@outlook.com', 'Rua dos Donizetes , nº 834, Bairro Itaperi', '(12) 97512-0898', '262538255530000', 'A+');
insert into Cliente values(null, 'Marcus Matos Carvalheiro', 'Masculino', '1974-02-12', '474.601.654-25', '31.610.617-3', 'marcus@hotmail.com', 'Avenida Doutor Humberto de Queiroz Matosso , nº 656, Bairro Sol e Mar', '(24) 98822-2297', '818327480420006', 'B+');
insert into Cliente values(null, 'Rachel da Paixão Lopez', 'Feminino', '1975-06-19', '813.776.496-87', '32.819.194-2', 'rachel@hotmail.com', 'Rua Benoni Falcão de Gouveia , nº 621, Bairro Tribobó', '(95) 99725-0845', '150393086780002', 'AB-');
insert into Cliente values(null, 'Mônica Pontes Alves', 'Feminino', '1978-01-15', '175.314.313-60', '44.628.129-3', 'monicapon@hotmail.com', 'Rua 24 , nº 376, Bairro Vila Velha', '(82) 98684-1851', '819993733130018', 'AB+');
insert into Cliente values(null, 'Osvaldo Terra Teodoro', 'Masculino', '1979-10-20', '827.555.643-00', '38.879.454-9', 'osvaldo@gmail.com', null, '(63) 97110-2165', null, 'O-');
insert into Cliente values(null, 'Ronaldo Paula Viana', 'Masculino', '1980-10-14', '649.384.933-06', '44.741.724-1', 'ronaldo@gmail.com', 'Travessa Urucuri , nº 334, Bairro Zumbi dos Palmares', '(83) 97214-2332', null, 'AB+');
insert into Cliente values(null, 'Luciane Auzier Salomão', 'Feminino', '1980-10-16', '275.236.083-53', '17.354.133-1', 'luciane@gmail.com', 'Rua Doutor Deoplisto Feitosa , nº 143, Bairro Engenheiro Luciano Cavalcante', '(22) 98562-5531', '267132918030018', 'B-');
insert into Cliente values(null, 'Sayonara Mendonça Bochimpani', null, '1985-07-21', '468.728.421-30', '12.402.022-7', 'sayonara@hotmail.com', 'Travessa Euclides Santos , nº 773, Bairro Chã da Jaqueira', '(28) 99837-2213', '889439421880004', 'O-');
insert into Cliente values(null, 'Dora Coelho Camacho', 'Feminino', '1985-09-04', '773.015.565-60', '42.413.605-3', 'doracoelho@outlook.com', 'Praça Professor Apolônio Sales de Miranda , nº 963, Bairro Tambiá', '(97) 98836-4053', '849065433900006', null);
insert into Cliente values(null, 'Wallace Sousa Navega', 'Masculino', '1985-11-06', '136.720.151-99', '25.138.536-X', 'wallace@hotmail.com', 'Rua São Judas Tadeu , nº 884, Bairro Jardim Gonçalves', '(92) 99177-8723', '188502859620007', null);
insert into Cliente values(null, 'Abraão Candido Texeira', 'Masculino', '1986-06-12', '138.491.293-22', '40.427.337-3', null, 'Rua Carlos Rodrigues de Farias , nº 585, Bairro Spar (Inoã)', '(32) 97212-2252', '239290470510001', null);
insert into Cliente values(null, 'Rosane Castro Firmino', 'Masculino', '1987-08-25', '473.768.692-12', '47.526.637-7', 'rosane@hotmail.com', null, '(37) 99547-7151', '704112995700018', 'A+');
insert into Cliente values(null, 'Elias Knupp Albuquerque', null, '1987-10-05', '432.638.560-06', '17.831.187-X', 'elias@hotmail.com', null, '(67) 99106-3355', '883613429670002', 'B+');
insert into Cliente values(null, 'Maria Eliza Carvalho Gomes', 'Feminino', '1989-04-11', '354.647.197-09', '32.672.156-3', 'marieli@gmail.com', null, '(96) 97211-6244', '191514313270006', 'O-');
insert into Cliente values(null, 'Reginaldo Moreira Antunes', 'Masculino', '1992-01-07', '664.657.648-30', '28.151.102-0', 'reginaldomorei@hotmail.com', null, '(67) 97349-5694', '106382302730006', 'B+');
insert into Cliente values(null, 'Adilson Santomauro Barboza', 'Masculino', '1992-04-17', '288.145.225-61', '23.727.611-2', 'adilsonsan@hotmail.com', null, '(83) 97981-7760', '960564458300004', 'B-');
insert into Cliente values(null, 'Rita Livramento Santana', 'Feminino', '1994-09-29', '843.767.216-38', '16.484.888-5', 'ritalivramento@hotmail.com', null, '(68) 98176-5706', '247976942570002', 'O+');
insert into Cliente values(null, 'Sueli Bonimo Sena', 'Feminino', '1996-03-02', '502.453.734-38', '11.147.157-6', 'suelibonimo@outlook.com', null, '(83) 99275-1312', '916039065750006', 'B-');
insert into Cliente values(null, 'Lucas Felipe Biango Pereira', 'Masculino', '1997-04-23', '622.166.557-40', '15.585.402-1', 'lucasfelipe@outlook.com', null, '(63) 98687-0886', '112956483830000', 'A-');
insert into Cliente values(null, 'Vivian Barcelos Vogas', 'Feminino', '1997-09-09', '334.582.463-98', '13.701.243-3', 'vivian@gmail.com', null, '(83) 97481-1156', '179799051240001', 'AB-');
insert into Cliente values(null, 'Lucas Felipe Serra Tavares', 'Masculino', '1996-04-24', '468.822.252-14', '37.324.810-6', 'lucasfeli@hotmail.com', null,null,  '212316297020004', 'AB+');
insert into Cliente values(null, 'Stefany Vilela Garbelini', 'Feminino', '2001-05-12', '529.042.073-84', '28.161.221-3', 'stefanyvi@hotmail.com', null, '(49) 98128-4296', '938222405440000', 'O+');
insert into Cliente values(null, 'Elvis Estellet Diniz', 'Masculino', '2005-06-12', null, '22.860.543-X', 'elvis@hotmail.com', null, '(87) 97913-6673', '261924583840000', 'B+');
insert into Cliente values(null, 'Laysa Vidal Cristo', 'Feminino', '1987-11-15', '736.126.617-79', '35.774.426-3', 'laysa@gmail.com', null, '(44) 97216-6628', '252097573750000', 'O-');
insert into Cliente values(null, 'Wesley Tolentino Moraes', 'Feminino', '1995-10-13', '370.851.224-39', '29.356.710-4', 'wesley@gmail.com', null, '(91) 98818-5608', null, 'B+');
insert into Cliente values(null, 'Norival Mota Milanez', 'Masculino', '1997-11-16', '035.140.933-50', '21.815.501-3', 'norimot@gmail.com', null, '(61) 99639-1888', '185484368850000', null);
insert into Cliente values(null, 'Erika Leonicio Lima', 'Feminino', '1966-06-21', '881.533.326-60', '12.632.274-0', 'erikaleo@outlook.com', null, '(28) 97409-4355', '250100499100008', null);
insert into Cliente values(null, 'Francisca Cormack da Mota', 'Feminino', '1978-08-12', '555.284.221-91', '48.614.035-0', 'francormack@outlook.com', null, '(89) 96956-8348', '170628701880006', 'A-');
insert into Cliente values(null, 'Raquel Anastacio Vidal', 'Feminino', '1987-10-30', '257.868.604-18', '23.496.807-2', 'raqueanas@gmail.com', null, '(98) 97346-5127', null, null);
INSERT INTO Cliente (nome_cli, sexo_cli, data_nasc_cli, cpf_cli, rg_cli, email_cli, endereco_cli, telefone_cli, cartao_sus_cli, tipagem_sanguinea_cli) VALUES
('John Smith', 'Male', '1990-05-10', '12345678901', '12345678', 'johnsmith@example.com', '123 Main St', '123-456-7890', '123456789012345', 'A+'),
('Emma Johnson', 'Female', '1985-09-15', '98765432109', '87654321', 'emmajohnson@example.com', '456 Elm St', '987-654-3210', '098765432109876', 'B-'),
('Michael Davis', 'Male', '1992-07-20', '45678901234', '56789012', 'michaeldavis@example.com', '789 Oak St', '456-789-0123', '123456789012345', 'O+'),
('Sophia Miller', 'Female', '1998-03-25', '90123456789', '90123456', 'sophiamiller@example.com', '321 Maple St', '789-012-3456', '098765432109876', 'AB+'),
('William Wilson', 'Male', '1995-11-05', '34567890123', '34567890', 'williamwilson@example.com', '654 Pine St', '012-345-6789', '543210987654321', 'A-');
insert into Cliente (nome_cli, sexo_cli, data_nasc_cli, cpf_cli, rg_cli, email_cli, endereco_cli, telefone_cli, cartao_sus_cli, tipagem_sanguinea_cli) values 
('Ana Silva', 'Feminino', '1990-01-20', '123.456.789-00', '1234567', 'ana.silva@email.com','Rua A, 123', '(69) 99999-9999', '1234567890', 'A+'), 
('João da Silva', 'Masculino', '1985-03-15', '987.654.321-00', '7654321', 'joao.silva@email.com','Rua B, 456', '(69) 88888-8888', '0987654321', 'B-'),
('Maria Oliveira', 'Feminino', '1970-08-10', '111.222.333-44', '9876543', 'maria.oliveira@email.com','Rua C, 789', '(69) 77777-7777', '9876543210', 'O'),
('José Santos', 'Masculino', '1995-12-25', '222.333.444-55', '2345678', 'jose.santos@email.com','Rua D, 123', '(69) 66666-6666', '7654321098', 'AB'),
('Carla Souza', 'Feminino', '1992-04-05', '444.555.666-77', '3456789', 'carla.souza@email.com','Rua E, 456', '(11) 55555-5555', '4567890123', 'O-');
						   
insert into Fornecedor values(null, 'Pipocas do Sul', 'Pipocas do Sul LTDA', '67.371.964/0001-17', 'Rua da Quadra 25, nº784', 'pipocas@alimentos.com.br', '(45) 55865-2145');
insert into Fornecedor values(null, 'Distribuição Alimentos', 'Distribuição Alimentos LTDA', '37.017.143/0001-16', 'Rua Neto Filho', 'alimentacaodistribuicao@alimentos.com.br', '(63) 22541-2548');
insert into Fornecedor values(null, 'Vale Verde', 'Vale Verde LTDA', '50.578.368/0001-00', 'Rua das Laranjeiras', 'valeverde@alimentos.com.br', '(12) 52545-8962');
insert into Fornecedor values(null, 'Alimentos e Cia', 'Alimentos e Cia LTDA', '50.578.368/0001-00', 'Rua dos Bairros, nº156', 'alimetacao@alimento.com.br', '41169587423');
insert into Fornecedor values(null, 'Energisa', 'Energisa LTDA', '27.637.394/0001-40', 'Rua Almeida Quinn, nº589', 'energisa@energia.com.br', '(15)366985-4754');
insert into Fornecedor values(null, 'Campilar Alimentos', 'Campilar Alimentos SA', '27.637.394/0001-40', null, 'campilaralimentos@empresa.com.br', null);
insert into Fornecedor values(null, 'Bernardo', 'Bernardo Alimentos LTDA', '27.637.394/0001-40', null, 'bernardoalimentos@empresa.com.br', '(69)99847-8741');
insert into Fornecedor values(null, 'Coca-Cola', 'Coca-Cola LTDA', '27.637.394/0001-40', null, 'cocacola@coke.com.br', '(15) 55468-7512');
insert into Fornecedor values(null, 'COMPANHIA DE ÁGUAS E ESGOTOS DO ESTADO', 'CAERD SA', '27.637.394/0001-40', null, 'caerd_ro@esgoto.com.br', '(15) 55847-7856');
INSERT INTO Fornecedor (nome_forn, razao_Social_forn, cnpj_forn, endereco_forn, email_forn, telefone_forn) VALUES
('ABC Distributors', 'ABC Distributors Ltd.', '12345678901234', '456 Market St', 'abcdistributors@example.com', '123-456-7890'),
('XYZ Suppliers', 'XYZ Suppliers Inc.', '98765432109876', '789 Grove St', 'xyzsuppliers@example.com', '987-654-3210'),
('DEF Manufacturers', 'DEF Manufacturers Co.', '45678901234567', '321 Main St', 'defmanufacturers@example.com', '456-789-0123'),
('GHI Wholesalers', 'GHI Wholesalers Ltd.', '90123456789012', '654 Elm St', 'ghiwholesalers@example.com', '789-012-3456'),
('JKL Exporters', 'JKL Exporters Inc.', '34567890123456', '987 Oak St', 'jklexporters@example.com', '012-345-6789');

insert into Despesa values(null, 'Conta de Água', 1564.58, '2021-03-25', 2, '2021-03-30');
insert into Despesa values(null, 'Compra de pipoca', 723.31, '2021-04-21', 3, '2021-04-30');
insert into Despesa values(null, 'Conta de Luz', 1543.36, '2021-01-31', 1, '2021-02-10');
insert into Despesa values(null, 'Aluguel de Prédio', 5862.63, '2021-08-19', 1, '2021-08-30');
insert into Despesa values(null, 'Encanamento', 4586.12, '2021-10-21', 2, '2021-10-30');
INSERT INTO Despesa (descricao_desp, valor_desp, data_desp, parcelas_desp, vencimento_desp) VALUES
('Rent expense', 1500.00, '2023-05-01', 1, '2023-05-01'),
('Office supplies', 200.00, '2023-05-05', 1, '2023-05-05'),
('Utility bills', 500.00, '2023-05-10', 1, '2023-05-10'),
('Advertising expenses', 1000.00, '2023-05-15', 1, '2023-05-15'),
('Maintenance fees', 300.00, '2023-05-20', 1, '2023-05-20');

insert into Funcionario values(null, 'Rafaela Isis da Mota', '996.401.378-71', '28.570.443-6', '(24) 3536-4239', 'rafaisis@gmail.com', 'Feminino', 'Atendente', 1500, '07:00:00', '12:00:00', '1974-05-20', '640.18114.67-6');
insert into Funcionario values(null, 'Raquel Emily Duarte', '345.088.764-55', '44.064.825-7', '(79) 2071-1091', 'raqueemily@gmail.com', 'Feminino', 'Atendente', 1520,'07:00:00', '12:00:00', '1975-03-04', '427.18487.12-2');
insert into Funcionario values(null, 'Nathan Oliver Vieira', '031.140.805-29', '42.339.398-4', '(67) 2831-2415', 'nathanoli@gmail.com', 'Masculino', 'Gerente', 2400,'07:00:00', '12:00:00', '1975-04-05', '105.40497.30-2');
insert into Funcionario values(null, 'Nathan Raul Manuel Barros', '922.608.344-42', '35.107.431-4', '(83) 3569-0884', 'nathanraul@hotmail.com', 'Masculino', 'Segurança', 1630, '07:00:00', '12:00:00', '1976-02-16', '995.94006.03-0');
insert into Funcionario values(null, 'Cauã Sebastião Tomás Freitas', '737.437.295-71', '25.332.252-2', '(47) 2948-7438', 'cauasebast@gmail.com', 'Masculino', 'Segurança', 2100,'07:00:00', '12:00:00', '1976-04-04', '954.72645.36-2');
insert into Funcionario values(null, 'Aline Aparecida Rita Bernardes', '054.586.363-50', '11.048.957-3', '(94) 2753-3123', 'alineaparecida@hotmail.com', 'Feminino', 'Segurança', 1800, '', '', '1976-12-12', '373.63278.89-7');
insert into Funcionario values(null, 'Tomás Martin Kauê Caldeira', '675.685.821-16', '21.233.303-3', '(97) 3354-7837', 'tomasmartin@gmail.com', 'Masculino', 'Segurança', 1400,'07:00:00', '12:00:00', '1976-12-18', '121.25238.96-0');
insert into Funcionario values(null, 'Laura Carolina Eduarda Moraes', '852.635.792-17', '43.064.791-8', '(28) 3702-6882', 'lauracarolina@hotmail.com', 'Feminino', 'Segurança', 1630, '12:00:00', '18:00:00', '1978-11-03', '253.61303.59-1');
insert into Funcionario values(null, 'Ryan Enrico Pinto', '048.115.922-39', '16.779.522-3', '(88) 2377-4381', 'ryanenrico@gmail.com', 'Masculino', 'Supervisor', 1500, '12:00:00', '18:00:00', '1982-01-02', '686.38620.16-4');
insert into Funcionario values(null, 'Bento Joaquim Vieira', '032.355.388-52', '33.786.376-3', '(88) 3541-1133', 'bentojoaquim@gmail.com', 'Masculino', 'Supervisor', 1520, '12:00:00', '18:00:00', '1984-10-18', '183.62985.57-4');
insert into Funcionario values(null, 'Gabriel Kevin Fogaça', '355.631.513-01', '47.023.268-7', '(96) 3141-8322', 'gabrielkevin@outlook.com', 'Masculino', 'Zelador', 1800, '12:00:00', '18:00:00', '1986-04-18', '502.51711.83-2');
insert into Funcionario values(null, 'Nathan Danilo Nogueira', '848.958.429-08', '13.662.687-7', '(67) 3304-8517', 'nathandanilo@outlook.com', 'Masculino', 'Zelador', 1400, '12:00:00', '18:00:00', '1988-01-29', '588.85236.11-4');
insert into Funcionario values(null, 'Diego Luís das Neves', '128.112.813-98', '35.752.496-2', '(54) 2474-7245', 'diegoluis@outlook.com', 'Masculino', 'Zelador', 1800, '12:00:00', '18:00:00', '1971-04-21', '760.10075.17-4');
insert into Funcionario values(null, 'Carlos Eduardo Miguel da Silva', '837.844.115-68', '22.210.473-9', '(73) 2963-9262', 'carlosmiguel@gmail.com', 'Masculino', 'Zelador', 3200, '12:00:00', '18:00:00', '1971-11-16', '381.85302.78-8');
insert into Funcionario values(null, 'Nathan Filipe Martins', '357.745.841-00', '46.046.742-6', '(96) 3865-5843', 'nathanfelipe@gmail.com', 'Masculino', 'Auxiliar', 1405, '12:00:00', '18:00:00', '1989-09-13', '862.57097.34-9');
insert into Funcionario values(null, 'Bruna Helena Sarah Caldeira', '832.605.747-94', '36.339.812-0', '(92) 2533-7162', 'brunahelena@gmail.com', 'Feminino', 'Auxiliar', 2400, '18:00:00', '23:00:00', '1990-08-13', '943.65067.64-3');
insert into Funcionario values(null, 'Julio Henry Osvaldo Moreira', '225.767.095-75', '18.826.467-X', '(97) 2223-1324', 'juliohenry@gmail.com', 'Masculino', 'Diretor', 1520, '18:00:00', '23:00:00', '1991-10-18', '422.40050.78-2');
insert into Funcionario values(null, 'Julio Antonio Enzo Duarte', '678.186.117-46', '13.366.216-0', '(64) 2789-5188', 'julioantoni@gmail.com', 'Masculino', 'Segurança', 4210, '18:00:00', '23:00:00', '2001-02-10', '796.12937.17-3');
insert into Funcionario values(null, 'Henrique Carlos Eduardo da Mata', '107.128.529-72', '11.246.726-X', '(65) 2141-7684', 'henriquecarlos@outlook.com', 'Masculino', '', 3120, '18:00:00', '23:00:00', '2001-10-21', '632.36900.62-7');
insert into Funcionario values(null, 'Luana Francisca Pinto', '114.996.442-13', '16.218.306-9', '(61) 2903-0188', 'luanafrancisca@hotmail.com', 'Feminino', 'Contador', 1540, '18:00:00', '23:00:00', '2001-12-28', '516.92086.07-3');
INSERT INTO Funcionario (nome_fun, cpf_fun, rg_fun, telefone_fun, email_fun, sexo_fun, funcao_fun, salario_fun, horario_entrada_fun, horario_saida_fun, data_nasc_fun, carteira_trabalho_fun) VALUES
('Jennifer Brown', '1234567890', '12345678', '123-456-7890', 'jenniferbrown@example.com', 'Female', 'Manager', 5000.00, '09:00:00', '18:00:00', '1990-01-01', 'CT123456'),
('Robert Johnson', '9876543210', '87654321', '987-654-3210', 'robertjohnson@example.com', 'Male', 'Sales Associate', 3000.00, '10:00:00', '19:00:00', '1995-05-10', 'CT987654'),
('Emily Davis', '4567890123', '56789012', '456-789-0123', 'emilydavis@example.com', 'Female', 'Cashier', 2000.00, '12:00:00', '21:00:00', '1992-09-15', 'CT456789'),
('Daniel Miller', '9012345678', '90123456', '789-012-3456', 'danielmiller@example.com', 'Male', 'Technician', 4000.00, '08:00:00', '17:00:00', '1998-03-25', 'CT901234'),
('Olivia Wilson', '3456789012', '34567890', '012-345-6789', 'oliviawilson@example.com', 'Female', 'Janitor', 1500.00, '14:00:00', '23:00:00', '1995-11-05', 'CT345678');

insert into Caixa values(null, 1, '2021-05-01', 0, 2500, 2500, 1562, 1);
insert into Caixa values(null, 5, '2021-05-30', 0, 1900, 1900, 552, 2);
insert into Caixa values(null, 3, '2021-01-23', 0, 6800, 6800, 5465, 4);
insert into Caixa values(null, 2, '2021-08-20', 0, 9823, 9823, 121, 3);
insert into Caixa values(null, 4, '2021-07-05', 0, 15985, 15985, 545, 5);

insert into Pagamento values(null, 564, '2021-05-06', 1, 'aberto', 'Cartão', 1, 2);
insert into Pagamento values(null, 65456, '2021-04-08', 2, 'fechado', 'Boleto', 2, 4);
insert into Pagamento values(null, 545, '2021-10-21', 3, 'aberto', 'Pix', 3, 3);
insert into Pagamento values(null, 5145, '2021-11-30', 1, 'fechado', 'Boleto',5 , 1);
insert into Pagamento values(null, 4452, '2021-07-09', 2, 'fechado', 'Cartão', 4, 5);

insert into Filme values(null, 'Doutor Estranho no Multiverso da Loucura', null, 'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor', 'Sam Raimi', 'Ação, Aventura, Fantasia', '14+', '02:06:00');
insert into Filme values(null, 'Sonic 2 - O Filme', null, 'Jim Carrey, James Marsden, Idris Elba', 'Jeff Fowler', 'Aventura, Animação, Família', '10+', '02:02:00');
insert into Filme values(null, 'O Homem do Norte', null, 'Alexander Skarsgård, Nicole Kidman, Claes Bang', 'Robert Eggers', 'Ação, Histórico', '18+', '02:17:00');
insert into Filme values(null, 'Animais Fantásticos: Os Segredos de Dumbledore', null, 'Eddie Redmayne, Jude Law, Mads Mikkelsen', 'David Yates', ' Aventura, Fantasia', '18+', '02:10:00');
insert into Filme values(null, 'O Peso do Talento', null, 'Nicolas Cage, Pedro Pascal, Alessandra Mastronardi', ' Tom Gormican', 'Ação, Comédia', '16+', '02:05:00');
insert into Filme values(null, 'Detetives do Prédio Azul 3 - Uma Aventura no Fim do Mundo', null, 'Pedro Henriques Motta, Letícia Braga, Anderson Lima', 'Mauro Lima', 'Aventura, Família', 'Livre', '01:42:00');
insert into Filme values(null, 'Cidade Perdida', null, 'Sandra Bullock, Channing Tatum, Daniel Radcliffe', 'Aaron Nee, Adam Nee', ' Ação, Aventura, Comédia', '16+', '01:52:00');
insert into Filme values(null, 'Jujutsu Kaisen 0: O Filme', null, 'Megumi Ogata, Kana Hanazawa, Mikako Komatsu', null, ' Ação, Animação, Drama', '18+', '01:45:00');
insert into Filme values(null, 'Meu AmigãoZão - O Filme', null, null, 'Andrés Lieban', 'Aventura, Animação, Família', 'Livre', '01:17:00');
insert into Filme values(null, 'Crocodilos – A Morte Te Espera', null, 'Jessica McNamee, Luke Mitchell, Amali Golden', 'Andrew Traucki', 'Ação, Terror', '18+', '01:38:00');
insert into Filme values(null, 'Medida Provisória', null, 'Taís Araújo, Alfred Enoch, Seu Jorge', 'Lázaro Ramos', 'Drama', '18+', '01:34:00');
insert into Filme values(null, 'Águas Selvagens', null, 'Roberto Birindelli, Mayana Neiva, Allana Lopes', 'Roly Santos', 'Policial', '18+', '01:43:00');
insert into Filme values(null, 'Downton Abbey II: Uma Nova Era', null, 'Hugh Bonneville, Michelle Dockery, Elizabeth McGovern', 'Simon Curtis', 'Drama, Histórico', '16+', '02:00:00');
insert into Filme values(null, 'A Fratura', null, 'Valeria Bruni Tedeschi, Marina Foïs, Pio Marmaï', 'Catherine Corsini', 'Comédia dramática, Drama', '14+', '01:39:00');
insert into Filme values(null, 'A Pior Pessoa do Mundo', null, 'Renate Reinsve, Anders Danielsen Lie, Herbert Nordrum', 'Joachim Trier', 'Comédia, Drama', '16+', '02:08:00');
insert into Filme values(null, 'Klondike: A Guerra na Ucrânia', null, 'Oksana Cherkashyna, Evgeniy Efremov, Sergiy Shadrin', 'Maryna Er Gorbach', 'Drama', '18+', '01:40:00');
insert into Filme values(null, '@Arthur.Rambo - Ódio nas redes', null, 'Rabah Naït Oufella, Antoine Reinartz, Sofian Khammes', 'Laurent Cantet', 'Drama', '16+', '01:18:00');
insert into Filme values(null, 'A Noite do Triunfo', null, 'Kad Merad, David Ayala, Lamine Cissokho', 'Emmanuel Courcol', 'Comédia', '16+', '01:46:00');
insert into Filme values(null, 'Como Matar a Besta', null, 'Ana Brun, João Miguel', 'Agustina San Martín', 'Drama, Fantasia, Suspense', '18+', '01:45:00');
insert into Filme values(null, 'Vitalina Varela', null, null, null, 'Drama', '18+', ':00');
insert into Filme values(null, 'Drive My Car', null, 'Hidetoshi Nishijima, Toko Miura, Masaki Okada', null, 'Drama, Romance', '18+', '02:01:00');
insert into Filme values(null, 'Tre Piani', null, null, null, 'Comédia, Comédia dramática, Drama', null, '02:02:00');
insert into Filme values(null, 'Um Conto de Amor e Desejo', null, 'Sami Outalbali, Aurélia Petit, Bellamine Abdelmalek', 'Leyla Bouzid', 'Drama, Romance', '18+', '02:00:00');
insert into Filme values(null, 'Paris, 13º Distrito', null, 'Lucie Zhang, Makita Samba, Noémie Merlant', 'Jacques Audiard', null, null, '01:46:00');
insert into Filme values(null, 'Um Divã na Tunísia', null, 'Golshifteh Farahani, Majd Mastoura, Aïcha Ben Miled', 'Manele Labidi', 'Comédia, Drama', '14+', '01:29:00');
insert into Filme values(null, 'Flee - Nenhum Lugar Para Chamar de Lar', null, null, 'Jonas Poher Rasmussen', ' Animação, Documentário', '10+', '01:23:00');
insert into Filme values(null, 'Nunca mais nevará', null, 'Alec Utgoff, Maja Ostaszewska, Agata Kulesza', 'Malgorzata Szumowska, Michal Englert', 'Comédia, Comédia dramática, Drama', '16+', '01:47:00');
insert into Filme values(null, 'Sibyl', null, 'Virginie Efira, Adèle Exarchopoulos, Sandra Hüller', 'Justine Triet', 'Drama', '14+', '01:48:00');
insert into Filme values(null, 'Aznavour por Charles', null, 'Charles Aznavour, Romain Duris', null, 'Biopic, Documentário', null, '02:05:00');
insert into Filme values(null, 'Fim de Festa', null, 'Irandhir Santos, Gustavo Patriota, Amanda Beça', 'Hilton Lacerda', 'Drama', '18+', '01:50:00');
insert into Filme values(null, 'A felicidade das pequenas coisas', null, null, 'Pawo Choyning Dorji', 'Aventura, Drama, Família', 'Livre', '01:38:00');
insert into Filme values(null, 'Madalena', null, 'Joana Castro, Natália Mazarim, Pamela Yulle', 'Madiano Marcheti', 'Drama', '16+', '01:29:00');
insert into Filme values(null, 'Doutor Estranho', null, 'Benedict Cumberbatch, Chiwetel Ejiofor, Tilda Swinton', 'Scott Derrickson', null, '14+', '02:04:00');
insert into Filme values(null, 'Benedetta', null, 'Virginie Efira, Charlotte Rampling, Daphne Patakia', 'Paul Verhoeven', 'Drama, Histórico, Romance', '16+', '01:41:00');
insert into Filme values(null, 'Pássaros de Verão', null, 'José Acosta, Carmiña Martínez, Jhon Narváez', 'Ciro Guerra, Cristina Gallego', 'Drama, Suspense', '18+', '02:08:00');
insert into Filme values(null, 'Morbius', null, 'Jared Leto, Matt Smith (XI), Adria Arjona', 'Daniel Espinosa', 'Ação, Aventura, Fantasia', '16+', '01:45:00');
insert into Filme values(null, 'Retablo', null, null, 'Álvaro Delgado-Aparicio', 'Drama', '16+', '01:45:00');
insert into Filme values(null, 'A Hora do Show', null, 'Sarah Jones (III), Thomas Jefferson Byrd, Jason Bernard', 'Spike Lee', 'Comédia dramática, Musical', '10+', '02:02:00');
insert into Filme values(null, 'A Mulher de um Espião', null, ' Yû Aoi, Masahiro Higashide, Yuri Tsunematsu', 'Kiyoshi Kurosawa', 'Drama, Histórico', null, '01:48:00');
insert into Filme values(null, 'Mar de Dentro', null, 'Monica Iozzi, Rafael Losso, Gilda Nomacce', 'Dainara Toffoli', 'Drama', '16+', '02:04:00');
insert into Filme values(null, 'O Segundo Rosto', null, ' Rock Hudson, Will Geer, John Randolph', 'John Frankenheimer', 'Drama, Ficção Científica, Suspense', '18+', '01:45:00');
insert into Filme values(null, 'Fallen Angels', null, 'Charlie Yeung, Takeshi Kaneshiro, Leon Lai', 'Wong Kar-Wai', 'Policial, Romance', '18+', '02:21:00');
insert into Filme values(null, 'O Homem Elefante', null, 'Anthony Hopkins, John Hurt, Anne Bancroft', 'David Lynch', 'Biopic, Drama', '16+', '01:45:00');
insert into Filme values(null, 'O Casamento de Maria Braun', null, 'Hanna Schygulla, Klaus Löwitsch, Ivan Desny', null, 'Drama', '18+', '02:03:00');
insert into Filme values(null, 'Amor à Flor da Pele', null, 'Maggie Cheung, Tony Leung Chiu-Wai, Rebecca Pan', 'Wong Kar-Wai', 'Drama, Romance', '18+', '01:58:00');
insert into Filme values(null, 'Cicatrizes', null, 'Snezana Bogdanovic, Jovana Stojiljkovic, Vesna Trivalic', 'Miroslav Terzic', 'Drama, Suspense', '14+', '01:45:00');
insert into Filme values(null, 'Adam', null, 'Lubna Azabal, Nisrin Erradi, Douae Belkhaouda', 'Maryam Touzani', 'Drama', '18+', '01:48:00');
insert into Filme values(null, 'No Ritmo do Coração', null, 'Emilia Jones, Marlee Matlin, Eugenio Derbez', null, null, '16+', '01:57:00');
INSERT INTO Filme (titulo_film, sinopse_film, atores_film, diretor_film, genero_film, classificacao_indicativa_film, duracao_film) VALUES
('The Avengers', 'A team of superheroes must unite to save the world from a powerful threat.', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'Joss Whedon', 'Action', 'PG-13', '2:23'),
('Harry Potter and the Philosopher''s Stone', 'A young wizard discovers his magical abilities and attends a magical school.', 'Daniel Radcliffe, Emma Watson, Rupert Grint', 'Chris Columbus', 'Fantasy', 'PG', '2:32'),
('Titanic', 'A love story set on the ill-fated maiden voyage of the RMS Titanic.', 'Leonardo DiCaprio, Kate Winslet', 'James Cameron', 'Romance', 'PG-13', '3:15'),
('The Dark Knight', 'Batman faces off against a twisted criminal mastermind known as the Joker.', 'Christian Bale, Heath Ledger', 'Christopher Nolan', 'Action', 'PG-13', '02:32'),
('Jurassic Park', 'A theme park featuring genetically-engineered dinosaurs goes awry.', 'Sam Neill, Laura Dern, Jeff Goldblum', 'Steven Spielberg', 'Adventure', 'PG-13', '2:7');

insert into Sala values(null, 'Sala 1', 1, 150, 'Primeiro andar');
insert into Sala values(null, 'Sala 2', 2, 150, 'Primeiro andar');
insert into Sala values(null, 'Sala 3', 3, 120, 'Primeiro andar');
insert into Sala values(null, 'Sala 4', 4, 100, 'Segundo Andar');
insert into Sala values(null, 'Sala 5', 5, 150, 'Segundo Andar');

insert into Poltrona values(null, 1, 1, '(1,1)', 'livre', 1);
insert into Poltrona values(null, 5, 7, '(7,5)', 'ocupada', 2);
insert into Poltrona values(null, 78, 21, '(78,21)', 'livre', 3);
insert into Poltrona values(null, 42, 11, '(42,11)', 'livre', 5);
insert into Poltrona values(null, 53, 10, '(53,10)', 'ocupada', 4);

insert into Sessao values(null, '08:00:00', '2021-01-10', '10:00:00', 1, 1);
insert into Sessao values(null, '10:00:00', '2021-01-15', '12:00:00', 5, 3);
insert into Sessao values(null, '12:00:00', '2021-01-20', '14:00:00', 3, 4);
insert into Sessao values(null, '18:00:00', '2021-01-25', '20:00:00', 2, 2);
insert into Sessao values(null, '20:00:00', '2021-01-30', '22:00:00', 4, 5);

insert into Ingresso values(null, 20, '2021-01-10', '1584796542589', 1);
insert into Ingresso values(null, 22, '2021-01-10', '145874586954', 1);
insert into Ingresso values(null, 20, '2021-01-10', '120120125469', 1);
insert into Ingresso values(null, 11.50, '2021-01-15', '012560145236', 2);
insert into Ingresso values(null, 16, '2021-01-15', '012541202563', 2);
insert into Ingresso values(null, 20, '2021-01-15', '210214520125', 2);
insert into Ingresso values(null, 22, '2021-01-20', '201365410215', 3);
insert into Ingresso values(null, 25, '2021-01-25', '101021236521', 4);
insert into Ingresso values(null, 22, '2021-01-30', '100102136541', 5);
insert into Ingresso values(null, 20, '2021-01-30', '254103652148', 5);

insert into Venda values(null, 156, '11:21:00', '2021-05-06', 2, 3, 1, 2);
insert into Venda values(null, 154, '15:10:22', '2021-04-08', 3, 2, 2, 3);
insert into Venda values(null, 111, '18:25:15', '2021-02-03', 4, 5, 5, 4);
insert into Venda values(null, 153, '20:15:23', '2021-12-06', 5, 1, 4, 1);
insert into Venda values(null, 456, '20:00:54', '2021-11-05', 1, 4, 3, 5);
INSERT INTO Venda (valor_vend, hora_vend, data_vend, id_polt_fk, id_ing_fk, id_fun_fk, id_cli_fk) VALUES
(30.00, '18:30:00', '2023-05-01', 1, 1, 1, 1),
(25.00, '15:45:00', '2023-05-02', 2, 2, 2, 2),
(35.00, '20:15:00', '2023-05-03', 3, 3, 3, 3),
(28.00, '17:30:00', '2023-05-04', 4, 4, 4, 4),
(32.50, '19:45:00', '2023-05-05', 5, 5, 5, 5);

insert into Produto values(null, 'Pipoca', 'Yoki', 20.41, 10.25, 12, 'Comida', 'Pacote de pipoca 500g');
insert into Produto values(null, 'Refrigerante', 'Tuchaua', 8.32, 10.30, 35, 'Bebida', 'Refrigerante 2L');
insert into Produto values(null, 'Pipoca doce', 'Bernardo', 15.32, 24.10, 65, 'Comida', null);
insert into Produto values(null, 'Batata frita', 'Yoki', 10.21, 50.10, 14, 'Comida', 'pacote de 25g');
insert into Produto values(null, 'Paçoca', 'Bernardo', 4.91, 15.14, 41, 'Comida', null);
INSERT INTO Produto (nome_prod, marca_prod, valor_venda_prod, valor_compra_prod, estoque_prod, tipo_prod, descricao_prod) VALUES
('Popcorn', 'Cinema Snacks', 5.00, 2.00, 100, 'Food', 'Freshly popped corn kernels'),
('Soda', 'Cinema Beverages', 4.00, 1.50, 150, 'Drink', 'Carbonated soft drink'),
('Candy', 'Sweet Treats', 3.00, 1.00, 80, 'Food', 'Assorted candies'),
('Nachos', 'Cinema Snacks', 6.00, 2.50, 70, 'Food', 'Tortilla chips with cheese dip'),
('Ice Cream', 'Frozen Delights', 4.50, 2.00, 90, 'Food', 'Various flavors of ice cream');

insert into Venda_Produto values(null, 15, 54, 1, 2);
insert into Venda_Produto values(null, 456, 45, 2, 5);
insert into Venda_Produto values(null, 63, 25, 5, 4);
insert into Venda_Produto values(null, 4, 68, 4, 1);
insert into Venda_Produto values(null, 41, 67, 3, 3);
INSERT INTO Venda_Produto (qtd_itens_vend_prod, valor_vend_prod, id_prod_fk, id_vend_fk) VALUES
(2, 10.00, 1, 1),
(1, 4.00, 2, 2),
(3, 9.00, 3, 3),
(2, 12.00, 4, 4),
(1, 4.50, 5, 5);

insert into Compra values(null, 152, '16:05:23', '2021-12-30', 1, 2);
insert into Compra values(null, 456, '06:25:11', '2021-10-12', 4, 3);
insert into Compra values(null, 153, '21:23:23', '2021-06-05', 3, 5);
insert into Compra values(null, 485, '15:26:56', '2021-04-08', 2, 4);
insert into Compra values(null, 698, '14:15:06', '2021-09-07', 5, 1);

insert into Compra_Produto values(null, 14, 456, 1, 1);
insert into Compra_Produto values(null, 25, 237, 5, 4);
insert into Compra_Produto values(null, 75, 7897, 3, 2);
insert into Compra_Produto values(null, 36, 4563, 4, 3);
insert into Compra_Produto values(null, 30, 548, 2, 5);

#DESMEMBRAMENTOS
create table sexo (
id_sex int primary key,
nome_sex varchar (300)
);

insert into sexo values (1, 'Masculino');
insert into sexo values (2, 'Feminino');

alter table Cliente add id_sex_fk int;
alter table Cliente add foreign key (id_sex_fk) references sexo (id_sex);
alter table Funcionario add id_sex_fk int;
alter table Funcionario add foreign key (id_sex_fk) references sexo (id_sex);  

update Cliente set id_sex_fk = 1 where (sexo_cli like 'masculino');
update Cliente set id_sex_fk = 2 where (sexo_cli like 'feminino');
update Funcionario set id_sex_fk = 1 where (sexo_fun like 'masculino');
update Funcionario set id_sex_fk = 2 where (sexo_fun like 'feminino');

alter table Cliente drop sexo_cli;
alter table Funcionario drop sexo_fun;

create table Tipo_sanguineo (
id_tsa int primary key auto_increment,
fator_tsa varchar (50),
rh_tsa varchar (50)
);

insert into Tipo_sanguineo values (null, 'A', '+');
insert into Tipo_sanguineo values (null, 'A', '-');
insert into Tipo_sanguineo values (null, 'B', '+');
insert into Tipo_sanguineo values (null, 'B', '-');
insert into Tipo_sanguineo values (null, 'AB', '+');
insert into Tipo_sanguineo values (null, 'AB', '-');
insert into Tipo_sanguineo values (null, 'O', '+');
insert into Tipo_sanguineo values (null, 'O', '-');

alter table Cliente add id_tsa_fk int;
alter table Cliente add foreign key (id_tsa_fk) references Tipo_sanguineo (id_tsa);

update Cliente set id_tsa_fk = 1 where (tipagem_sanguinea_cli = 'A+');
update Cliente set id_tsa_fk = 2 where (tipagem_sanguinea_cli = 'A-');
update Cliente set id_tsa_fk = 3 where (tipagem_sanguinea_cli = 'B+');
update Cliente set id_tsa_fk = 4 where (tipagem_sanguinea_cli = 'B-');
update Cliente set id_tsa_fk = 5 where (tipagem_sanguinea_cli = 'AB+');
update Cliente set id_tsa_fk = 6 where (tipagem_sanguinea_cli = 'AB-');
update Cliente set id_tsa_fk = 7 where (tipagem_sanguinea_cli = 'O+');
update Cliente set id_tsa_fk = 8 where (tipagem_sanguinea_cli = 'O-');

alter table Cliente drop tipagem_sanguinea_cli;

create table funcao (
id_func int primary key auto_increment,
nome_func varchar (300)
);

insert into funcao values (null, 'Atendente');
insert into funcao values (null, 'Auxiliar');
insert into funcao values (null, 'Contador');
insert into funcao values (null, 'Diretor');
insert into funcao values (null, 'Gerente');
insert into funcao values (null, 'Segurança');
insert into funcao values (null, 'Zelador');
insert into funcao values (null, 'Supervisor');

alter table Funcionario add id_func_fk int;
alter table Funcionario add foreign key (id_func_fk) references funcao (id_func);

update Funcionario set id_func_fk = 1 where (funcao_fun = 'Atendente');
update Funcionario set id_func_fk = 2 where (funcao_fun = 'Auxiliar');
update Funcionario set id_func_fk = 3 where (funcao_fun = 'Contador');
update Funcionario set id_func_fk = 4 where (funcao_fun = 'Diretor');
update Funcionario set id_func_fk = 5 where (funcao_fun = 'Gerente');
update Funcionario set id_func_fk = 6 where (funcao_fun = 'Segurança');
update Funcionario set id_func_fk = 7 where (funcao_fun = 'Zelador');
update Funcionario set id_func_fk = 8 where (funcao_fun like 'Supervisor%');

alter table Funcionario drop funcao_fun;

create table classificacao (
id_cla int primary key not null auto_increment,
nome_cla varchar (300)
);

insert into classificacao values (null, '10+');
insert into classificacao values (null, '14+');
insert into classificacao values (null, '16+');
insert into classificacao values (null, '18+');
insert into classificacao values (null, 'Livre');

alter table Filme add id_cla_fk int;
alter table Filme add foreign key (id_cla_fk) references classificacao (id_cla);

update Filme set id_cla_fk = 1 where (classificacao_indicativa_film = '10+');
update Filme set id_cla_fk = 2 where (classificacao_indicativa_film = '14+');
update Filme set id_cla_fk = 3 where (classificacao_indicativa_film = '16+');
update Filme set id_cla_fk = 4 where (classificacao_indicativa_film = '18+');
update Filme set id_cla_fk = 5 where (classificacao_indicativa_film = 'Livre');

alter table Filme drop classificacao_indicativa_film;


#EXERCÍCIOS

-- Regras:
-- a) Saiba que as informações entre parênteses referente aos atributos da tabela que deve ser mostrado no SELECT.
-- b) Todos os resultados devem ser personalizados com o AS. Exemplo: nome_cli AS nome
-- c) Nenhuma chave estrangeira deve ser mostrada, mas sim o valor solicitado entre parêntese.
-- d) A técnica a ser utilizada depende do exigido no exercício (direta ou JOIN). 

-- Exercícios:

-- 1. Selecione o nome, o CPF, o sexo (nome) e o tipo sanguíneo (fator e rh) dos Clientes. 
-- Garanta que todos os clientes sejam mostrados, mesmo aqueles sem relação com Sexo ou Tipo Sanguineo. 
-- Selecione apenas os clientes do sexto Masculino e com tipo sanguínio positivo. 

SELECT 
    Cliente.nome_cli AS nome,
    Cliente.cpf_cli AS CPF,
    sexo.nome_sex AS sexo,
    Tipo_sanguineo.fator_tsa,
    CONCAT(Tipo_sanguineo.fator_tsa, Tipo_sanguineo.rh_tsa) AS Tipo_sanguineo
FROM 
    Cliente 
LEFT JOIN sexo ON Cliente.id_sex_fk = sexo.id_sex
LEFT JOIN Tipo_sanguineo ON Cliente.id_tsa_fk = Tipo_sanguineo.id_tsa
WHERE (sexo.nome_sex = 'Masculino' AND Tipo_sanguineo.rh_tsa = '+');


-- 2. Selecione o nome, o CPF, o salario, o sexo (nome) e a função (nome) dos Funcionários. 
-- Garanta que todas as funções sejam mostradas, mesmo aquelas sem relação com Funcionario. 
-- Selecione apenas os funcionarios com o nome da função terminada em 'ar' ou 'or'.

SELECT 
    f.nome_fun AS nome,
    f.cpf_fun AS CPF,
    f.salario_fun AS salario,
    s.nome_sex AS sexo,
    fn.nome_func AS funcao
FROM 
    Funcionario f
JOIN 
    sexo s ON f.id_sex_fk = s.id_sex
RIGHT JOIN 
    funcao fn ON f.id_func_fk = fn.id_func
WHERE 
    fn.nome_func LIKE '%ar' OR fn.nome_func LIKE '%or';

-- 3. Selecione o numero, a data, o saldo inicial, o saldo final e o funcionário (nome) dos Caixas. 
-- Garanta que todos os funcionarios sejam mostrados, mesmo aqueles sem relação com Caixa. 
-- Selecione apenas os caixas que possuem com saldo final superior a mil reais.

SELECT 
    cx.numero_cai AS numero,
    cx.data_cai AS data,
    cx.saldo_inicial_cai AS saldo_inicial,
    cx.saldo_final_cai AS saldo_final,
    f.nome_fun AS funcionario
FROM 
    Caixa cx
RIGHT JOIN 
    Funcionario f ON cx.id_fun_fk = f.id_fun
WHERE 
    cx.saldo_final_cai > 1000;

-- 4. Selecione o valor, a data, a parcela, o status, a forma, o caixa (numero e data) e despesa (descrição, valor e vencimento) dos Pagamentos. 
-- Selecione apenas os pagamentos com status Aberto e com data nos meses 5 ao 10.

SELECT 
    p.valor_pag AS valor,
    p.data_pag AS data,
    p.parcela_pag AS parcela,
    p.status_pag AS status,
    p.forma_pag AS forma,
    CONCAT(cx.numero_cai, ' - ', cx.data_cai) AS caixa,
    CONCAT(d.descricao_desp, ' - R$', d.valor_desp, ' - ', d.vencimento_desp) AS despesa
FROM 
    Pagamento p
JOIN 
    Caixa cx ON p.id_cai_fk = cx.id_cai
JOIN 
    Despesa d ON p.id_desp_fk = d.id_desp
WHERE 
    p.status_pag = 'aberto' 
    AND MONTH(p.data_pag) BETWEEN 5 AND 10;

-- 5. Selecione o titulo, o gênero, a duração e a classificação (nome) dos Filmes. 
--  que todas as classificações sejam mostradas, mesmo aqueles sem relação com filme. 
-- Selecione apenas os filmes com diretor informado e duração inferior a 2 horas. 

SELECT 
    f.titulo_film AS titulo,
    f.genero_film AS genero,
    f.duracao_film AS duracao,
    c.nome_cla AS classificacao
FROM 
    Filme f
RIGHT JOIN 
    classificacao c ON f.id_cla_fk = c.id_cla
WHERE 
    f.diretor_film IS NOT NULL 
    AND TIME_TO_SEC(f.duracao_film) < 7200;

-- 6. Selecione o número, a fileira, o status e a sala (nome) das Poltronas. 
-- Selecione apenas as poltronas com status Livre da fileira inferir a 50.

SELECT 
    p.numero_polt AS numero,
    p.fileira_polt AS fileira,
    p.status_polt AS status,
    s.nome_sala AS sala
FROM 
    Poltrona p
JOIN 
    Sala s ON p.id_sala_fk = s.id_sala
WHERE 
    p.status_polt = 'livre' 
    AND p.fileira_polt < 50;

-- 7. Selecione a hora de início, a data, a hora do filme, a sala (nome e número) e o filme (título) da Sessão. 
-- Selecione apenas as sessões matutino e noturno.

SELECT 
    ss.hora_inicio_ses AS hora_inicio,
    ss.data_ses AS data,
    ss.hora_fim_ses AS hora_fim,
    CONCAT(s.nome_sala, ' - ', s.numero_sala) AS sala,
    f.titulo_film AS filme
FROM 
    Sessao ss
JOIN 
    Sala s ON ss.id_sala_fk = s.id_sala
JOIN 
    Filme f ON ss.id_film_fk = f.id_film
WHERE 
    TIME(ss.hora_inicio_ses) < '12:00:00' 
    OR TIME(ss.hora_inicio_ses) >= '18:00:00';

-- 8. Selecione o valor, a data e a sessão (hora do início) do Ingresso. 
-- Selelecione apenas os ingresso que possuem codigo de barras com o dígito 01 e com data da sessão iniciada no primeiro semestre de 2021.

SELECT 
    i.valor_ing AS valor,
    i.data_ing AS data,
    ss.hora_inicio_ses AS hora_sessao
FROM 
    Ingresso i
JOIN 
    Sessao ss ON i.id_ses_fk = ss.id_ses
WHERE 
    i.cod_barras_ing LIKE '%01%' 
    AND MONTH(ss.data_ses) BETWEEN 1 AND 6 
    AND YEAR(ss.data_ses) = 2021;

-- 9. Selecione o valor, a hora, a data, a poltrona (número), o ingresso (valor), o funcionário (nome), o cliente (nome) das Vendas.
-- Você deverá garantir que TODOS os clientes sejam listados, mesmo aqueles sem vendas relacionadas. Ordene pelo nome do cliente.

SELECT 
    v.valor_vend AS valor,
    v.hora_vend AS hora,
    v.data_vend AS data,
    p.numero_polt AS poltrona,
    i.valor_ing AS valor_ingresso,
    f.nome_fun AS funcionario,
    c.nome_cli AS cliente
FROM 
    Cliente c
LEFT JOIN 
    Venda v ON c.id_cli = v.id_cli_fk
LEFT JOIN 
    Poltrona p ON v.id_polt_fk = p.id_polt
LEFT JOIN 
    Ingresso i ON v.id_ing_fk = i.id_ing
LEFT JOIN 
    Funcionario f ON v.id_fun_fk = f.id_fun
ORDER BY 
    c.nome_cli;

-- 10. Selecione o valor, a data, os produtos_vendidos (quantidade_venda e valor_venda) e o produto (nome) das Vendas. 

SELECT 
    v.valor_vend AS valor_venda,
    v.data_vend AS data_venda,
    vp.qtd_itens_vend_prod AS quantidade,
    vp.valor_vend_prod AS valor_produto,
    p.nome_prod AS produto
FROM 
    Venda v
JOIN 
    Venda_Produto vp ON v.id_vend = vp.id_vend_fk
JOIN 
    Produto p ON vp.id_prod_fk = p.id_prod;