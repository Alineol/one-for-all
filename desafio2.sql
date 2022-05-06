select 
count(DISTINCT song_id) as cancoes, 
count(DISTINCT artist_id) as artistas,
count(DISTINCT album_id) as albuns
from SpotifyClone.songs_list, SpotifyClone.artists; 