'''Numer of Appearances per artiste on the chart 
SELECT 
  artists,
  Count(artists) numberOfAppearance
FROM
`dataverse-393616.Spotify_top100.top_2018`
GROUP BY
  1
ORDER BY
  2 DESC

--Are there more artists in the Top 100 with 'Lil' in their name, or with 'DJ' in their name?
SELECT
  'Lil' AS type,
  COUNT(DISTINCT artists) AS numberOfArtist
FROM
  `dataverse-393616.Spotify_top100.top_2018`
WHERE
  UPPER(artists) LIKE '%LIL%'
GROUP BY
  1

UNION ALL

SELECT
  'Dj' AS type,
  COUNT(DISTINCT artists) AS numberOfArtist
FROM
  `dataverse-393616.Spotify_top100.top_2018`
WHERE
  UPPER(artists) LIKE '%DJ%'
GROUP BY
  1
