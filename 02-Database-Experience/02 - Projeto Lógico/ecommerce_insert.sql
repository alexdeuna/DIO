USE `ecommerce`;

insert into cliente (email, endereco, estado) values 
("tincidunt.vehicula@google.com","P.O. Caixa 713, 4840 Luctus Ave",'RJ'),
("massa.ultrices@google.com","5117 Litora St.",'SP'),
("nunc.sollicitudin@hotmail.com","P.O. Caixa 556, 3440 Nibh St.",'SP'),
("amet.diam@hotmail.com","839-600 Quis Road",'RJ'),
("sagittis.duis@hotmail.com","5355 Gravida Street",'SC'),
("duis@yahoo.com","Ap #299-685 Pellentesque Avenue",'RJ'),
("ut.sagittis@hotmail.com","321-3092 Elementum, Street",'RJ'),
("ullamcorper@yahoo.com","356-1721 Sit Road",'BA');

insert into cpfcliente (idCliente, nome, CPF) values 
(1, 'Alex Silva', '100.000.000-00'),
(2, 'Adão Pereira', '200.000.000-00'),
(3, 'Erick Brandão', '300.000.000-00'),
(4, 'Ana Paula', '400.000.000-00');

insert into cnpjcliente (idCliente, razaoSocial, CNPJ) values 
(5, 'Mauris A Institute', '10.000.000/0000-00'),
(6, 'Nullam Feugiat Corp.', '20.000.000/0000-00'),
(7, 'Libero Integer Foundation', '30.000.000/0000-00'),
(8, 'Euismod Industries', '40.000.000/0000-00');
   
insert into fornecedor (razaoSocial, CNPJ) values 
('Asus', '10.000.000/0000-00'),
('MSI', '20.000.000/0000-00'),
('Samsung', '30.000.000/0000-00');

insert into produto (nome, descricao, valor) values 
('Mouse', 'imperdiet ullamcorper. Duis', '2.5'), 
('Teclado', 'Morbi non sapien molestie orci tincidunt adipiscing.', '0.5'), 
('Placa Mãe', 'egestas a, dui. Cras pellentesque. Sed dictum. Proin', '0.5'), 
('Processador', 'bibendum sed', '0.5'), 
('Monitor', 'ultrices, mauris ipsum', '20.5');

insert into produtofornecedor (idProduto, idFornecedor) values (1, 1), (1, 2), (2, 1),(3, 3),(3, 1),(4, 1),(5, 2);

insert into estoque (endereco, estado) values 
("Ap #551-4586 Amet Road","SP"),
("Ap #785-6709 Ultricies Street","RJ"),
("339-6829 Malesuada Rd.","MG");

insert into estoqueproduto (idProduto, idEstoque, quantidade) values (1, 1, 5), (1, 2, 10), (1, 3, 15),(2, 1, 15),(2, 2, 5),(3, 1, 5),(3, 3, 5),(4, 3, 7),(5, 1, 8);

insert into pedido (idCliente, descricao, frete, rastreio) values 
(1, 'Ali Morse', '10.5', 'xxxx'), 
(2, 'Gannon Banks', '1', 'xxxx'), 
(2, 'Carla Nielsen', '10', 'xxxx'), 
(3, 'Chloe Griffith', '21', 'xxxx'),
(4, 'Colton Phelps', '10', 'xxxx'),
(5, 'Diana Shepard', '0.5', 'xxxx'),
(6, 'Rana Mason', '2.5', 'xxxx'),
(7, 'Sawyer Gilmore', '15', 'xxxx'),
(3, 'Chaney Walsh,', '9', 'xxxx'),
(7, 'Marvin Washingt', '11', 'xxxx');
     
insert into pedido (idCliente, descricao, rastreio) values 
(3, 'Latifah Flowers', 'xxxx'),
(2, 'Jaquelyn Barr', 'xxxx'),
(7, 'Fulton Salas', 'xxxx');

insert into produtopedido (idPedido, idProduto, quantidade) values 
(1,1,3), 
(1,2,1), 
(1,3,5), 
(1,4,5), 
(2,1,6), 
(2,2,6), 
(3,3,1), 
(4,3,16), 
(4,2,7), 
(5,1,9), 
(5,2,6), 
(5,3,6), 
(6,2,8), 
(6,1,5), 
(7,1,6), 
(7,2,6), 
(7,3,3), 
(8,2,4), 
(9,1,6), 
(10,1,6), 
(11,3,6), 
(12,2,6), 
(13,1,6), 
(13,3,10);
