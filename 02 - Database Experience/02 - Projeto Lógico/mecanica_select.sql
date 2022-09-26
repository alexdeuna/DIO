use mecanica;

-- Retorna todos os clientes em ordem alfabetica
select * from cliente order by nome;

-- Retorna todos os clientes do Rio de Janeiro em ordem alfabetica
select * from cliente where estado = 'RJ';

-- Retorna valor total das OS iniciadas e concluidas
select distinct(numero) OS, status, sum(servico.valor + ifnull(peca.valor,0)) 'Valor OS' 
from OS 
join pedido using(idPedido) 
join PedidoEquipe using(idPedido) 
join equipe using(idEquipe) 
join servico using(idEquipe) 
left join peca using(idServico) 
group by OS;

-- Retorna valores do servico e das peçcas somados agrupados por equipe e status do serviço.
select equipe.nome, status, sum(servico.valor) servico, ifnull(sum(peca.valor),0) peca 
from PedidoEquipe 
join equipe using(idEquipe) 
join servico using(idEquipe) 
left join peca using(idServico) 
group by equipe.nome, status 
order by equipe.nome, status  ;

-- Retorna nome dos clientes que tem mais de 1 veiculo;
select nome, count(idVeiculo) veiculo 
from cliente 
join veiculo 
using(idCliente) 
group by nome 
having (veiculo > 1);

-- Retorna em quantas equipes cada mecanico trabalha
select mecanico.nome, count(mecanico.nome) 
from equipe 
join equipeMecanico using(idEquipe) 
join mecanico using (idMecanico) 
group by mecanico.nome;