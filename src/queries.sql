/* Seleciona tudo da tabela Carro */
SELECT * FROM Carro;

/* Seleciona tudo da tabela Pessoa */
SELECT * FROM Pessoa;

/* Seleciona as colunas Nome e Placa da tabela Pessoa */
SELECT Nome, Placa FROM Pessoa;

/* Filtra apenas as linhas que tem cilindrada menor que 1500 */
SELECT Marca, Modelo, Cilindrada FROM Carro
WHERE Cilindrada < 1500;

/* Filtra apenas as linhas que começam com CINZ... */
SELECT * FROM Carro
WHERE Cor LIKE 'Cinz%';

/* Consulta mais complexa filtra que não é Uno e tem o digito 1 */
SELECT * FROM Carro
WHERE Cilindrada > 1250
	AND Modelo <> 'Uno'
	AND Placa LIKE '%1%';

/* Junta a tabela Carro com a tabela Pessoa obtendo Nome, Placa, Marca e Modelo */
SELECT Nome, Carro.Placa, Marca, Modelo 
FROM Carro, Pessoa
WHERE Carro.Placa = Pessoa.Placa;

/* Ordena pelo critério Nome */
SELECT Nome, Carro.Placa, Marca, Modelo 
FROM Carro, Pessoa
WHERE Carro.Placa = Pessoa.Placa
ORDER BY Nome;

/* As ordenações podem ter mais de um critério podendo ser Ascendente (ASC) ou Descendente (DESC) */
SELECT Nome, Carro.Placa, Marca, Modelo 
FROM Carro, Pessoa
WHERE Carro.Placa = Pessoa.Placa
ORDER BY Marca DESC, Nome ASC;

/* Usando a função COUNT para saber a quantidade de linhas */
SELECT COUNT(*) AS Contador 
FROM Carro
WHERE Cilindrada > 1200;

/* Testando funções de resumo */
SELECT AVG(Cilindrada) AS Media,
		MIN(Cilindrada) AS Minimo,
		MAX(Cilindrada) AS Maximo
FROM Carro;

/* Transformando uma coluna em seu dobro */
SELECT Marca, Modelo, Cilindrada,
Cilindrada * 2 AS Preco
FROM Carro;

/* Aninhamento de comando SQL */
SELECT * FROM Carro
WHERE Placa NOT IN 
	(SELECT Placa FROM Pessoa);

/* Agrupando e contando os carros por cores */
SELECT Cor, COUNT(*) AS Contagem
FROM Carro
GROUP BY Cor;