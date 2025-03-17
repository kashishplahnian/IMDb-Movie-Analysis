SELECT primaryTitle, averageRating, numVotes
FROM `bigquery-public-data.imdb.title_ratings` AS r
JOIN `bigquery-public-data.imdb.title_basics` AS b
ON r.tconst = b.tconst
WHERE b.titleType = 'movie' AND numVotes > 50000
ORDER BY averageRating DESC
LIMIT 10;