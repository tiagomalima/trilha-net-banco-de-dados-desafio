select nome, ano from Filmes;

select nome, ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

select nome, ano, Duracao from Filmes where Ano = 1997;

select nome, ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

select ano, count (*) as quantidade from Filmes 
group by Ano
order by quantidade desc;

select Id, PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'M';

select Id, PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'F'
order by PrimeiroNome;

select filmes.Nome, Generos.Genero
from Filmes
inner join FilmesGenero on filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id;

select filmes.Nome, Generos.Genero
from Filmes
inner join FilmesGenero on filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where generos.Genero = 'Mistério' ;

select filmes.Nome, Atores.PrimeiroNome, atores.UltimoNome, ElencoFilme.Papel
from Filmes
inner join ElencoFilme on filmes.Id = ElencoFilme.IdFilme
inner join Atores on ElencoFilme.IdAtor = atores.Id;