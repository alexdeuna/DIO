USE mecanica;

INSERT INTO Cliente (nome,CPF,telefone,email,estado) VALUES
  ("Darius Carey","706.746.816-38","(11)46519-3159","posuere.vulputate@outlook.com","SP"),
  ("Quinn Luna","169.677.868-51","(11)54320-2427","eget.dictum@google.com","SP"),
  ("Scarlet Nieves","736.784.175-87","(84)05458-3846","mi.aliquam@google.com","RJ"),
  ("Connor Velazquez","435.776.597-12","(21)27858-1655","mattis.integer@outlook.com","RJ"),
  ("Theodore Ryan","156.805.306-74","(58)42534-3591","neque.nullam@outlook.com","BA"),
  ("Ruth Mcdowell","450.114.115-46","(21)14425-6665","natoque.penatibus@outlook.com","RJ"),
  ("Priscilla Merritt","822.438.816-64","(47)36313-9163","ac@google.com","BA"),
  ("Allen Meadows","383.326.458-39","(21)50463-5233","sed.auctor@google.com","RJ"),
  ("Morgan Avery","564.253.902-41","(34)90023-2437","aliquet.diam@outlook.com","SC"),
  ("Tallulah Finch","274.485.663-43","(21)66969-5894","nisi.dictum.augue@yahoo.com","RJ");
    
INSERT INTO Veiculo (idCliente,fabricante,modelo,chassi,ano) VALUES
  ("1","Vauxhall","Volvo",46114216236808657,"1999"),
  ("1","Volvo","Cadillac",46114216236808657,"1999"),
  ("1","Volkswagen","Smart",46114216236808657,"1999"),
  ("2","Subaru","GMC",46114216236808657,"1999"),
  ("2","Dacia","GMC",46114216236834657,"1999"),
  ("2","Subaru","GMC",46114216236818657,"1999"),
  ("2","Volkswagen","GMC",46114216336808657,"1999"),
  ("3","FAW","GMC",46114216236808652,"1999"),
  ("3","Subaru","GMC",46114216236810657,"1999"),
  ("3","Smart","Jeep",46114216236964657,"1999"),
  ("4","Chrysler","Nissan",46114216236808657,"1999"),
  ("4","Dacia","Nissan",46114216230538657,"1999"),
  ("1","Maruti","Nissan",46385116236808657,"1999"),
  ("5","Buick","Volvo",81029155876451351,"1999"),
  ("6","Dacia","Smart",81029155876451351,"1999"),
  ("7","FAW","Acura",81029155876451351,"1999"),
  ("8","Volkswagen","Kenworth",81029155876451351,"1999"),
  ("9","Chevrolet","Maruti Suzuki",74085484294006855,"1999"),
  ("10","Maruti Suzuki","GMC",74085484294006855,"1999");

INSERT INTO Pedido (idCliente,descricao,dataPedido) VALUES
  (1,"malesuada. Integer id magna et","2022-04-14 10:27:32"),
  (1,"augue, eu tempor erat neque","2022-07-06 07:02:41"),
  (2,"amet lorem semper auctor. Mauris","2021-11-26 04:08:25"),
  (3,"Sed nunc est, mollis non,","2022-04-18 12:39:49"),
  (4,"dictum eu, eleifend nec, malesuada","2022-02-16 06:58:55"),
  (5,"Cum sociis natoque penatibus et","2021-11-18 07:45:41"),
  (6,"scelerisque mollis. Phasellus libero mauris,","2021-12-25 08:48:44"),
  (7,"eget varius ultrices, mauris ipsum","2022-07-06 04:49:46"),
  (8,"metus urna convallis erat, eget","2021-11-04 02:38:04"),
  (9,"nec orci. Donec nibh. Quisque","2021-10-25 10:16:50"),
  (10,"nisl elementum purus, accumsan interdum","2021-11-28 12:00:46"),
  (11,"odio. Phasellus at augue id","2021-11-26 11:38:43"),
  (12,"a, malesuada id, erat. Etiam","2022-04-29 02:54:01"),
  (13,"facilisis lorem tristique aliquet. Phasellus","2022-08-22 06:55:20"),
  (14,"odio. Etiam ligula tortor, dictum","2022-06-20 12:03:32"),
  (15,"nulla vulputate dui, nec tempus","2022-03-04 06:29:43"),
  (16,"diam. Pellentesque habitant morbi tristique","2022-07-23 02:54:34"),
  (17,"massa. Integer vitae nibh. Donec","2022-08-13 01:51:09"),
  (18,"Nam ligula elit, pretium et,","2022-03-02 04:00:19"),
  (19,"sit amet, consectetuer adipiscing elit.","2022-06-12 05:10:16"),
  (20,"augue, eu tempor erat neque","2022-07-06 07:02:41");
  
