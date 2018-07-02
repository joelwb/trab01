--Aumente em 25% o custo dos produtos de limpeza do supermercado de ID 401;
UPDATE produto SET custo = (custo * 1.25)
WHERE fk_supermercado = 601 AND tipo ILIKE '%limpeza%';

--Aumente em 50% o preço dos alimentos do supermercado de ID 402;
UPDATE produto SET preco = (preco * 1.5)
WHERE fk_supermercado = 602 AND tipo = 'Alimentos' OR tipo = 'alimentos';

/*Aumente em 100% o custo e o preço dos produtos com a palavra "leite" em nome de
 *todos supermercados, devido a época de estiagem*/
UPDATE produto SET (custo, preco) = (custo * 2, preco * 2)
WHERE nome ILIKE 'leite%';

--Remova todos funcionários do setor de TI do supermercado de id 407;
DELETE FROM funcionario
WHERE fk_supermercado = 607 AND (setor = 'ti' OR setor = 'TI');

--Remova todos subgerentes dos setores administrativos do supermercado de id 425;
DELETE FROM funcionario
WHERE fk_supermercado = 625 AND setor ILIKE 'admin%' AND cargo = 'subgerente';

--Remova do supermercado de id 427, todos funcionários de cargo ligado à publicidade;
DELETE FROM funcionario
WHERE fk_supermercado = 627 AND cargo ILIKE 'publici%';