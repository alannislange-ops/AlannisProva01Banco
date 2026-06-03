--Liste todos os setores cadastrados na fábrica.
select nome_setor from setores;
--Liste o nome, cargo e salário de todos os funcionários.
select nome_funcionario, cargo_funcionario, salario_funcionario from funcionarios;
--Exiba o código, nome e preço de fabricação de todos os produtos cadastrados.
select codigo_produto, nome_produto, preco_fabricacao, quantidade_estoque from produtos_industriais;
--Exiba apenas o nome e a quantidade em estoque dos produtos.
select nome_produto, quantidade_estoque from produtos_industriais;
--Liste os funcionários admitidos após uma determinada data informada pelo professor.
select nome_funcionario, data_de_admissao from funcionarios where data_de_admissao > 20230520;
--Exiba todos os produtos cuja quantidade em estoque seja superior a 100 unidades.
select nome_produto, quantidade_estoque from produtos_industriais where quantidade_estoque > 100;
--Liste todos os fornecedores localizados em uma cidade específica.
select nome_fornecedor, cidade_fornecedor from fornecedores where cidade_fornecedor = "Joinville";
--Exiba os produtos cujo preço de fabricação esteja entre R$ 50,00 e R$ 500,00.
select nome_produto, preco_fabricacao from produtos_industriais where preco_fabricacao between 50 and 500;
--Liste os funcionários cujo salário seja superior a R$ 3.000,00.
select nome_funcionario, salario_funcionario from funcionarios where salario_funcionario > 3000;
--Liste os funcionários cujo cargo contenha a palavra "Operador".
select nome_funcionario, cargo_funcionario from funcionarios where cargo_funcionario like "%Operador%";
--Exiba todos os fornecedores que possuem telefone cadastrado.
select nome_fornecedor, telefone_fornecedor from fornecedores where telefone_fornecedor != "null";
--Exiba os produtos cuja descrição contenha uma palavra ou trecho informado pelo professor.
select nome_produto,descricao_produto from produtos_industriais where descricao_produto = "Rosa";
--Exiba todos os produtos ordenados pelo nome em ordem alfabética.
select nome_produto from produtos_industriais order by nome_produto asc;
--Liste todos os produtos ordenados pelo preço de fabricação em ordem decrescente.
select preco_fabricacao from produtos_industriais order by preco_fabricacao desc;
--Exiba as ordens de produção com status "Concluída".
select status_producao from ordens_producao where status_producao = "Concluido";
--Exiba a quantidade total de funcionários cadastrados na empresa.
select count(nome_funcionario) from funcionarios;
--Apresente o salário médio dos funcionários.
select avg(salario_funcionario) from funcionarios;
--Exiba o menor preço de fabricação entre todos os produtos.
select min(preco_fabricacao) from produtos_industriais;
--Apresente a quantidade de produtos cadastrados em cada categoria.
select count(codigo_produto), nome_categoria from categoria_produtos group by nome_categoria;
--Exiba a quantidade de ordens de produção cadastradas por funcionário responsável.
select count(id_funcionario), id_op from ordens_producao group by id_op;
--Liste o nome dos funcionários e o nome do setor ao qual cada funcionário pertence.
select f.nome_funcionario, s.nome_setor from funcionarios as f join setores as s on f.id_setor = s.id_setor;
--Exiba o nome dos produtos juntamente com o nome de suas respectivas categorias.
select p.nome_produto, c.nome_categoria from produtos_industriais as p join categoria_produtos as c on p.codigo_produto = c.codigo_produto;
--Liste o nome do produto, o nome do fornecedor principal e o preço de fabricação do produto.

--Exiba o(s) produto(s) que possuem o maior preço de fabricação cadastrado.
select nome_produto, preco_fabricacao from produtos_industriais where preco_fabricacao = (select max(preco_fabricacao) from produtos_industriais);
--Liste os funcionários cujo salário seja superior ao salário médio dos funcionários da empresa.
select nome_funcionario, salario_funcionario from funcionarios where salario_funcionario > (select avg(salario_funcionario) from funcionarios);