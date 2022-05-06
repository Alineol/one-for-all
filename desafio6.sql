SELECT MIN(cost) AS faturamento_minimo, 
MAX(p.cost) AS  faturamento_maximo,
TRUNCATE(AVG(p.cost),2) AS faturamento_medio,
SUM(p.cost) AS faturamento_total
FROM  SpotifyClone.plans AS p
JOIN SpotifyClone.users AS s
ON s.plan_id = p.plan_id;