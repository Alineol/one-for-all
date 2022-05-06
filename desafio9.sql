SELECT COUNT(*) AS quantidade_musicas_no_historico 
FROM SpotifyClone.reproductions_history AS h
WHERE h.user_id = 3;