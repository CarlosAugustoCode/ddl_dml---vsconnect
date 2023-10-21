USE bd_vcconnect;

SELECT *, BIN_TO_UUID(id) FROM tb_usuario;

SELECT MIN(proposta) AS 'Menor Valor' FROM tb_servico; /* Exibe o menor valor de proposta*/
SELECT MAX(proposta) AS 'Maior Valor' FROM tb_servico; /* Exibe o maior valor de proposta*/

SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MIN(proposta) FROM tb_servico); /* Select trazendo informação da proposta e o menor de proposta */
SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MAX(proposta) FROM tb_servico); /* Select trazendo informação da proposta e o maior de proposta */

SELECT COUNT(id) FROM tb_servico; /*Retorna a quantidade de propostas cadastradas*/
SELECT SUM(proposta) FROM tb_servico; /* soma das propostas */

SELECT COUNT(tb_servico.id) AS 'Total Serviço', status_servico AS 'Status' FROM tb_servico WHERE status_servico = "Em andamento" GROUP BY status_servico;   /* agrupar todos os serviços com o status detalhado cadastrado, projetos ainda não aceitos */

SELECT * FROM tb_servico ORDER BY titulo ASC; /* exibe a lista completa de campos com todas colunas em ordem crescente */
SELECT titulo FROM tb_servico ORDER BY titulo ASC; /* serviços cadastrados em ordem crescente (em alfabética) */
SELECT titulo FROM tb_servico ORDER BY titulo DESC; /* serviços cadastrados em ordem decrescente */

/*retorna as informações que estão em tabelas diferentes com id e nomes. seleciona os titulo, alterando o nome para Serviço, puchando as tecnologias da outra
tabela, alterando para Tecnologia*/
SELECT titulo AS 'Serviço', tb_tech.nome AS 'Tecnologia' FROM tb_tech_servico INNER JOIN tb_servico ON tb_tech_servico.id_servico = tb_servico.id
INNER JOIN tb_tech ON tb_tech_servico.id_tech = tb_tech.id;

