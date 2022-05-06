SELECT ar.name AS artista,al.title AS album, COUNT(f.artist_id) AS seguidores
from  SpotifyClone.artists AS ar 
JOIN SpotifyClone.albuns_list AS al
ON ar.artist_id = al.artist_id
JOIN SpotifyClone.artist_followers AS f
ON ar.artist_id = f.artist_id
GROUP BY al.title, ar.name
ORDER BY seguidores DESC, artista ASC, album ASC;