/* Para tornar mais rápidas as pesquisas por Nome, podemos criar um índice sobre essa coluna */
CREATE INDEX iNome ON Pessoa(Nome);

/* Para tornar mais rápidas as pesquisas por Nome, podemos criar um índice sobre essa coluna */
CREATE INDEX iConjunto ON Pessoa(RG, Placa, TM);