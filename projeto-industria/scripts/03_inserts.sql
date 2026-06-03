insert into setores (nome_setor, localizacao_setor, total_produzido) values
    ("Usinagem", "Figueira",100),
    ("Soldagem", "Rau", 172),
    ("Pintura", "Amizade",99),
    ("Montagem", "Centro", 126),
    ("Qualidade", "Estrada nova", 67);

insert into funcionarios (nome_funcionario, cpf_funcionario, cargo_funcionario, salario_funcionario,data_de_admissao, id_setor) values
    ("Alannis",75335376586,"Gerente",99999,20200615,1),
    ("Andre",35545656586,"Peão",1000,20250615,2),
    ("Barbara",15456436586,"Operador",1000,20200615,3),
    ("Leticia",45635376586,"Programador",5000,20200615,4),
    ("Julia",25335354636,"Peão",1000,20200615,3),
    ("Natalia",16543537586,"Chefe",13000,20200615,5),
    ("Yago",35335376843,"Peão",12000,20200615,1),
    ("Mateus",15335376676,"Programador",22000,20200615,4),
    ("João",46765376586,"Gerente",12900,20200615,4),
    ("Valentim",55335367676,"Programador",120676,20200615,5);

insert into ordens_producao (data_producao, quantidade_produzida, status_producao, tempo_estimado, tempo_real, id_funcionario) values
    (20231030, 1234,"Concluído",20231103, 20231105,9),
    (20251009, 1432,"Iniciado",20231103, 20231105,2),
    (20251130, 1234,"Analise",20231103, 20231105,5),
    (20241030, 13244,"Iniciado",20231103, 20231105,2),
    (20231130, 1567,"Analise",20231103, 20231105,6),
    (20231009, 5634,"Concluído",20231103, 20231105,1),
    (20211030, 6574,"Concluído",20231103, 20231105,3),
    (20241030, 124564,"Analise",20231103, 20231105,4),
    (20251009, 1264,"Iniciado",20231103, 20231105,2),
    (20231030, 564,"Concluído",20231103, 20231105,10),
    (20231030, 1564,"Analise",20231103, 20231105,6),
    (20241030, 12567,"Concluído",20231103, 20231105,3),
    (20231123, 6574,"Analise",20231103, 20231105,4),
    (20251020, 674,"Iniciado",20231103, 20231105,8),
    (20241010, 1567,"Iniciado",20231103, 20231105,7);

insert into fornecedores (nome_fornecedor,cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor, quantidade_produtos_cadastrados) values
    ("Zuttel",167676767,997187394,"jaragua do sul",86),
    ("Tim",123442234,999443244,"joinville",67),
    ("Claro",123443234,654765394,"Barra do sul",89),
    ("Tiktok",123442999,965456564,"Araquari",318),
    ("Instagram",121234234,997997763,"Corupá",99);

insert into produtos_industriais (nome_produto, descricao_produto, preco_fabricacao, quantidade_estoque, id_fornecedor) values
    ("Motor","Verde",100,56,2),
    ("Tinta","Azul",1650,67,1),
    ("Verniz","Marrom",1657,56,3),
    ("Chapa","Aço",17,233,2),
    ("Aviador","De avião",156,67,1),
    ("Ditrento","Carros",1560,56,2),
    ("Motoserra","Linda",150,56,5),
    ("Makita","Perseguida",156,667,2),
    ("Prototipo","Novo",1560,67,4),
    ("Selador","Rosa",160,5766,3);

insert into categoria_produtos (nome_categoria, codigo_produto) values
    ("Estruturas metálicas", 5),
    ("Parafusos", 3),
    ("Componentes hidráulicos", 4),
    ("Peças automotivas", 2),
    ("Estruturas aço", 1);

insert into controle_qualidade (data_inspecao, resultado_inspecao, observacoes_tecnicas, id_op) values
    (20260123,"Bom","Nada a declarar", 1),
    (20260130,"Bom","Melhorias", 2),
    (20260509,"Bom","Nada a declarar", 3),
    (20260123,"Bom","Melhorias", 4),
    (20260123,"Bom","Nada a declarar", 5),
    (20260123,"Ruim","Horrivel", 6),
    (20260123,"Bom","Nada a declarar", 7),
    (20260509,"Bom","Melhorias", 9),
    (20260607,"Ruim","Horrivel", 8),
    (20260509,"Bom","Melhorias", 10);