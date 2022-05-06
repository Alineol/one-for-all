SELECT ar.name AS artista,al.title AS album
from  SpotifyClone.artists AS ar 
JOIN SpotifyClone.albuns_list AS al
ON ar.artist_id = al.artist_id
WHERE ar.name LIKE '%walter%'
GROUP BY al.title, ar.name
ORDER BY  album;