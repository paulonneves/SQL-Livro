/* Devido a um processo judicial o carro da placa 45-77-AA será modificado para placa 21-05-EN */
UPDATE Pessoa 
SET Placa = '21-05-EN'
WHERE Placa = '45-77-AA';

/* Adicionando a coluna TM na tabela Pessoa */
ALTER TABLE Pessoa ADD COLUMN TM VARCHAR(20);

/* Vamos adicionar alguns valores na coluna TM */
/* Vamos colocar um número de celular pra todas as pessoas que tem a letra C no nome */
UPDATE Pessoa
SET TM='961234567'
WHERE Nome LIKE '%C%';
