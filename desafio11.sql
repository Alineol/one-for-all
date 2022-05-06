SELECT 
    `name` AS nome_musica,
    CASE
        WHEN name LIKE '%streets' THEN REPLACE(name, 'Streets', 'Code Review')
        WHEN name LIKE '%Her Own' THEN REPLACE(name, 'Her Own', 'Trybe')
        WHEN name LIKE '%Inner Fire' THEN REPLACE(name, 'Inner Fire', 'Project')
        WHEN name LIKE '%Silly' THEN REPLACE(name, 'Silly', 'Nice')
        WHEN name LIKE '%Circus' THEN REPLACE(name, 'Circus', 'Pull Request')
    END AS novo_nome
FROM
    SpotifyClone.songs_list
WHERE
    `name` LIKE '%streets'
        OR `name` LIKE '%Her Own'
        OR `name` LIKE '%Inner Fire'
        OR `name` LIKE '%Silly'
        OR `name` LIKE '%Circus'
ORDER BY nome_musica , novo_nome;