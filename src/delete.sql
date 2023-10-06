/* Já que o carro da marca FIAT não é utilizado por ninguém na empresa vamos apagar o seu registro */
DELETE FROM Carro
WHERE Marca = 'FIAT';

/* Cansei de trabalhar com essas tabelas */
/* Vamos apagar tudo */
DROP TABLE Pessoa;
DROP TABLE Carro;
