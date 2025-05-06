#CLINICA ODONTOLOGICA

create database BD_Clinica_Odontologica_1;
use BD_Clinica_Odontologica_1;


create table Funcionario(
id_fun int primary key auto_increment,
nome_fun varchar (300),
especialidade_fun varchar (300),
cpf_fun varchar (100),
rg_fun varchar (100),
funcao_fun varchar (300),
data_nascimento_fun date,
celular_fun varchar (100),
endereco_fun varchar (300),
email_fun varchar (300)
);

insert into Funcionario values (null, 'Lucas Araújo', 'Cirurgias' , '38223628597','42.129.916-2', 'Dentista', '1983-11-01', '(74) 3611-9415', 'Rua dos Mafagafos, Bairro Mafagafinhos, 7897', 'filadelfo2467@uorak.com');
insert into Funcionario values (null, 'Diogo Cardoso', 'Administração' , '27361331025','21.578.798-5', 'Atendente', '1984-09-01', '(22) 3115-7601', 'Travessa Antônio Ferreira, Igrejinha, 798', 'valentin_botsford46@yahoo.com');
insert into Funcionario values (null, 'Dr. Luigi da Conceição', 'Pediatria Odontologica' , '65772562843','34.047.430-0', 'Dentista', '1999-03-15', '(32) 2323-1893', 'Rodovia Raposo Tavares, Lageadinho, 445', 'gino.miller83@gmail.com');
insert into Funcionario values (null, 'Dra. Larissa Silveira', 'Atendimento' , '23543586793','13.207.875-2', 'Caixa', '2003-07-13', '(69) 3984-5365', 'Rua Paracatu, Parque Imperial, 456', 'keenan_johnston@gmail.com');
insert into Funcionario values (null, 'Sra. Clara da Rocha', 'Cirurgias' , '91483815943','36.443.270-6', 'Dentista', '1983-09-02', '(69) 91254412', 'Rua dos Kimbabas, Bairro Orgulho, 865', 'brody_berge24@yahoo.com');
INSERT INTO Funcionario (nome_fun, especialidade_fun, cpf_fun, rg_fun, funcao_fun, data_nascimento_fun, celular_fun, endereco_fun, email_fun)
VALUES
('João Silva', 'Ortodontia', '12345678900', 'MG1234567', 'Dentista', '1985-03-10', '(11) 91234-5678', 'Rua das Flores, 123', 'joao@gmail.com'),
('Maria Santos', 'Cirurgiã', '98765432100', 'SP7654321', 'Dentista', '1990-05-15', '(11) 99876-5432', 'Avenida Brasil, 456', 'maria.santos@hotmail.com'),
('Carlos Teste', '', '99999999900', 'SP0000000', 'Recepcionista', '1982-11-20', '(11) 90000-0000', 'Rua Teste, 0', 'teste@teste.com');
insert into Funcionario values (null, 'Ricardo Oliveira', 'Implantes Dentários', '98712345678', '45.765.432-1', 'Dentista', '1982-07-22', '(35) 98765-4321', 'Rua São Sebastião, Centro, 1234', 'ricardo.oliveira@email.com');
insert into Funcionario values (null, 'Ana Costa', 'Endodontia', '12387654321', '23.465.765-4', 'Dentista', '1992-06-10', '(21) 98765-4321', 'Avenida Rio Branco, 5678', 'ana.costa@email.com');
insert into Funcionario values (null, 'Felipe Oliveira', 'Próteses', '45612378900', '36.289.465-7', 'Dentista', '1988-02-15', '(22) 99567-4321', 'Rua das Acácias, 234', 'felipe.oliveira@gmail.com');
insert into Funcionario values (null, 'Fernanda Martins', 'Estética Dental', '78945612300', '12.376.889-0', 'Atendente', '1995-09-25', '(11) 96123-4567', 'Rua das Palmeiras, 456', 'fernanda.martins@email.com');
insert into Funcionario values (null, 'Ricardo Lima', 'Clínico Geral', '32165498700', '45.123.876-5', 'Dentista', '1984-12-03', '(21) 99123-4567', 'Rua Boa Vista, 789', 'ricardo.lima@email.com');
insert into Funcionario values (null, 'Carla Mendes', 'Periodontia', '65478912300', '36.587.902-2', 'Dentista', '1987-05-18', '(32) 92345-6789', 'Rua das Orquídeas, 324', 'carla.mendes@email.com');
insert into Funcionario values (null, 'Pedro Almeida', 'Radiologia', '98765432100', '12.987.432-1', 'Radiologista', '1990-03-02', '(11) 92233-4455', 'Avenida dos Trabalhadores, 890', 'pedro.almeida@email.com');
insert into Funcionario values (null, 'Luana Oliveira', 'Endodontia', '54321678900', '23.543.898-9', 'Dentista', '1994-08-20', '(21) 98877-4433', 'Rua dos Eucaliptos, 2345', 'luana.oliveira@email.com');
insert into Funcionario values (null, 'Gustavo Silva', 'Ortopedia Funcional', '91234567890', '29.489.123-4', 'Dentista', '1989-02-10', '(32) 93567-8901', 'Avenida das Nações, 6789', 'gustavo.silva@email.com');
insert into Funcionario values (null, 'Tatiane Souza', 'Próteses', '34567891234', '45.321.654-8', 'Dentista', '1991-10-05', '(35) 91234-5678', 'Rua Bela Vista, 234', 'tatiane.souza@email.com');

create table Paciente(
id_pac int primary key auto_increment,
nome_pac varchar (300),
cpf_pac varchar (100),
data_nascimento_pac date,
email_pac varchar (300),
celular_pac varchar (100),
endereco_pac varchar (300)
);

insert into Paciente values (null,'Jhose Pedro', '74857413245', '1951-12-15', 'jhoselindao@gmail.com', '(69) 98754712', 'Rua dos Mafagafos, Bairro Mafagafinhos, 3541');
insert into Paciente values (null, 'Abenilde Pires dos Santos', '05104451283', '1996-11-05', 'abenildesantos@gmail.com', '(91) 3127-5454', 'Rua das Aves, Bairro Mafagafinhos, 3754');
insert into Paciente values (null,'Aida Quaresma de Sousa', '06438702706', '1910-12-01', 'aidaquares@gmail.com', '(41) 2336-4135', 'Rua dos Peixes, Bairro Mafagafinhos, 3141');
insert into Paciente values (null,'Anaximenes do Nascimento', '66668166253', '2006-03-30', 'anaximenesa@gmail.com', '(75) 3943-9589', 'Rua dos Joãos, Bairro Mafagafinhos, 1254');
insert into Paciente values (null,'André de Barros Bandeira', '49476107430', '2006-06-03', 'andredebarros@gmail.com', '(84) 3510-6460', 'Rua dos Ulisses, Bairro Mafagafinhos, 3874');
INSERT INTO Paciente (nome_pac, cpf_pac, data_nascimento_pac, email_pac, celular_pac, endereco_pac)
VALUES
('José da Silva', '11122233344', '1988-07-22', 'jose@gmail.com', '(11) 91111-1111', 'Rua Central, 101'),
('Ana Clara Teste', '99988877766', '1992-01-05', 'ana.teste@teste.com', '(11) 92222-2222', 'Rua Teste, 99'),
('Joana Souza', '12345678912', '2000-02-28', 'joana@hotmail.com', '(11) 93333-3333', 'Av. Paulista, 300');
INSERT INTO Paciente (nome_pac, cpf_pac, data_nascimento_pac, email_pac, celular_pac, endereco_pac)
VALUES
('Carlos Alberto Lima', '23456789123', '1985-06-12', 'carlos.lima@gmail.com', '(21) 98888-1234', 'Rua das Flores, 125'),
('Maria Fernanda Rocha', '34567891234', '1991-03-09', 'maria.rocha@yahoo.com', '(31) 97777-2345', 'Av. das Rosas, 78'),
('Paulo Henrique Silva', '45678912345', '1978-10-25', 'paulo.silva@outlook.com', '(11) 96666-3456', 'Rua Primavera, 432'),
('Bianca Oliveira', '56789123456', '1995-08-17', 'bianca.oli@gmail.com', '(41) 95555-4567', 'Rua dos Lírios, 290'),
('Eduardo Costa', '67891234567', '1982-12-01', 'edu.costa@hotmail.com', '(71) 94444-5678', 'Rua Nova, 108'),
('Juliana Matos', '78912345678', '1999-11-30', 'julianamatos@gmail.com', '(85) 93333-6789', 'Rua Antiga, 12'),
('Rafael Mendes', '89012345679', '2001-04-04', 'rafael.mendes@gmail.com', '(92) 92222-7890', 'Travessa das Pedras, 45'),
('Camila Duarte', '90123456780', '1993-07-13', 'camila.duarte@gmail.com', '(84) 91111-8901', 'Rua Bela Vista, 300'),
('Pedro Henrique Lobo', '11223344556', '1986-09-21', 'pedrohlobo@gmail.com', '(21) 90000-1234', 'Rua João Pessoa, 99'),
('Larissa Teixeira', '22334455667', '1994-01-14', 'larissatex@gmail.com', '(61) 98888-2345', 'Rua do Sol, 785'),
('Fernando Braga', '33445566778', '1977-06-07', 'fbraga@yahoo.com', '(91) 97777-3456', 'Rua Estrela, 653'),
('Natália Lima', '44556677889', '1989-10-10', 'natalima@hotmail.com', '(31) 96666-4567', 'Rua do Meio, 200'),
('Luciana Silva', '55667788990', '1990-02-28', 'lucianasilva@gmail.com', '(51) 95555-5678', 'Av. Brasil, 875'),
('Felipe Rocha', '66778899001', '1983-05-18', 'feliperocha@gmail.com', '(41) 94444-6789', 'Rua do Campo, 311'),
('Adriana Souza', '77889900112', '2000-09-09', 'adrianasouza@gmail.com', '(71) 93333-7890', 'Rua Aurora, 430'),
('Renato Gomes', '88990011223', '1996-12-31', 'renatogomes@hotmail.com', '(11) 92222-8901', 'Travessa Luz, 118'),
('Sabrina Rocha', '99001122334', '1984-03-25', 'sabrina.rocha@gmail.com', '(85) 91111-9012', 'Rua das Gaivotas, 57'),
('Vinícius Martins', '10111213141', '1998-07-07', 'viniciusmartins@gmail.com', '(21) 90000-2345', 'Rua dos Lírios, 341'),
('Tatiane Costa', '12131415161', '1993-06-15', 'tatianecosta@gmail.com', '(61) 98888-3456', 'Rua da Alegria, 221'),
('Rodrigo Pereira', '13141516171', '1987-08-02', 'rodrigopereira@hotmail.com', '(91) 97777-4567', 'Av. Central, 1230'),
('Aline Souza', '14151617181', '2002-11-20', 'aline.souza@gmail.com', '(31) 96666-5678', 'Rua do Cedro, 98'),
('Jéssica Andrade', '15161718191', '1995-02-14', 'jess.andrade@gmail.com', '(41) 95555-6789', 'Rua do Sol Nascente, 874'),
('Matheus Lopes', '16171819202', '1991-10-30', 'matheuslopes@gmail.com', '(71) 94444-7890', 'Rua Larga, 105'),
('Patrícia Freitas', '17181920312', '1986-04-09', 'patfreitas@gmail.com', '(84) 93333-8901', 'Rua dos Cedros, 39'),
('Bruno Fernandes', '18192021322', '1997-09-17', 'bfernandes@gmail.com', '(92) 92222-9012', 'Rua do Comércio, 1101'),
('Tamires Ribeiro', '19202122332', '1994-05-05', 'tamires.ribeiro@gmail.com', '(11) 91111-2345', 'Rua do Porto, 654'),
('Hugo Cavalcante', '20212223342', '1983-12-12', 'hugocav@gmail.com', '(85) 90000-3456', 'Travessa Alegria, 77'),
('Daniela Nogueira', '21222324352', '1999-03-03', 'daninogueira@gmail.com', '(21) 98888-4567', 'Rua Beira Mar, 430'),
('Leandro Cardoso', '22232425362', '1988-06-11', 'leandroc@gmail.com', '(61) 97777-5678', 'Rua do Forte, 10'),
('Elaine Moreira', '23242526372', '1992-01-29', 'elainemoreira@gmail.com', '(91) 96666-6789', 'Rua dos Sonhos, 777'),
('Igor Almeida', '24252627382', '1990-07-07', 'igoralmeida@gmail.com', '(31) 95555-7890', 'Rua do Norte, 982');


