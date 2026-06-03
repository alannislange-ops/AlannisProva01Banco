create table setores(
    id_setor int primary key auto_increment,
    nome_setor varchar(100),
    localizacao_setor varchar(100),
    total_produzido int not null
);

create table funcionarios(
    id_funcionario int primary key auto_increment,
    nome_funcionario varchar(100) not null,
    cpf_funcionario char(11) unique not null,
    cargo_funcionario varchar(100) not null,
    salario_funcionario decimal(10, 2) not null,
    data_de_admissao date not null,
    id_setor int,
    foreign key (id_setor) references setores(id_setor)
);


create table ordens_producao(
    id_op int primary key auto_increment,
    data_producao date,
    quantidade_produzida int not null,
    status_producao varchar(50) not null,
    tempo_estimado date,
    tempo_real date,
    id_funcionario int,
    foreign key (id_funcionario) references funcionarios(id_funcionario)
);

create table fornecedores(
    id_fornecedor int primary key auto_increment,
    nome_fornecedor varchar(100) not null,
    cnpj_fornecedor varchar(100) unique not null,
    telefone_fornecedor char(14),
    cidade_fornecedor varchar(100) not null,
    quantidade_produtos_cadastrados int
)

create table produtos_industriais(
    codigo_produto int primary key auto_increment unique,
    nome_produto varchar(100) not null,
    descricao_produto varchar(100),
    preco_fabricacao decimal(10, 2),
    quantidade_estoque int,
    id_fornecedor int,
    foreign key (id_fornecedor) references fornecedores(id_fornecedor)
);

create table categoria_produtos(
    id_categoria int primary key auto_increment,
    nome_categoria varchar(100),
    codigo_produto int,
    foreign key (codigo_produto) references produtos_industriais(codigo_produto)
);

create table controle_qualidade(
    data_inspecao date,
    resultado_inspecao varchar(100),
    observacoes_tecnicas varchar(100),
    id_op int,
    foreign key (id_op) references ordens_producao(id_op)
)
