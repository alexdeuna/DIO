USE `ecommerce`; 

-- Retorna quantos clientes existem como Pessoa Física e Juridica
select (select count(*) from cliente join cpfcliente using(idCliente)) 'Pessoa Física',
(select count(*) from cliente join cnpjcliente using(idCliente)) 'Pessoa Juridica';

-- Retorna produtos comprados pelo estado do RJ
select distinct(nome) from produto join produtopedido using(idProduto) join pedido using(idPedido) join cliente using(idCliente) where estado='RJ';


-- Retorna a quantidade de produtos por cliente
select  cpfcliente.nome nome, idPedido num_pedido, count(*) qts_produto from produto join produtopedido using(idProduto) join pedido using(idPedido) join cliente using(idCliente) join cpfcliente using (idCliente) group by idPedido  
union
select  cnpjcliente.razaosocial nome, idPedido num_pedido, count(*) qts_produto from produto join produtopedido using(idProduto) join pedido using(idPedido) join cliente using(idCliente) join cnpjcliente using (idCliente) group by idPedido
order by nome;

-- Retorna a quantidade de pedios por cliente
select count(*) pedido, cpfcliente.nome nome, cpf from pedido join cliente using(idCliente) join cpfcliente  using (idCliente) group by idCliente 
union
select count(*) pedido, cnpjcliente.razaosocial nome, cnpj from pedido join cliente using(idCliente) join cnpjcliente  using (idCliente) group by idCliente 
order by nome;

-- Retorna quantidade de pedidos por estado
select count(*), estado from cliente join pedido using(idCliente) group by estado ;
 
 
-- retorna a quantidade de produtos e cleinte por pedido
select count(*), descricao, sum(quantidade) from pedido join produtopedido using(idPedido) group by idPedido, idCliente;

select * from Pedido having frete >= 10;