create table Anamnese (
id_ana int primary key auto_increment,
data_ana date,
diabete_ana varchar (100),
cardiopatia_ana varchar (300),
obesidade_ana varchar (300),
sintomas_ana varchar (1000),
tipo_ana varchar (100),
id_pac_fk int not null,
id_fun_fk int not null,
foreign key (id_pac_fk) references Paciente (id_pac),
foreign key (id_fun_fk) references Funcionario (id_fun)
);

insert into Anamnese values (null, '2010-06-01', 'Não', 'Sim', 'Não', 'Não', 'Nenhum', 1, 1);
insert into Anamnese values (null, '2022-05-12', 'Não', 'Não', 'Sim', 'Sim', 'Nenhum', 2, 1);
insert into Anamnese values (null, '2022-10-20', 'Sim', 'Não', 'Sim', 'Não', 'Nenhum', 3, 5);
insert into Anamnese values (null, '2022-11-12', 'Não', 'Sim', 'Não', 'Sim', 'Nenhum', 4, 1);
insert into Anamnese values (null, '2022-01-12', 'Sim', 'Não', 'Sim', 'Não', 'Nenhum', 5, 5);
INSERT INTO Anamnese (data_ana, diabete_ana, cardiopatia_ana, obesidade_ana, sintomas_ana, tipo_ana, id_pac_fk, id_fun_fk)
VALUES
('2023-01-15', 'Não', 'Não', 'Sim', 'Dor de cabeça, febre', 'Clínico', 6, 2),
('2023-02-20', 'Sim', 'Sim', 'Sim', 'Fadiga e tontura', 'Retorno', 7, 3),
('2023-03-18', 'Não', 'Não', 'Não', 'Sensibilidade nos dentes', 'Clínico', 8, 1),
('2023-04-25', 'Sim', 'Não', 'Não', 'Gengivite, dor local', 'Emergência', 9, 4),
('2023-05-10', 'Não', 'Sim', 'Sim', 'Dor de dente constante', 'Clínico', 10, 2),
('2023-06-03', 'Não', 'Não', 'Não', 'Nenhum sintoma', 'Rotina', 11, 1),
('2023-06-12', 'Sim', 'Sim', 'Não', 'Sangramento gengival', 'Retorno', 12, 3),
('2023-07-04', 'Não', 'Sim', 'Sim', 'Inchaço na gengiva', 'Emergência', 13, 2),
('2023-07-18', 'Sim', 'Não', 'Sim', 'Dores ao mastigar', 'Clínico', 14, 5),
('2023-08-22', 'Não', 'Não', 'Não', 'Dor e sensibilidade ao frio', 'Clínico', 15, 4),
('2023-09-11', 'Sim', 'Sim', 'Sim', 'Respiração com dificuldade', 'Rotina', 16, 1),
('2023-10-01', 'Não', 'Não', 'Sim', 'Forte dor mandibular', 'Emergência', 17, 3),
('2023-10-30', 'Sim', 'Não', 'Não', 'Dor intermitente', 'Clínico', 18, 2),
('2023-11-20', 'Não', 'Sim', 'Não', 'Inflamação visível', 'Retorno', 19, 4),
('2023-12-15', 'Não', 'Não', 'Sim', 'Mau hálito persistente', 'Rotina', 20, 1),
('2024-01-05', 'Sim', 'Sim', 'Sim', 'Dores na mandíbula', 'Clínico', 21, 5),
('2024-01-19', 'Não', 'Não', 'Não', 'Nenhum sintoma', 'Clínico', 22, 1),
('2024-02-07', 'Sim', 'Sim', 'Sim', 'Dores musculares e febre', 'Emergência', 23, 3),
('2024-03-02', 'Não', 'Sim', 'Não', 'Dor ao abrir a boca', 'Clínico', 24, 2),
('2024-03-15', 'Sim', 'Não', 'Não', 'Dor aguda e contínua', 'Retorno', 25, 4),
('2024-04-01', 'Não', 'Sim', 'Sim', 'Inflamação gengival', 'Clínico', 26, 1),
('2024-04-18', 'Não', 'Não', 'Não', 'Dor e vermelhidão', 'Emergência', 27, 2),
('2024-05-09', 'Sim', 'Sim', 'Não', 'Febre e dor de cabeça', 'Clínico', 28, 5),
('2024-05-23', 'Não', 'Não', 'Sim', 'Sensibilidade extrema', 'Clínico', 29, 1),
('2024-06-05', 'Sim', 'Não', 'Sim', 'Inchaço no rosto', 'Emergência', 30, 3),
('2024-06-18', 'Não', 'Sim', 'Não', 'Cansaço ao mastigar', 'Clínico', 31, 4),
('2024-07-01', 'Sim', 'Sim', 'Sim', 'Inflamação crônica', 'Retorno', 32, 1),
('2024-07-15', 'Não', 'Não', 'Não', 'Gengiva retraída', 'Rotina', 33, 2),
('2024-07-30', 'Sim', 'Sim', 'Sim', 'Dor e dormência facial', 'Clínico', 34, 5),
('2024-08-10', 'Não', 'Sim', 'Sim', 'Dores constantes nos dentes superiores', 'Emergência', 35, 3);

create table Odontograma (
id_odo int primary key auto_increment,
data_registro_odo date not null,
incisivo_lateral_odo varchar (300),
1_molar_odo varchar (300),
canino_odo varchar (300),
2_molar_odo varchar (300),
incisivo_central_odo varchar (300),
2_premolar_odo varchar (300),
1_premolar_odo varchar (300),
3_molar_odo varchar (300),
id_pac_fk int not null,
id_fun_fk int not null,
foreign key (id_pac_fk) references Paciente (id_pac),
foreign key (id_fun_fk) references Funcionario (id_fun)
);

 insert into Odontograma values (null, '2022-08-01', 'Bom', 'Médio', 'Péssimo', 'Ruim', 'Médio', 'Ótimo', 'Médio', 'Ótimo', 2, 1);
 insert into Odontograma values (null, '2022-08-01', 'Médio', 'Médio', 'Péssimo', 'Ruim', 'Médio', 'Bom', 'Médio', 'Bom', 3, 1);
 insert into Odontograma values (null, '2022-08-01', 'Bom', 'Médio', 'Péssimo', 'Médio', 'Bom', 'Ótimo', 'Médio', 'Péssimo', 4, 1);
 insert into Odontograma values (null, '2022-08-02', 'Bom', 'Bom', 'Péssimo', 'Ruim', 'Médio', 'Ótimo', 'Bom', 'Bom', 5, 5);
 insert into Odontograma values (null, '2022-08-02', 'Médio', 'Médio', 'Bom', 'Ruim', 'Médio', 'Médio', 'Médio', 'Péssimo', 1, 5);
