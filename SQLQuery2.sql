SELECT Nome, Ano
FROM Filmes

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT Ano, COUNT(Nome) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

SELECT PrimeiroNome, UltimoNome
FROM Filmes
WHERE Genero = 'Masculino';

SELECT PrimeiroNome, UltimoNome
FROM Filmes
WHERE Genero = 'Feminino';

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;


SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;