INSERT INTO OS (idPedido,numero,dataEmissao) VALUES
  (3,75375,"2022-09-02 03:37:52"),
  (4,49528,"2022-09-19 12:49:40"),
  (5,33329,"2022-09-04 10:42:20"),
  (6,21158,"2022-09-07 02:44:51"),
  (7,72316,"2022-09-19 11:41:53"),
  (8,53423,"2022-09-08 07:42:47"),
  (9,27864,"2022-09-02 07:05:08"),
  (13,42833,"2022-09-13 07:56:40"),
  (14,34407,"2022-09-23 12:46:09"),
  (15,37648,"2022-09-04 10:52:55"),
  (16,26026,"2022-09-09 10:38:18"),
  (17,36442,"2022-09-05 05:37:18"),
  (18,78811,"2022-09-17 08:36:29"),
  (19,43125,"2022-09-04 06:03:39"),
  (20,51544,"2022-09-17 10:46:43");

INSERT INTO Equipe (nome) VALUES
  ("Equipe 1"),
  ("Equipe 2"),
  ("Equipe 3"),
  ("Equipe 4");
  
INSERT INTO Servico (idEquipe,tipo,valor) VALUES
  (1,"Alinhamento e balanceamento","5.31"),
  (2,"Polimento","8.97"),
  (2,"Manutenção de embreagem","9.38"),
  (3,"Alinhamento e balanceamento","5.31"),
  (3,"Polimento","8.97"),
  (3,"Pintura","9.12"),
  (4,"Troca de freio","8.97"),
  (4,"Manutenção de embreagem","9.38"),
  (4,"Alinhamento e balanceamento","3.26"),
  (4,"Pintura","9.12");
  
INSERT INTO Peca (idServico,nome,descricao,valor)VALUES
  (6,"Tinta","Morbi neque tellus, imperdiet non,","20.88"),
  (10,"Tinta","Morbi neque tellus, imperdiet non,","20.88"),
  (3,"Embreagem","felis eget varius ultrices, mauris","26.38"),
  (8,"Embreagem","felis eget varius ultrices, mauris","26.38"),
  (7,"Pastilha de Freio","risus quis diam luctus lobortis.","48.80");
  
INSERT INTO Mecanico (nome,CPF,endereco,especialidade) VALUES
  ("Rajah Lynch","898.087.826-13","P.O. Caixa 216, 6802 Scelerisque St.","Veículos automotivos"),
  ("Shad Blackwell","222.887.515-62","P.O. Caixa 928, 9944 Nunc Av.","Operações unitárias"),
  ("Merritt Holman","209.897.718-17","Ap Magna St.","Pneumática e Hidráulica"),
  ("Kitra Mckinney","242.170.728-67","Ap In Avenue","Mecânicos em geral"),
  ("Lynch","808.087.826-13","P.O. Caixa 216, 6802 Scelerisque St.","Pneumática e Hidráulica"),
  ("Shad","221.887.515-62","P.O. Caixa 928, 9944 Nunc Av.","Pneumática e Hidráulica"),
  ("Holman","100.897.718-17","Ap Magna St.","Veículos automotivos"),
  ("Mckinney","231.170.798-67","Ap In Avenue","Veículos automotivos");

INSERT INTO EquipeMecanico (idMecanico, idEquipe) VALUES 
  (1,1), 
  (1,2), 
  (2,1), 
  (2,2), 
  (2,3), 
  (3,4), 
  (3,5), 
  (3,6), 
  (3,7), 
  (4,8), 
  (4,1); 

INSERT INTO PedidoEquipe (idPedido, idEquipe, status) VALUES
(1,1,"Aberto"),
(1,2,"Aberto"),
(2,1,"Aberto"),
(3,1,"Iniciado"),
(4,2,"Iniciado"),
(5,2,"Iniciado"),
(6,3,"Iniciado"),
(7,2,"Iniciado"),
(8,2,"Iniciado"),
(9,1,"Iniciado"),
(10,4,"Aberto"),
(11,4,"Aberto"),
(12,4,"Aberto"),
(13,3,"Concluido"),
(14,2,"Concluido"),
(15,2,"Concluido"),
(16,2,"Concluido"),
(17,2,"Concluido"),
(18,2,"Concluido"),
(19,1,"Concluido"),
(20,4,"Concluido");