SELECT s.name AS cancao, COUNT(r.song_id) AS reproducoes
FROM SpotifyClone.songs_list AS s
JOIN reproductions_history AS r 
ON s.song_id = r.song_id
GROUP BY s.song_id
ORDER BY reproducoes DESC, s.name LIMIT 2;