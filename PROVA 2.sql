-- PROVA 2
-- Question 1 ) Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e soma do campo “attendance” da tabela “schedules”, dataset “baseball”, mesmo que a contagem e a soma de torcedores nos estádios não tenham significado para análise de negócio.


SELECT 
  AVG(attendance) AS media, -- Calcula a média de público (attendance) e arredonda para 2 casas decimais
  MAX(attendance) AS maximo, -- Encontra o valor máximo de público e arredonda para 2 casas decimais
  MIN(attendance) AS minimo, -- Encontra o valor mínimo de público e arredonda para 2 casas decimais
  COUNT(attendance) AS contagem,  -- Conta quantos registros existem na coluna "attendance" e arredonda (COUNT não precisa de ROUND)
  SUM(attendance) AS soma -- Soma todos os valores da coluna "attendance" e arredonda para 2 casas decimais
FROM `bigquery-public-data.baseball.schedules`  -- Tabela de agendamentos de jogos
WHERE status = "closed";  -- Filtra apenas os jogos que já foram finalizados

SELECT DISTINCT
status
FROM `bigquery-public-data.baseball.schedules`;

-- Question 2) No mesmo dataset e tabela do exercício anterior, retornar a quantidade de jogos disputados por cada time em casa por ano e também a soma de minutos jogados em casa por ano. Ordenar de forma decrescente pelo ano e depois crescente pelo nome do time.

SELECT
  COUNT(gameId) AS jogos,         -- Conta o número de jogos registrados para cada time por ano
  SUM(duration_minutes) AS soma_minutos, -- Soma a duração total dos jogos por time e ano
  homeTeamName,                   -- Nome do time que jogou em casa
  year                            -- Ano do jogo
FROM `bigquery-public-data.baseball.schedules`
WHERE status = "closed"           -- Filtra apenas jogos que já foram finalizados
GROUP BY homeTeamName, year       -- Agrupa os resultados por nome do time e ano
ORDER BY year DESC, homeTeamName ASC; -- Ordena primeiro pelo ano (decrescente) e depois pelo nome do time (crescente)


-- Question 3) No dataset “austin_bikeshare”, descubra qual a quantidade de viagens realizadas em 2017 com duração de 30 minutos ou mais, somente de estações tanto de partida quanto de chegada) que estão atualmente ativas.

SELECT
  COUNT(trip_id) AS viagens  -- Conta o número total de viagens que atendem aos filtros
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` t
JOIN `bigquery-public-data.austin_bikeshare.bikeshare_stations` s 
  ON t.start_station_id = s.station_id  -- Une a tabela de viagens com a tabela de estações para pegar a estação de partida
JOIN bigquery-public-data.austin_bikeshare.bikeshare_stations sf ON t.end_station_id = cast( sf.station_id as string)  -- Une novamente para pegar a estação de chegada (removida a conversão desnecessária)
WHERE 
  EXTRACT(YEAR FROM start_time) = 2017  -- Filtra viagens feitas no ano de 2017
  AND duration_minutes >= 30            -- Filtra viagens com duração de 30 minutos ou mais
  AND s.status = "active"               -- Considera apenas estações de partida ativas
  AND sf.status = "active";             -- Considera apenas estações de chegada ativas

-- Question 4) No mesmo dataset anterior, calcule a média de duração das viagens por tipo de cliente (“subscriber_type”) por ano.

SELECT
  ROUND(AVG(duration_minutes), 1) AS MEDIA_DURACAO_VIAGEM,
subscriber_type,
extract(year from start_time) as year,
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` t
group by 2,3
order by year;





