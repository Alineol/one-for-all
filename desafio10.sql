SELECT s.name AS nome, COUNT(DISTINCT r.user_id) As reproducoes
FROM SpotifyClone.reproductions_history AS r
JOIN SpotifyClone.users AS u
ON r.user_id = u.user_id
JOIN SpotifyClone.songs_list AS s
ON r.song_id = s.song_id
WHERE u.plan_id IN (1, 4)
GROUP BY nome ORDER BY nome;
