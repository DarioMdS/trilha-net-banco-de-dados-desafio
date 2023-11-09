--1 BUSCAR O NOME E ANO DO FILME
SELECT 
 Nome,
 Ano
 FROM Filmes

 --2 BUSCAR O NOME E O ANO DO FILME POR ORDEM CRESCENTE
SELECT 
Nome, 
Ano
FROM filmes
ORDER BY ano ASC;

--3 BUSCAR O FILME 'DE VOLTA PARA O FUTURO'
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4 BUSCAR FILME DO ANO DE 1997
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano = 1997;

--5 BUSCAR FILMES LANÇADOS APÓS O ANO 2000
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano > 2000

--6  BUSCAR FILMES COM DURAÇÃO MAIOR QUE 100 E MENOR QUE 150, ORDENANDO PELA DURAÇÃO EM ORDEM CRESCENTE.
SELECT 
Nome, 
Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7 BUSCAR QUANTIDADE DE FILMES LANÇADAS NO ANO,AGRUPANDO POR ANO,ORDENANDO PELA DURAÇÃO E EM ORDEM DECRESCENTE.
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8 BUSCAR ATORES DO GÊNERO MASCULINO, RETORNANDO O PRIMEIRO NOME, ULTIMO NOME
SELECT 
PrimeiroNome, 
UltimoNome, 
Genero
FROM Atores
WHERE Genero = 'M';

--9 BUSCAR ATORES DO GÊNERO FEMININO,RETORNANDO O PRIMEIRO NOME E ULTIMONOME E ORDENANDO POR GENERO
SELECT 
PrimeiroNome,
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--10 BUSCAR O NOME DO FILME E GÊNERO
SELECT
	Filmes.Nome,
	Generos.Genero
FROM 
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)

--11 BUSCAR O NOME DO FILME E O GÊNERO DO TIPO MISTÉRIO
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Generos.Genero = 'Mistério'

--12  BUSCAR O NOME DOS FILMES E ATORES , TRAZENDO O PRIMEIRO NOME E O ULTIMO E SEU PAPEL
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	((ElencoFilme
	
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id)
INNER JOIN Atores ON ElencoFilme.Id = Atores.Id)
INNER JOIN Generos ON ElencoFilme.IdAtor = Generos.Id

