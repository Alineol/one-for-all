SELECT u.user_name as usuario, count(r.user_id) AS qtde_musicas_ouvidas,
ROUND((SUM(s.duration))/60,2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproductions_history As r
ON u.user_id = r.user_id
INNER JOIN SpotifyClone.songs_list As s
ON r.song_id = s.song_id
GROUP BY user_name
ORDER BY user_name;