INSERT INTO Odontograma (
    data_registro_odo, incisivo_lateral_odo, 1_molar_odo, canino_odo,
    2_molar_odo, incisivo_central_odo, 2_premolar_odo, 1_premolar_odo,
    3_molar_odo, id_pac_fk, id_fun_fk)
VALUES
('2024-01-01', 'Bom', 'Ruim', 'Bom', 'Bom', 'Bom', 'Ótimo', 'Ótimo', 'Bom', 6, 1),
('2024-01-05', 'Médio', 'Péssimo', 'Médio', 'Ruim', 'Médio', 'Médio', 'Bom', 'Ruim', 7, 2),
('2024-01-10', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 8, 3),
('2024-01-12', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 9, 4),
('2024-01-15', 'Médio', 'Bom', 'Ótimo', 'Ótimo', 'Bom', 'Médio', 'Bom', 'Médio', 10, 5),
('2024-01-20', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Péssimo', 'Ruim', 11, 1),
('2024-01-25', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 12, 2),
('2024-01-30', 'Ótimo', 'Ótimo', 'Bom', 'Médio', 'Bom', 'Ótimo', 'Ótimo', 'Bom', 13, 3),
('2024-02-01', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 14, 4),
('2024-02-03', 'Médio', 'Bom', 'Bom', 'Bom', 'Médio', 'Bom', 'Médio', 'Bom', 15, 5),
('2024-02-06', 'Bom', 'Ótimo', 'Ótimo', 'Ótimo', 'Bom', 'Bom', 'Ótimo', 'Ótimo', 16, 1),
('2024-02-09', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Péssimo', 'Ruim', 17, 2),
('2024-02-12', 'Médio', 'Médio', 'Bom', 'Bom', 'Bom', 'Médio', 'Médio', 'Bom', 18, 3),
('2024-02-15', 'Bom', 'Bom', 'Médio', 'Médio', 'Bom', 'Bom', 'Médio', 'Bom', 19, 4),
('2024-02-17', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 20, 5),
('2024-02-20', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 21, 1),
('2024-02-23', 'Ótimo', 'Ótimo', 'Bom', 'Bom', 'Bom', 'Bom', 'Ótimo', 'Bom', 22, 2),
('2024-02-26', 'Péssimo', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Péssimo', 'Ruim', 'Péssimo', 23, 3),
('2024-03-01', 'Médio', 'Médio', 'Médio', 'Médio', 'Médio', 'Médio', 'Médio', 'Médio', 24, 4),
('2024-03-05', 'Ruim', 'Ruim', 'Bom', 'Bom', 'Ruim', 'Bom', 'Bom', 'Ruim', 25, 5),
('2024-03-10', 'Bom', 'Ótimo', 'Ótimo', 'Ótimo', 'Bom', 'Ótimo', 'Ótimo', 'Bom', 26, 1),
('2024-03-15', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 27, 2),
('2024-03-18', 'Bom', 'Médio', 'Médio', 'Médio', 'Bom', 'Médio', 'Bom', 'Médio', 28, 3),
('2024-03-22', 'Médio', 'Médio', 'Bom', 'Bom', 'Médio', 'Bom', 'Bom', 'Médio', 29, 4),
('2024-03-26', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 30, 5),
('2024-04-01', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 31, 1),
('2024-04-05', 'Médio', 'Ótimo', 'Bom', 'Médio', 'Bom', 'Ótimo', 'Bom', 'Bom', 32, 2),
('2024-04-10', 'Péssimo', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Ruim', 33, 3),
('2024-04-15', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 'Bom', 34, 4),
('2024-04-20', 'Ruim', 'Péssimo', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Ruim', 'Péssimo', 35, 5);


create table Sala (
id_sal int primary key auto_increment,
nome_sal varchar (301),
descricao_sal varchar (1001),
numero_cadeiras_procedimento_sal int,
tipo_sal varchar (301)
);

insert into Sala values (null, 'Sala 1', 'Sala Grande, com maca preparada para cirurgias', 2, 'Cirurgia');
insert into Sala values (null, 'Sala 2', 'Sala pequena, apenas para avaliação', 1, 'Avaliação');
insert into Sala values (null, 'Sala 3', 'Sala pequena, para anamnese com mesa e cadeira', 1, 'Anamnese');
insert into Sala values (null, 'Sala 4', 'Sala média, para atendimentos não tão complicados', 1, 'Atendimentos');
insert into Sala values (null, 'Sala 5', 'Sala grande, para cirurgias de longo periodo', 3, 'Cirurgia');

create table Caixa (
id_cai integer primary key auto_increment,
data_abertura_cai date not null,
data_fechamento_cai date,
saldo_inicial_cai double not null,
troco_cai double,
valor_creditos_cai double,
valor_debitos_cai double,
saldo_final_cai double,
status_cai varchar (100) not null
);

insert into Caixa values (null, '2024-08-19', '2024-08-20', 0, 100.00, 500.00, 0, 600.00, 'fechado');
insert into Caixa values (null, '2024-08-20', null, 0, 0.00, 0, 0, 0, 'aberto');
INSERT INTO Caixa (
  data_abertura_cai, data_fechamento_cai, saldo_inicial_cai, troco_cai,
  valor_creditos_cai, valor_debitos_cai, saldo_final_cai, status_cai
)
VALUES
('2024-08-21', '2024-08-21', 0, 50.00, 300.00, 50.00, 300.00, 'fechado'),
('2024-08-22', '2024-08-22', 0, 100.00, 400.00, 100.00, 400.00, 'fechado'),
('2024-08-23', '2024-08-23', 0, 100.00, 600.00, 200.00, 500.00, 'fechado'),
('2024-08-24', null, 0, 0.00, 0, 0, 0, 'aberto'),
('2024-08-25', '2024-08-25', 0, 100.00, 1000.00, 250.00, 850.00, 'fechado'),
('2024-08-26', '2024-08-26', 0, 50.00, 200.00, 20.00, 230.00, 'fechado'),
('2024-08-27', null, 0, 0.00, 0, 0, 0, 'aberto'),
('2024-08-28', '2024-08-28', 0, 80.00, 750.00, 180.00, 650.00, 'fechado'),
('2024-08-29', '2024-08-29', 0, 90.00, 500.00, 50.00, 540.00, 'fechado'),
('2024-08-30', '2024-08-30', 0, 120.00, 800.00, 100.00, 820.00, 'fechado'),
('2024-08-31', null, 0, 0.00, 0, 0, 0, 'aberto'),
('2024-09-01', '2024-09-01', 0, 100.00, 600.00, 120.00, 580.00, 'fechado'),
('2024-09-02', '2024-09-02', 0, 70.00, 350.00, 30.00, 390.00, 'fechado'),
('2024-09-03', null, 0, 0.00, 0, 0, 0, 'aberto'),
('2024-09-04', '2024-09-04', 0, 90.00, 700.00, 300.00, 490.00, 'fechado'),
('2024-09-05', '2024-09-05', 0, 60.00, 450.00, 100.00, 410.00, 'fechado'),
('2024-09-06', null, 0, 0.00, 0, 0, 0, 'aberto'),
('2024-09-07', '2024-09-07', 0, 110.00, 900.00, 400.00, 610.00, 'fechado'),
('2024-09-08', '2024-09-08', 0, 100.00, 1000.00, 200.00, 900.00, 'fechado'),
('2024-09-09', null, 0, 0.00, 0, 0, 0, 'aberto');


create table Fornecedor (
id_for int primary key auto_increment,
razao_social_for varchar (300),
nome_fantasia_for varchar (300),
cnpj_for varchar (300),
endereco_for varchar (300),
contato_for varchar (100)
);

insert into Fornecedor values (null, 'Maitê e Kauê Manutenções ME', 'MM Ar Condicionado', '39.065.846/0001-45', 'Avenida Alice Arouca', '(11) 2864-0522');
insert into Fornecedor values (null, 'Raimunda e Enrico Assessoria Jurídica Ltda', 'Raen Acessoria', '90.964.459/0001-06', 'Boulevard São Caetano', '1129044950');
insert into Fornecedor values (null, 'Energisa LTDA', 'Energisa', '14229315000110', 'Rua Luiz Angeloni', 'cobranca@ruanesilvanapaesedocesme.com.br');
insert into Fornecedor values (null, 'Iago e Emanuel Advocacia ME', 'Ima Advocacia', '43615493000187', 'Rua Josefina Cinci Ragaini', '1129115129');
insert into Fornecedor values (null, 'CAERD LTDA', 'Caerd Agua e Esgoto', '45926554000152', 'Viela Lagoa Azul', '1139917440');
INSERT INTO Fornecedor (
  razao_social_for, nome_fantasia_for, cnpj_for, endereco_for, contato_for
)
VALUES
('Odonto Supply Ltda', 'OdontoPlus', '10.123.456/0001-99', 'Rua das Hortênsias, 300', '(11) 99888-7766'),
('BioMed Produtos Hospitalares Ltda', 'BioMedix', '20.234.567/0001-88', 'Av. Brasil, 1010', '(21) 92222-1122'),
('Dental Clean Com. de Produtos', 'DentalClean', '30.345.678/0001-77', 'Rua São João, 222', '(31) 93333-4455'),
('HigiClin Distribuidora Ltda', 'HigiClin', '40.456.789/0001-66', 'Rua Tiradentes, 123', '(41) 94444-8899'),
('Odontomax Fornecimentos Ltda', 'Odontomax', '50.567.890/0001-55', 'Rua Dom Pedro I, 321', '(51) 95555-2233'),
('LabTech Produtos Médicos', 'LabTech', '60.678.901/0001-44', 'Alameda Santos, 456', '(61) 96666-3344'),
('Pharma Dental Suprimentos', 'PharmaDent', '70.789.012/0001-33', 'Rua das Flores, 98', '(71) 97777-5566'),
('DentalMais Ltda', 'DentalMais', '80.890.123/0001-22', 'Rua 25 de Março, 456', '(81) 98888-6677'),
('ProTech Saúde Ltda', 'ProTech Saúde', '91.901.234/0001-11', 'Avenida Saúde, 123', '(91) 99999-7788'),
('UniMed Distribuidora Médica', 'UniMedMed', '12.012.345/0001-00', 'Rua Nova Esperança, 200', '(62) 91111-8899'),
('Total Clean Soluções', 'TotalClean', '13.543.210/0001-01', 'Rua A, nº 10', '(11) 98989-1234'),
('MaxMed Distribuidora', 'MaxMed', '14.654.321/0001-02', 'Rua B, nº 11', '(11) 98888-2345'),
('Dental Soft Produtos', 'DentalSoft', '15.765.432/0001-03', 'Rua C, nº 12', '(11) 97777-3456'),
('Odonto Brasil Fornecimentos', 'OdontoBR', '16.876.543/0001-04', 'Rua D, nº 13', '(11) 96666-4567'),
('Distribuidora São Lucas', 'São Lucas Materiais', '17.987.654/0001-05', 'Rua E, nº 14', '(11) 95555-5678'),
('Nobre Saúde e Higiene', 'Nobre Saúde', '18.098.765/0001-06', 'Rua F, nº 15', '(11) 94444-6789'),
('Mais Odonto Distribuidora', 'MaisOdonto', '19.109.876/0001-07', 'Rua G, nº 16', '(11) 93333-7890'),
('Clean e Cia Produtos', 'Clean&Cia', '20.210.987/0001-08', 'Rua H, nº 17', '(11) 92222-8901'),
('Central Saúde Comércio', 'Central Saúde', '21.321.098/0001-09', 'Rua I, nº 18', '(11) 91111-9012'),
('Distribuidora Vital Ltda', 'Vital Saúde', '22.432.109/0001-10', 'Rua J, nº 19', '(11) 90000-0123');

create table Despesa (
id_des integer primary key auto_increment,
descricao_des varchar (200),
valor_des double,
data_des date,
numero_documento_des varchar (300),
id_for_fk int,
foreign key (id_for_fk) references fornecedor (id_for)
);

insert into Despesa values (null, 'Conta de agua de jan/2022', 150.50, '2022-01-31', '212312131311', 5);
insert into Despesa values (null, 'Conta de luz de fev/2022', 550.90, '2022-02-25', '485445646777', 3);
insert into Despesa values (null, 'Conta de luz de mar/2022', 550.90, '2022-02-25', '312312331323', 3);
insert into Despesa values (null, 'Manutencao no ar condicionado Sala 1', 300.00, '2022-08-25', '12333333', 1);
INSERT INTO Despesa (descricao_des, valor_des, data_des, numero_documento_des, id_for_fk)
VALUES
('Conta de água de fev/2022', 145.75, '2022-02-28', 'DOC001', 5),
('Conta de luz de abr/2022', 590.20, '2022-04-25', 'DOC002', 3),
('Compra de papel higiênico', 120.00, '2022-03-10', 'DOC003', 6),
('Compra de luvas descartáveis', 340.00, '2022-03-15', 'DOC004', 8),
('Serviço de jardinagem externa', 275.00, '2022-03-22', 'DOC005', 10),
('Compra de material odontológico', 870.00, '2022-04-05', 'DOC006', 11),
('Troca de lâmpadas e manutenção elétrica', 450.00, '2022-04-12', 'DOC007', 4),
('Compra de materiais de escritório', 280.00, '2022-04-18', 'DOC008', 13),
('Pagamento de internet mensal - maio/2022', 200.00, '2022-05-01', 'DOC009', 14),
('Conta de água de jun/2022', 135.40, '2022-06-30', 'DOC010', 5),
('Reparo no encanamento', 310.00, '2022-07-15', 'DOC011', 7),
('Compra de máscaras cirúrgicas', 390.00, '2022-07-20', 'DOC012', 12),
('Conta de luz de jul/2022', 600.10, '2022-07-25', 'DOC013', 3),
('Conta de água de ago/2022', 155.00, '2022-08-30', 'DOC014', 5),
('Reparo na impressora', 230.00, '2022-09-10', 'DOC015', 2),
('Limpeza especializada mensal', 480.00, '2022-09-25', 'DOC016', 9),
('Compra de álcool em gel', 215.00, '2022-10-02', 'DOC017', 6),
('Conta de luz de out/2022', 565.00, '2022-10-28', 'DOC018', 3),
('Manutenção em equipamento odontológico', 920.00, '2022-11-10', 'DOC019', 1),
('Compra de papel A4', 150.00, '2022-11-20', 'DOC020', 13);

create table Agenda (
id_age int primary key auto_increment,
data_hora_age datetime,
tipo_age varchar (301),
id_pac_fk int not null,
id_fun_fk int,
id_sal_fk int,
foreign key (id_pac_fk) references Paciente (id_pac),
foreign key (id_fun_fk) references Funcionario (id_fun),
foreign key (id_sal_fk) references Sala (id_sal)
);

insert into Agenda values (null, '2022-10-10 13:30:00', 'Procedimento', 1, 2, 2);
insert into Agenda values (null, '2022-10-11 13:30:00','Avaliação', 2, 5, 1);
insert into Agenda values (null, '2022-10-12 13:30:00','Avaliação', 3, 1, 4);
insert into Agenda values (null, '2022-10-13 13:30:00','Procedimento', 4, 2, 2);
insert into Agenda values (null, '2022-10-14 13:30:00','Procedimento', 5, 5, 3);
INSERT INTO Agenda (data_hora_age, tipo_age, id_pac_fk, id_fun_fk, id_sal_fk) VALUES
('2022-10-15 08:00:00', 'Avaliação', 6, 1, 1),
('2022-10-15 09:00:00', 'Retorno', 7, 2, 2),
('2022-10-15 10:30:00', 'Procedimento', 8, 3, 3),
('2022-10-16 11:00:00', 'Avaliação', 9, 1, 4),
('2022-10-16 13:30:00', 'Urgência', 10, 4, 2),
('2022-10-17 08:30:00', 'Procedimento', 11, 2, 1),
('2022-10-17 09:45:00', 'Retorno', 12, 3, 3),
('2022-10-18 14:00:00', 'Avaliação', 13, 1, 2),
('2022-10-19 15:15:00', 'Urgência', 14, 5, 1),
('2022-10-19 16:30:00', 'Procedimento', 15, 2, 2),
('2022-10-20 08:15:00', 'Retorno', 16, 3, 3),
('2022-10-20 09:00:00', 'Avaliação', 17, 4, 1),
('2022-10-20 10:00:00', 'Urgência', 18, 1, 4),
('2022-10-21 11:30:00', 'Procedimento', 19, 2, 2),
('2022-10-21 13:45:00', 'Retorno', 20, 5, 3),
('2022-10-21 15:00:00', 'Avaliação', 21, 1, 1),
('2022-10-22 09:30:00', 'Procedimento', 22, 4, 2),
('2022-10-22 11:00:00', 'Urgência', 23, 2, 4),
('2022-10-23 10:15:00', 'Retorno', 24, 3, 1),
('2022-10-23 11:30:00', 'Procedimento', 25, 5, 3),
('2022-10-24 08:00:00', 'Avaliação', 26, 1, 1),
('2022-10-24 10:00:00', 'Procedimento', 27, 2, 2),
('2022-10-24 14:00:00', 'Retorno', 28, 3, 3),
('2022-10-25 09:00:00', 'Urgência', 29, 4, 4),
('2022-10-25 10:30:00', 'Avaliação', 30, 5, 1),
('2022-10-26 11:45:00', 'Procedimento', 31, 2, 2),
('2022-10-26 13:00:00', 'Retorno', 32, 1, 3),
('2022-10-26 14:30:00', 'Avaliação', 33, 3, 4),
('2022-10-27 08:15:00', 'Procedimento', 34, 4, 1),
('2022-10-27 09:30:00', 'Urgência', 35, 5, 2),
('2022-10-27 10:45:00', 'Avaliação', 6, 1, 3),
('2022-10-28 11:15:00', 'Retorno', 7, 2, 4),
('2022-10-28 13:30:00', 'Procedimento', 8, 3, 1),
('2022-10-28 14:45:00', 'Urgência', 9, 4, 2),
('2022-10-29 09:00:00', 'Retorno', 10, 5, 3),
('2022-10-29 10:00:00', 'Avaliação', 11, 1, 4),
('2022-10-29 11:30:00', 'Procedimento', 12, 2, 2),
('2022-10-30 08:00:00', 'Urgência', 13, 3, 1),
('2022-10-30 09:45:00', 'Avaliação', 14, 4, 3),
('2022-10-30 11:00:00', 'Procedimento', 15, 5, 4);

create table Consulta (
id_con int primary key auto_increment,
valor_con double,
data_con date,
tempo_con time,
forma_pagamento_con varchar (300),
id_pac_fk int,
id_odo_fk int,
id_fun_fk int,
id_sal_fk int,
foreign key (id_pac_fk) references Paciente (id_pac),
foreign key (id_odo_fk) references Odontograma (id_odo),
foreign key (id_fun_fk) references Funcionario (id_fun),
foreign key (id_sal_fk) references Sala (id_sal)
);

insert into Consulta values (null, 150, '2022-09-10', '00:30:00', 'A vista',  1, 2, 1, 1);
insert into Consulta values (null, 900, '2022-10-10', '00:30:00', 'Parcelado - 2X', 2, 1, 2, 3);
insert into Consulta values (null, 1010, '2022-10-11', '01:30:00', 'Parcelado - 3X', 3, 4, 1, 2);
insert into Consulta values (null, 951.10, '2022-10-10', '01:00:00', 'Vista', 4, 3, 4, 2);
insert into Consulta values (null, 8100.55, '2022-10-10', '01:30:00', 'Parcelado - 4x', 5, 4, 3, 5);
INSERT INTO Consulta (valor_con, data_con, tempo_con, forma_pagamento_con, id_pac_fk, id_odo_fk, id_fun_fk, id_sal_fk) VALUES
(200.00, '2022-10-15', '00:45:00', 'A vista', 6, 5, 2, 1),
(350.00, '2022-10-16', '01:00:00', 'Parcelado - 2X', 7, 6, 3, 2),
(150.00, '2022-10-17', '00:30:00', 'Pix', 8, 7, 1, 3),
(780.00, '2022-10-18', '01:30:00', 'Cartão de Crédito', 9, 8, 4, 4),
(500.00, '2022-10-19', '01:00:00', 'Parcelado - 3X', 10, 9, 5, 2),
(120.00, '2022-10-20', '00:30:00', 'Dinheiro', 11, 10, 1, 1),
(980.00, '2022-10-21', '01:30:00', 'Cartão de Débito', 12, 11, 2, 3),
(260.00, '2022-10-22', '01:00:00', 'Parcelado - 2X', 13, 12, 3, 4),
(670.00, '2022-10-23', '00:45:00', 'Pix', 14, 13, 4, 1),
(455.00, '2022-10-24', '01:15:00', 'Cartão de Crédito', 15, 14, 5, 2),
(180.00, '2022-10-25', '00:30:00', 'Dinheiro', 16, 15, 1, 3),
(320.00, '2022-10-26', '01:00:00', 'A vista', 17, 16, 2, 4),
(750.00, '2022-10-27', '01:30:00', 'Cartão de Débito', 18, 17, 3, 1),
(300.00, '2022-10-28', '00:45:00', 'Parcelado - 3X', 19, 18, 4, 2),
(400.00, '2022-10-29', '01:00:00', 'Cartão de Crédito', 20, 19, 5, 3),
(990.00, '2022-10-30', '01:30:00', 'Pix', 21, 20, 1, 4),
(610.00, '2022-11-01', '01:15:00', 'A vista', 22, 21, 2, 1),
(520.00, '2022-11-02', '01:00:00', 'Cartão de Débito', 23, 22, 3, 2),
(290.00, '2022-11-03', '00:45:00', 'Parcelado - 2X', 24, 23, 4, 3),
(670.00, '2022-11-04', '01:30:00', 'Cartão de Crédito', 25, 24, 5, 4),
(220.00, '2022-11-05', '00:30:00', 'Dinheiro', 26, 25, 1, 5),
(890.00, '2022-11-06', '01:15:00', 'Parcelado - 4x', 27, 26, 2, 2),
(430.00, '2022-11-07', '01:00:00', 'Pix', 28, 27, 3, 3),
(340.00, '2022-11-08', '00:45:00', 'A vista', 29, 28, 4, 4),
(580.00, '2022-11-09', '01:30:00', 'Cartão de Crédito', 30, 29, 5, 1),
(110.00, '2022-11-10', '00:30:00', 'Dinheiro', 31, 30, 1, 2),
(210.00, '2022-11-11', '00:45:00', 'Cartão de Débito', 32, 31, 2, 3),
(660.00, '2022-11-12', '01:30:00', 'Parcelado - 3X', 33, 32, 3, 4),
(870.00, '2022-11-13', '01:15:00', 'Cartão de Crédito', 34, 33, 4, 5),
(780.00, '2022-11-14', '01:00:00', 'Pix', 35, 34, 5, 1),
(190.00, '2022-11-15', '00:30:00', 'A vista', 6, 35, 1, 2),
(410.00, '2022-11-16', '01:00:00', 'Dinheiro', 7, 1, 2, 3),
(555.00, '2022-11-17', '01:30:00', 'Parcelado - 2X', 8, 2, 3, 4),
(670.00, '2022-11-18', '01:15:00', 'Cartão de Crédito', 9, 3, 4, 5),
(300.00, '2022-11-19', '01:00:00', 'Pix', 10, 4, 5, 1),
(230.00, '2022-11-20', '00:45:00', 'Dinheiro', 11, 5, 1, 2),
(720.00, '2022-11-21', '01:30:00', 'Parcelado - 3X', 12, 6, 2, 3),
(350.00, '2022-11-22', '01:00:00', 'Cartão de Débito', 13, 7, 3, 4),
(480.00, '2022-11-23', '00:45:00', 'A vista', 14, 8, 4, 5),
(600.00, '2022-11-24', '01:30:00', 'Pix', 15, 9, 5, 1),
(850.00, '2022-11-25', '01:00:00', 'Cartão de Crédito', 16, 10, 1, 2),
(270.00, '2022-11-26', '00:30:00', 'Dinheiro', 17, 11, 2, 3),
(390.00, '2022-11-27', '01:15:00', 'Parcelado - 4x', 18, 12, 3, 4),
(510.00, '2022-11-28', '01:00:00', 'Pix', 19, 13, 4, 5),
(440.00, '2022-11-29', '01:00:00', 'Cartão de Débito', 20, 14, 5, 1),
(210.00, '2022-11-30', '00:45:00', 'A vista', 21, 15, 1, 2),
(999.99, '2022-12-01', '01:30:00', 'Parcelado - 3X', 22, 16, 2, 3);

create table Material (
id_mat int primary key auto_increment,
nome_mat varchar (300),
descricao_mat varchar (1000),
estoque_mat int,
valor_mat double,
tipo_mat varchar (300)
);

insert into Material values (null, 'Massa para aparalho', 'Massa protetora gengitiva', 50, 4540, 'Aparelhos');
insert into Material values (null, 'Borracha para aparalho', 'Borracha para aparaelho', 540, 1150, 'Aparelhos');
insert into Material values (null, 'Fio para aparaelho', 'Fio para aparelho', 1000, 1450, 'Aparelhos');
insert into Material values (null, 'Bracket para aparaelho', 'Bracket para fixação do aparelho', 500, 1150, 'Aparelhos');
insert into Material values (null, 'Espelho odontologico', 'Espelho para visualização', 5, 550, 'Material');
insert into Material values (null, 'Resina Branca 45b', 'Resina para obturação', 500, 5, 'Material');
insert into Material values (null, 'Resina Branca 20a', 'Resina para obturação', 500, 5, 'Material');
insert into Material values (null, 'Resina Prata 10e', 'Resina para obturação', 500, 5, 'Material');
INSERT INTO Material (nome_mat, descricao_mat, estoque_mat, valor_mat, tipo_mat) VALUES
('Algodão Dental', 'Algodão para absorção de saliva e limpeza durante os procedimentos', 300, 50.00, 'Material'),
('Sugador de Saliva', 'Equipamento usado para sucção de saliva durante consultas', 100, 320.00, 'Instrumento'),
('Luva de Látex M', 'Luva de proteção tamanho M', 1000, 0.80, 'EPI'),
('Luva de Látex G', 'Luva de proteção tamanho G', 800, 0.85, 'EPI'),
('Máscara Cirúrgica', 'Máscara de proteção descartável', 2000, 0.70, 'EPI'),
('Anestésico Lidocaína', 'Anestésico local para procedimentos odontológicos', 200, 12.50, 'Medicamento'),
('Cimento de Zinco', 'Material restaurador provisório', 100, 40.00, 'Material'),
('Fita de Teflon', 'Usada para isolamento de áreas em procedimentos', 250, 3.50, 'Material'),
('Clorexidina 0,12%', 'Antisséptico bucal', 150, 18.00, 'Higiene Bucal'),
('Cureta Periodontal', 'Instrumento para raspagem e limpeza subgengival', 30, 120.00, 'Instrumento');

create table Compra (
id_com int primary key auto_increment,
data_com date,
valor_com double,
id_fun_fk int,
id_for_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun),
foreign key (id_for_fk) references Fornecedor (id_for)
);

insert into Compra values (null, '2022-11-15', 1249.12, 2, 1);
insert into Compra values (null, '2012-02-28', 15580.95, 2, 1);
insert into Compra values (null, '2021-10-01', 102.95, 2, 1);
insert into Compra values (null, '2022-06-25', 50.95, 2, 1);
insert into Compra values (null, '2010-02-15', 580.95, 2, 1);
INSERT INTO Compra VALUES 
(6, '2022-07-27', 22244.25, 5, 15),
(7, '2022-04-23', 13099.55, 3, 10),
(8, '2022-10-20', 13628.45, 3, 23),
(9, '2022-03-22', 10831.99, 4, 5),
(10, '2022-07-27', 13988.92, 3, 3),
(11, '2022-08-11', 10456.78, 3, 17),
(12, '2022-06-07', 14661.61, 2, 3),
(13, '2022-05-03', 12812.93, 5, 14),
(14, '2022-11-20', 13321.91, 4, 4),
(15, '2022-04-25', 11490.32, 1, 13);

create table Material_Compra (
id_mat_com int primary key auto_increment,
quant_mat_com float,
valor_mat_com float,
id_com_fk int,
id_mat_fk int,
foreign key (id_com_fk) references Compra (id_com),
foreign key (id_mat_fk) references Material (id_mat)
);

insert into Material_Compra values (null, 100, 1.5, 2, 5);
insert into Material_Compra values (null, 200, 2.5, 1, 3);
insert into Material_Compra values (null, 30, 10.8, 1, 4);
insert into Material_Compra values (null, 10, 15.95, 4, 2);
insert into Material_Compra values (null, 500, 1.0, 5, 8);
INSERT INTO Material_Compra VALUES 
(null, 97, 38.58, 6, 5),
(null, 53, 12.11, 6, 17),
(null, 65, 19.03, 6, 11),
(null, 89, 40.13, 6, 14),
(null, 32, 3.59, 6, 4),
(null, 150, 5.49, 6, 10),
(null, 120, 7.89, 6, 8),
(null, 180, 2.99, 6, 9),
(null, 60, 16.10, 6, 1),
(null, 40, 22.50, 6, 6);
INSERT INTO Material_Compra VALUES 
(null, 110, 7.45, 7, 1),
(null, 80, 5.99, 7, 6),
(null, 200, 2.99, 7, 9),
(null, 130, 8.99, 7, 12),
(null, 60, 5.59, 7, 15),
(null, 70, 12.50, 7, 2),
(null, 150, 3.80, 7, 3),
(null, 110, 19.00, 7, 13),
(null, 100, 15.60, 7, 17),
(null, 120, 4.90, 7, 18);
INSERT INTO Material_Compra VALUES 
(null, 140, 8.45, 8, 2),
(null, 90, 14.99, 8, 6),
(null, 70, 3.60, 8, 1),
(null, 110, 5.75, 8, 3),
(null, 50, 12.20, 8, 9),
(null, 120, 10.25, 8, 10),
(null, 100, 2.99, 8, 7),
(null, 160, 13.50, 8, 4),
(null, 180, 6.60, 8, 5),
(null, 140, 11.10, 8, 8);
INSERT INTO Material_Compra VALUES 
(null, 200, 5.60, 9, 3),
(null, 180, 15.10, 9, 6),
(null, 220, 8.25, 9, 2),
(null, 160, 14.45, 9, 12),
(null, 130, 5.50, 9, 8),
(null, 100, 2.80, 9, 5),
(null, 150, 7.00, 9, 13),
(null, 120, 9.99, 9, 1),
(null, 180, 10.75, 9, 4),
(null, 70, 18.00, 9, 9);
INSERT INTO Material_Compra VALUES 
(null, 110, 6.50, 10, 15),
(null, 100, 9.75, 10, 18),
(null, 150, 13.20, 10, 1),
(null, 80, 5.99, 10, 11),
(null, 120, 12.80, 10, 17),
(null, 60, 7.45, 10, 3),
(null, 50, 8.60, 10, 5),
(null, 100, 10.50, 10, 8),
(null, 140, 16.99, 10, 7),
(null, 150, 4.75, 10, 2);
INSERT INTO Material_Compra VALUES 
(null, 90, 12.99, 11, 6),
(null, 120, 9.80, 11, 14),
(null, 110, 5.99, 11, 3),
(null, 140, 15.50, 11, 4),
(null, 130, 7.60, 11, 5),
(null, 80, 3.75, 11, 9),
(null, 70, 8.20, 11, 12),
(null, 100, 10.99, 11, 8),
(null, 60, 6.40, 11, 2),
(null, 50, 12.25, 11, 10);
INSERT INTO Material_Compra VALUES 
(null, 200, 8.50, 12, 5),
(null, 190, 6.99, 12, 3),
(null, 170, 11.99, 12, 6),
(null, 160, 13.80, 12, 10),
(null, 120, 9.90, 12, 2),
(null, 100, 15.00, 12, 4),
(null, 150, 12.60, 12, 9),
(null, 80, 5.75, 12, 7),
(null, 130, 16.90, 12, 13),
(null, 110, 14.75, 12, 11);
INSERT INTO Material_Compra VALUES 
(null, 60, 14.50, 13, 15),
(null, 80, 7.80, 13, 18),
(null, 100, 5.50, 13, 12),
(null, 120, 11.00, 13, 1),
(null, 140, 9.99, 13, 3),
(null, 50, 6.99, 13, 17),
(null, 130, 18.50, 13, 8),
(null, 150, 13.30, 13, 7),
(null, 90, 10.90, 13, 14),
(null, 70, 7.45, 13, 16);
INSERT INTO Material_Compra VALUES 
(null, 110, 9.99, 14, 5),
(null, 130, 6.20, 14, 3),
(null, 160, 11.60, 14, 9),
(null, 120, 10.50, 14, 11),
(null, 180, 14.30, 14, 1),
(null, 70, 15.99, 14, 10),
(null, 140, 13.75, 14, 8),
(null, 100, 5.00, 14, 13),
(null, 150, 12.80, 14, 7),
(null, 90, 11.40, 14, 4);
INSERT INTO Material_Compra VALUES 
(null, 160, 10.50, 15, 2),
(null, 130, 9.99, 15, 6),
(null, 100, 6.80, 15, 3),
(null, 110, 8.50, 15, 7),
(null, 80, 7.40, 15, 10),
(null, 120, 12.20, 15, 5),
(null, 70, 5.75, 15, 1),
(null, 90, 9.50, 15, 4),
(null, 140, 16.25, 15, 8),
(null, 150, 13.00, 15, 9);

create table recebimento (
id_rec integer not null primary key auto_increment,
data_vencimento_rec date,
valor_rec double,
parcela_rec varchar(100),
status_rec varchar (100),
forma_recebimento_rec varchar (100),
data_recebimento_rec date,
id_fun_fk integer,
id_cai_fk integer,
id_con_fk integer not null,
foreign key (id_fun_fk) references funcionario (id_fun),
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_con_fk) references consulta (id_con)
);

insert into recebimento values (null, '2022-01-14', 454.00, '1/1', 'Pago', 'Dinheiro', '2022-02-14', 2, 1, 1);
insert into recebimento values (null, '2022-01-20', 4546.00, '1/2', 'Pago', 'Dinheiro', '2022-02-20', 2, 1, 2);
insert into recebimento values (null, '2022-01-30', 1234.79, '2/2', 'Pago', 'Cartão de Crédito', '2022-03-30', 2, 1, 3);
insert into recebimento values (null, '2022-02-01', 785.50, '1/3', 'Pago', 'Dinheiro', '2022-03-01', 3, 2, 4);
insert into recebimento values (null, '2022-02-10', 1500.00, '1/4', 'Pago', 'Cartão de Crédito', '2022-03-10', 3, 2, 5);
insert into recebimento values (null, '2022-02-15', 322.80, '1/5', 'Pago', 'Cheque', '2022-03-15', 4, 2, 6);
insert into recebimento values (null, '2022-02-20', 2750.00, '1/6', 'Pago', 'Dinheiro', '2022-03-20', 5, 3, 7);
insert into recebimento values (null, '2022-02-25', 1125.60, '2/3', 'Pago', 'Cartão de Crédito', '2022-03-25', 5, 3, 8);
insert into recebimento values (null, '2022-03-01', 820.40, '1/7', 'Pago', 'Dinheiro', '2022-04-01', 6, 4, 9);
insert into recebimento values (null, '2022-03-05', 1245.75, '2/7', 'Pago', 'Cheque', '2022-04-05', 6, 4, 10);
insert into recebimento values (null, '2022-03-10', 2150.00, '1/8', 'Pago', 'Cartão de Crédito', '2022-04-10', 7, 5, 11);
insert into recebimento values (null, '2022-03-15', 378.90, '1/9', 'Pago', 'Dinheiro', '2022-04-15', 7, 5, 12);
insert into recebimento values (null, '2022-03-20', 2145.40, '1/10', 'Pago', 'Cheque', '2022-04-20', 8, 6, 13);
insert into recebimento values (null, '2022-03-25', 645.60, '1/11', 'Pago', 'Cartão de Crédito', '2022-04-25', 8, 6, 14);
insert into recebimento values (null, '2022-03-30', 1550.00, '2/5', 'Pago', 'Dinheiro', '2022-04-30', 8, 6, 15);
insert into recebimento values (null, '2022-04-01', 1475.00, '1/12', 'Pago', 'Cheque', '2022-05-01', 9, 7, 16);
insert into recebimento values (null, '2022-04-05', 1680.25, '1/13', 'Pago', 'Cartão de Crédito', '2022-05-05', 10, 8, 17);
insert into recebimento values (null, '2022-04-10', 1950.30, '2/6', 'Pago', 'Dinheiro', '2022-05-10', 10, 8, 18);
insert into recebimento values (null, '2022-04-15', 2450.10, '1/14', 'Pago', 'Cheque', '2022-05-15', 11, 9, 19);
insert into recebimento values (null, '2022-04-20', 1325.50, '2/4', 'Pago', 'Cartão de Crédito', '2022-05-20', 11, 9, 20);
insert into recebimento values (null, '2022-04-25', 1880.00, '1/15', 'Pago', 'Dinheiro', '2022-05-25', 12, 10, 21);
insert into recebimento values (null, '2022-04-30', 2200.75, '1/16', 'Pago', 'Cheque', '2022-05-30', 12, 10, 21);
insert into recebimento values (null, '2022-05-01', 1670.40, '1/17', 'Pago', 'Cartão de Crédito', '2022-06-01', 13, 11, 23);
insert into recebimento values (null, '2022-05-05', 1235.90, '1/18', 'Pago', 'Dinheiro', '2022-06-05', 13, 11, 24);
insert into recebimento values (null, '2022-05-10', 3035.60, '2/5', 'Pago', 'Cheque', '2022-06-10', 14, 12, 25);
insert into recebimento values (null, '2022-05-15', 1556.20, '1/19', 'Pago', 'Cartão de Crédito', '2022-06-15', 14, 12, 26);
insert into recebimento values (null, '2022-05-20', 2135.70, '1/20', 'Pago', 'Dinheiro', '2022-06-20', 15, 13, 27);
insert into recebimento values (null, '2022-05-25', 1900.00, '1/21', 'Pago', 'Cheque', '2022-06-25', 15, 13, 28);
insert into recebimento values (null, '2022-05-30', 1350.80, '2/6', 'Pago', 'Cartão de Crédito', '2022-06-30', 16, 14, 29);
insert into recebimento values (null, '2022-06-01', 1285.50, '1/22', 'Pago', 'Dinheiro', '2022-07-01', 16, 14, 30);
insert into recebimento values (null, '2022-06-05', 1520.30, '1/23', 'Pago', 'Cheque', '2022-07-05', 17, 15, 31);
insert into recebimento values (null, '2022-06-10', 1625.00, '1/24', 'Pago', 'Cartão de Crédito', '2022-07-10', 17, 15, 32);
insert into recebimento values (null, '2022-06-15', 1780.75, '2/7', 'Pago', 'Dinheiro', '2022-07-15', 18, 16, 33);
insert into recebimento values (null, '2022-06-20', 1450.00, '1/25', 'Pago', 'Cheque', '2022-07-20', 18, 16, 34);
insert into recebimento values (null, '2022-06-25', 1895.90, '2/8', 'Pago', 'Cartão de Crédito', '2022-07-25', 5, 17, 35);
insert into recebimento values (null, '2022-06-30', 2155.50, '1/26', 'Pago', 'Dinheiro', '2022-07-30', 10, 17, 36);
insert into recebimento values (null, '2022-07-01', 1990.10, '1/27', 'Pago', 'Cheque', '2022-08-01', 8, 18, 37);
insert into recebimento values (null, '2022-07-05', 2200.60, '1/28', 'Pago', 'Cartão de Crédito', '2022-08-05', 1, 18, 38);
insert into recebimento values (null, '2022-07-10', 1355.50, '2/7', 'Pago', 'Dinheiro', '2022-08-10', 2, 19, 39);
insert into recebimento values (null, '2022-07-15', 1995.75, '1/29', 'Pago', 'Cheque', '2022-08-15', 4, 19, 40);
insert into recebimento values (null, '2022-07-20', 2300.00, '2/8', 'Pago', 'Cartão de Crédito', '2022-08-20', 2, 20, 41);
insert into recebimento values (null, '2022-07-25', 2050.50, '1/30', 'Pago', 'Dinheiro', '2022-08-25', 12, 20, 42);
insert into recebimento values (null, '2022-07-30', 1800.80, '1/31', 'Pago', 'Cheque', '2022-08-30', 12, 21, 43);
insert into recebimento values (null, '2022-08-01', 1265.40, '1/32', 'Pago', 'Cartão de Crédito', '2022-09-01', 3, 21, 44);
insert into recebimento values (null, '2022-08-05', 1345.60, '2/9', 'Pago', 'Dinheiro', '2022-09-05', 4, 22, 45);
insert into recebimento values (null, '2022-08-10', 1670.30, '1/33', 'Pago', 'Cheque', '2022-09-10', 4, 22, 46);
insert into recebimento values (null, '2022-08-15', 1455.00, '2/10', 'Pago', 'Cartão de Crédito', '2022-09-15', 5, 20, 40);
insert into recebimento values (null, '2022-08-20', 1550.90, '1/34', 'Pago', 'Dinheiro', '2022-09-20', 5, 3, 48);
insert into recebimento values (null, '2022-08-25', 1620.00, '2/11', 'Pago', 'Cheque', '2022-09-25', 6, 2, 49);
insert into recebimento values (null, '2022-08-30', 1380.60, '1/35', 'Pago', 'Cartão de Crédito', '2022-09-30', 16, 4, 50);

create table pagamento (
id_pag integer primary key auto_increment,
data_vencimento_pag date,
valor_pag float,
parcela_pag varchar (100),
status_pag varchar (100),
forma_pagamento_pag varchar (100),
data_pagamento_pag date,
id_fun_fk integer,
id_cai_fk integer,
id_des_fk integer,
id_com_fk integer,
foreign key (id_fun_fk) references funcionario (id_fun),
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_des_fk) references despesa (id_des),
foreign key (id_com_fk) references compra (id_com)
);

insert into pagamento values (null, '2022-09-01', 4544.77, '1/1', 'Pago', 'dinheiro', '2022-10-01', 2, 1, null, 1);
insert into pagamento values (null, '2022-09-01', 787.99, '1/1', 'Pago', 'dinheiro', '2022-10-01', 2, 2, null, 2);
insert into pagamento values (null, '2022-09-01', 477.99, '1/1', 'Pago', 'dinheiro', '2022-10-01', 2, 1, null, 3);
insert into pagamento values (null, '2022-09-01', 1234.99, '1/1', 'Pago', 'dinheiro', '2022-10-01', 2, 2, null, 4);
insert into pagamento values (null, '2022-09-02', 45.77, '1/1', 'Pago', 'débito conta', '2022-10-01', 2, 2, 1, null);
insert into pagamento values (null, '2022-09-02', 100.90, '1/1', 'Pago', 'débito conta', '2022-10-01', 2, 2, 2, null);
insert into pagamento values (null, '2022-09-02', 1000, '1/1', 'Aberto', null, null, 1, 2, 2, null);
insert into pagamento values (null, '2022-09-05', 567.40, '1/2', 'Pago', 'dinheiro', '2022-10-05', 3, 3, null, 5);
insert into pagamento values (null, '2022-09-05', 1200.50, '1/3', 'Pago', 'cheque', '2022-10-05', 3, 3, null, 6);
insert into pagamento values (null, '2022-09-05', 765.80, '2/2', 'Pago', 'dinheiro', '2022-10-05', 4, 4, null, 7);
insert into pagamento values (null, '2022-09-06', 1225.30, '1/4', 'Pago', 'cartão de crédito', '2022-10-06', 4, 4, null, 8);
insert into pagamento values (null, '2022-09-06', 345.90, '2/3', 'Pago', 'dinheiro', '2022-10-06', 5, 5, null, 9);
insert into pagamento values (null, '2022-09-06', 1500.60, '1/5', 'Pago', 'cheque', '2022-10-06', 5, 5, null, 10);
insert into pagamento values (null, '2022-09-07', 789.99, '1/6', 'Pago', 'dinheiro', '2022-10-07', 6, 6, null, 11);
insert into pagamento values (null, '2022-09-07', 1245.75, '1/7', 'Pago', 'cartão de crédito', '2022-10-07', 6, 6, null, 12);
insert into pagamento values (null, '2022-09-07', 670.30, '2/4', 'Pago', 'dinheiro', '2022-10-07', 7, 7, null, 13);
insert into pagamento values (null, '2022-09-08', 875.60, '1/8', 'Pago', 'cheque', '2022-10-08', 7, 7, null, 14);
insert into pagamento values (null, '2022-09-08', 1850.45, '1/9', 'Pago', 'dinheiro', '2022-10-08', 8, 8, null, 1);
insert into pagamento values (null, '2022-09-08', 512.10, '2/5', 'Pago', 'cartão de crédito', '2022-10-08', 8, 8, null, 6);
insert into pagamento values (null, '2022-09-09', 1325.50, '1/10', 'Pago', 'dinheiro', '2022-10-09', 9, 9, null, 7);
insert into pagamento values (null, '2022-09-09', 850.00, '1/11', 'Pago', 'cheque', '2022-10-09', 9, 9, null, 8);
insert into pagamento values (null, '2022-09-09', 660.25, '2/6', 'Pago', 'cartão de crédito', '2022-10-09', 10, 10, null, 9);
insert into pagamento values (null, '2022-09-10', 490.75, '1/12', 'Pago', 'dinheiro', '2022-10-10', 10, 10, null, 2);
insert into pagamento values (null, '2022-09-10', 1480.60, '1/13', 'Pago', 'cheque', '2022-10-10', 11, 11, null, 1);
insert into pagamento values (null, '2022-09-10', 1220.85, '2/7', 'Pago', 'cartão de crédito', '2022-10-10', 11, 11, null, 2);
insert into pagamento values (null, '2022-09-11', 1155.50, '1/14', 'Pago', 'dinheiro', '2022-10-11', 12, 12, null, 3);
insert into pagamento values (null, '2022-09-11', 990.60, '1/15', 'Pago', 'cheque', '2022-10-11', 12, 12, null, 4);
insert into pagamento values (null, '2022-09-11', 1445.75, '2/8', 'Pago', 'cartão de crédito', '2022-10-11', 13, 13, null, 2);

create table Procedimento (
id_pro int primary key auto_increment,
valor_pro double,
nome_pro varchar (300),
descricao_pro varchar (1000),
tempo_pro time,
tipo_pro varchar (300),
requisitos_pro varchar (300)
);

insert into Procedimento values (null, 150.85, 'Limpeza de dentes infantil', 'Limpeza em todos dentes', '00:15:00', 'Limpeza', 'Nenhum');
insert into Procedimento values (null, 650.85, 'Clareamento de dentes adulto', 'Clareamento em todos dentes', '01:15:00', 'Clareamento', 'Nenhum');
insert into Procedimento values (null, 11150.85, 'Protese dentária nivel 1', 'Protese permanente', '05:15:00', 'Protese', 'Exame sanguineo, eletrocardiograma');
insert into Procedimento values (null, 150.85, 'Aparelho denatário nivel 1', 'Aparelho para os dentes', '01:15:00', 'Aparelho', 'Nenhum');
insert into Procedimento values (null, 150.85, 'Troca de borrachinha', 'Troca das borrachas do aparelho', '00:15:00', 'Aparelho', 'Nenhum');
INSERT INTO Procedimento (valor_pro, nome_pro, descricao_pro, tempo_pro, tipo_pro, requisitos_pro)
VALUES
(250.00, 'Canal', 'Tratamento de canal simples', '00:45:00', 'Endodôntico', 'Raio-X'),
(80.00, 'Limpeza', 'Profilaxia básica', '00:30:00', 'Preventivo', ''),
(500.00, 'Cirurgia de Siso', 'Remoção de siso incluso', '01:30:00', 'Cirúrgico', 'Anestesia local');
insert into Procedimento values (null, 320.00, 'Restaurar Dente', 'Restauração de dentes cariados', '00:40:00', 'Restaurador', 'Nenhum');
insert into Procedimento values (null, 400.00, 'Aparelho Ortodôntico', 'Instalação de aparelho fixo', '02:00:00', 'Ortodontia', 'Exame ortodôntico');
insert into Procedimento values (null, 200.00, 'Tratamento de Gengivite', 'Tratamento de inflamação das gengivas', '00:30:00', 'Periodontia', 'Nenhum');
insert into Procedimento values (null, 750.00, 'Implante Dentário', 'Instalação de implante dentário', '02:30:00', 'Implante', 'Raio-X');
insert into Procedimento values (null, 130.00, 'Consulta de Avaliação', 'Consulta inicial de avaliação dentária', '00:30:00', 'Consulta', 'Nenhum');
insert into Procedimento values (null, 180.00, 'Restauração Estética', 'Restauração dentária com resina composta', '00:45:00', 'Restaurador', 'Nenhum');
insert into Procedimento values (null, 1200.00, 'Implante com Enxerto', 'Instalação de implante com enxerto ósseo', '03:00:00', 'Implante', 'Exame de tomografia');
insert into Procedimento values (null, 50.00, 'Fluoretação', 'Aplicação de flúor para proteção dental', '00:15:00', 'Preventivo', 'Nenhum');
insert into Procedimento values (null, 850.00, 'Cirurgia Periodontal', 'Cirurgia para tratamento das gengivas', '02:00:00', 'Periodontia', 'Raio-X');
insert into Procedimento values (null, 100.00, 'Check-up Odontológico', 'Avaliação detalhada da saúde bucal', '00:30:00', 'Consulta', 'Nenhum');
insert into Procedimento values (null, 210.00, 'Desincrustação Dental', 'Remoção de tártaros e manchas dos dentes', '00:45:00', 'Limpeza', 'Nenhum');
insert into Procedimento values (null, 380.00, 'Tratamento de Canal Completo', 'Tratamento completo de canal', '02:00:00', 'Endodôntico', 'Raio-X, Anestesia local');
insert into Procedimento values (null, 280.00, 'Branqueamento Dental Caseiro', 'Clareamento dental em casa', '00:30:00', 'Clareamento', 'Nenhum');
insert into Procedimento values (null, 540.00, 'Tratamento Ortodôntico', 'Ajuste e acompanhamento do aparelho ortodôntico', '01:00:00', 'Ortodontia', 'Nenhum');
insert into Procedimento values (null, 950.00, 'Extração de Dente', 'Extração de dente permanente', '01:00:00', 'Cirúrgico', 'Anestesia local');
insert into Procedimento values (null, 160.00, 'Prótese Temporária', 'Instalação de prótese temporária', '01:00:00', 'Protese', 'Nenhum');
insert into Procedimento values (null, 430.00, 'Desgaste de Dente', 'Desgaste dental para instalação de coroas', '00:45:00', 'Restaurador', 'Nenhum');
insert into Procedimento values (null, 570.00, 'Coroa de Porcelana', 'Instalação de coroa de porcelana em dente comprometido', '01:30:00', 'Restaurador', 'Nenhum');
insert into Procedimento values (null, 110.00, 'Radiografia Odontológica', 'Exame radiográfico da cavidade oral', '00:15:00', 'Diagnóstico', 'Nenhum');
insert into Procedimento values (null, 650.00, 'Remoção de Tártaro', 'Remoção do tártaro nos dentes', '00:30:00', 'Limpeza', 'Nenhum');

create table Consulta_Procedimento (
id_con_pro int primary key auto_increment,
id_con_fk int,
id_pro_fk int,
foreign key (id_con_fk) references Consulta (id_con),
foreign key (id_pro_fk) references Procedimento (id_pro)
);

insert into Consulta_Procedimento values (1, 2, 1);
insert into Consulta_Procedimento values (5, 3, 4);
insert into Consulta_Procedimento values (2, 1, 3);
insert into Consulta_Procedimento values (3, 4, 2);
insert into Consulta_Procedimento values (4, 5, 5);
insert into Consulta_Procedimento values (6, 2, 1);
insert into Consulta_Procedimento values (7, 3, 4);
insert into Consulta_Procedimento values (8, 1, 3);
insert into Consulta_Procedimento values (9, 4, 2);
insert into Consulta_Procedimento values (10, 5, 5);
insert into Consulta_Procedimento values (11, 2, 1);
insert into Consulta_Procedimento values (12, 3, 4);
insert into Consulta_Procedimento values (13, 1, 3);
insert into Consulta_Procedimento values (14, 4, 2);
insert into Consulta_Procedimento values (15, 5, 5);
insert into Consulta_Procedimento values (16, 2, 1);
insert into Consulta_Procedimento values (17, 3, 4);
insert into Consulta_Procedimento values (18, 1, 3);
insert into Consulta_Procedimento values (19, 4, 2);
insert into Consulta_Procedimento values (20, 5, 5);
insert into Consulta_Procedimento values (21, 2, 1);
insert into Consulta_Procedimento values (22, 3, 4);
insert into Consulta_Procedimento values (23, 1, 3);
insert into Consulta_Procedimento values (24, 4, 2);
insert into Consulta_Procedimento values (25, 5, 5);
insert into Consulta_Procedimento values (26, 2, 1);
insert into Consulta_Procedimento values (27, 3, 4);
insert into Consulta_Procedimento values (28, 1, 3);
insert into Consulta_Procedimento values (29, 4, 2);
insert into Consulta_Procedimento values (30, 5, 5);
insert into Consulta_Procedimento values (31, 2, 1);
insert into Consulta_Procedimento values (32, 3, 4);
insert into Consulta_Procedimento values (33, 1, 3);
insert into Consulta_Procedimento values (34, 4, 2);
insert into Consulta_Procedimento values (35, 5, 5);
insert into Consulta_Procedimento values (36, 2, 1);
insert into Consulta_Procedimento values (37, 3, 4);
insert into Consulta_Procedimento values (38, 1, 3);
insert into Consulta_Procedimento values (39, 4, 2);
insert into Consulta_Procedimento values (40, 5, 5);

create table Consulta_Material (
id_mat_con int primary key auto_increment,
quantidade_mat_con float,
id_con_fk int,
id_mat_fk int,
foreign key (id_con_fk) references Consulta (id_con),
foreign key (id_mat_fk) references Material (id_mat)
);

insert into Consulta_Material values (1, 1, 2, 1);
insert into Consulta_Material values (2, 5, 1, 3);
insert into Consulta_Material values (5, 1, 3, 4);
insert into Consulta_Material values (3, 2, 4, 2);
insert into Consulta_Material values (4, 3, 5, 5);
insert into Consulta_Material values (6, 1, 2, 1);
insert into Consulta_Material values (7, 5, 1, 3);
insert into Consulta_Material values (8, 1, 3, 4);
insert into Consulta_Material values (9, 2, 4, 2);
insert into Consulta_Material values (10, 3, 5, 5);
insert into Consulta_Material values (11, 1, 2, 1);
insert into Consulta_Material values (12, 5, 1, 3);
insert into Consulta_Material values (13, 1, 3, 4);
insert into Consulta_Material values (14, 2, 4, 2);
insert into Consulta_Material values (15, 3, 5, 5);
insert into Consulta_Material values (16, 1, 2, 1);
insert into Consulta_Material values (17, 5, 1, 3);
insert into Consulta_Material values (18, 1, 3, 4);
insert into Consulta_Material values (19, 2, 4, 2);
insert into Consulta_Material values (20, 3, 5, 5);
insert into Consulta_Material values (21, 1, 2, 1);
insert into Consulta_Material values (22, 5, 1, 3);
insert into Consulta_Material values (23, 1, 3, 4);
insert into Consulta_Material values (24, 2, 4, 2);
insert into Consulta_Material values (25, 3, 5, 5);
insert into Consulta_Material values (26, 1, 2, 1);
insert into Consulta_Material values (27, 5, 1, 3);
insert into Consulta_Material values (28, 1, 3, 4);
insert into Consulta_Material values (29, 2, 4, 2);
insert into Consulta_Material values (30, 3, 5, 5);
insert into Consulta_Material values (31, 1, 2, 1);
insert into Consulta_Material values (32, 5, 1, 3);
insert into Consulta_Material values (33, 1, 3, 4);
insert into Consulta_Material values (34, 2, 4, 2);
insert into Consulta_Material values (35, 3, 5, 5);
insert into Consulta_Material values (36, 1, 2, 1);
insert into Consulta_Material values (37, 5, 1, 3);
insert into Consulta_Material values (38, 1, 3, 4);
insert into Consulta_Material values (39, 2, 4, 2);
insert into Consulta_Material values (40, 3, 5, 5);

#EXERCICIOS