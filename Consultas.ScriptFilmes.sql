---Consultando tabelas
SELECT * FROM Filmes
SELECT * FROM ElencoFilme
SELECT * FROM Atores
SELECT * FROM FilmesGenero
SELECT * FROM Generos


-- Task 1 
SELECT 
	Nome,
	Ano
FROM Filmes

-- Task 2 
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- Task 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Task 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Task 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano BETWEEN 2000 AND 2008

-- Task 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao BETWEEN 106 AND 150
ORDER By Duracao ASC

-- Task 7 
SELECT Ano, COUNT(*)Quantidade FROM Filmes
WHERE Ano <>''
GROUP By Ano
ORDER By Quantidade DESC

--- Task 8
SELECT Id, PrimeiroNome,UltimoNome,Genero FROM Atores
WHERE Genero = 'M'

-- Task 9
SELECT Id, PrimeiroNome,UltimoNome,Genero FROM Atores
WHERE Genero = 'F'
ORDER By PrimeiroNome

-- Task 10
SELECT f.Nome , g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

-- Task 11
SELECT f.Nome , g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- Task 12
SELECT f.Nome , a.PrimeiroNome , a.UltimoNome,el.Papel FROM Filmes f
JOIN ElencoFilme el ON f.Id = el.IdFilme
JOIN Atores a ON el.IdAtor = a.Id
