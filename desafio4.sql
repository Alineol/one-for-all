SELECT s.user_name AS usuario,
CASE 
	WHEN MAX(r.date) >= '2021-01-01' THEN 'Usuário ativo'
	WHEN MAX(r.date) < '2021-01-01' THEN 'Usuário inativo'
END AS `condicao_usuario`
FROM SpotifyClone.users AS s 
LEFT JOIN  SpotifyClone.reproductions_history AS r
ON s.user_id = r.user_id
GROUP BY usuario
ORDER BY usuario;