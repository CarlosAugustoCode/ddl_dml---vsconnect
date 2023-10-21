USE bd_vcconnect;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "jessica",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50",
    "04221000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "carlos",
    "carlos@email.com",
    "Guto@134",
    "Rua Filipe Camarao, 190",
    "03065000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "natalia",
    "natalia@email.com",
    "natalia@134",
    "Rua 15 de Agosto, 1148",
    "66812480",
    0
);

INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

SELECT nome FROM tb_usuario WHERE id = UUID_TO_BIN("e78891c1-6ed1-11ee-aab5-b445067b7f94"); /*Selecionar um usuário específico filtrando pelo dado do campo id*/

DELETE nome FROM tb_usuario WHERE id = UUID_TO_BIN("e78891c1-6ed1-11ee-aab5-b445067b7f94"); /*deletar o dado especifico*/

SELECT BIN_TO_UUID(id), nome FROM tb_usuario; /*conversão de Blob para código de idendificação no campo id*/

SELECT * FROM tb_usuario; /*exibir a tabela usuário*/
SELECT * FROM tb_servico; /*exibir a tabela serviço*/

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("ebde554c-6ed1-11ee-aab5-b445067b7f94"); /*selecionar o usuario para atualizar algum dado*/
UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN("ebde554c-6ed1-11ee-aab5-b445067b7f94"); /*atualizar na tabela usuario, no campo tipo usuario o valor 1*/

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("e78891c1-6ed1-11ee-aab5-b445067b7f94"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("e78891c1-6ed1-11ee-aab5-b445067b7f94"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("e78891c1-6ed1-11ee-aab5-b445067b7f94"), NULL);

SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech; /*Filtra o nome da tecnologia através do id*/
SELECT BIN_TO_UUID(id), titulo FROM tb_servico; /*Filtra o titulo através do id*/

SELECT * FROM tb_tech_servico;

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("651860a3-6ed3-11ee-aab5-b445067b7f94"),
    UUID_TO_BIN("b451163e-6edc-11ee-aab5-b445067b7f94")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("6812dbca-6ed3-11ee-aab5-b445067b7f94"),
    UUID_TO_BIN("b4512251-6edc-11ee-aab5-b445067b7f94")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("651860a3-6ed3-11ee-aab5-b445067b7f94"),
    UUID_TO_BIN("b4512371-6edc-11ee-aab5-b445067b7f94")
);

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES (
	UUID_TO_BIN("ebde554c-6ed1-11ee-aab5-b445067b7f94"),
     UUID_TO_BIN("651860a3-6ed3-11ee-aab5-b445067b7f94")
);

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
	UUID_TO_BIN(UUID()),
	UUID_TO_BIN("ebde554c-6ed1-11ee-aab5-b445067b7f94"),
    UUID_TO_BIN("b4512251-6edc-11ee-aab5-b445067b7f94"),
    5000
);

