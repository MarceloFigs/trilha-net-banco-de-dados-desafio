/*1*/
SELECT Nome, Ano from Filmes

/*2*/
SELECT Nome, Ano, Duracao  from Filmes ORDER by Ano ASC

/*3*/
SELECT * from Filmes WHERE Nome = 'De Volta para o Futuro'

/*4*/
SELECT * from Filmes WHERE Ano = '1997'

/*5*/
SELECT * from Filmes WHERE Ano > '2000'

/*6*/
SELECT * from Filmes WHERE Duracao BETWEEN 101 AND 149
ORDER by Duracao ASC

/*7*/
SELECT Ano, COUNT(*) as 'quantidade' FROM Filmes
GROUP by Ano 
ORDER by quantidade DESC

/*8*/
SELECT * FROM Atores WHERE Genero = 'M'

/*9*/
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC 

/*10*/
SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f 
ON fg.IdFilme = f.Id 
INNER JOIN Generos g 
ON fg.IdGenero = g.Id 

/*11*/
SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f 
ON fg.IdFilme = f.Id 
INNER JOIN Generos g 
ON fg.IdGenero = g.Id
WHERE G.Genero = 'Mistério'

/*12*/
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM ElencoFilme ef 
INNER JOIN Atores a 
ON ef.IdAtor = a.Id 
INNER JOIN Filmes f 
ON ef.IdFilme = f.Id 
