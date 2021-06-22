/*
Query 2/3 TP2

Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones afiliado-grupo indicando cuántas rifas vendió en cada grupo.
Si no vendió ninguna, deberá figurar 0 (cero).
Ordenar por afiliado y por grupo según el criterio de recaudación total en el último año del grupo.
*/

SELECT
	a.first_name AS NOMBREAFILIADO,
    a.last_name AS APELLIDOAFILIADO,
    tea.id_team AS GRUPO,
    COUNT(tra.id_trade) AS CANTRIFAS
FROM
	affiliates a
CROSS JOIN
	teams tea
LEFT JOIN
	trades tra
    ON tea.id_team = tra.belonging_group
GROUP BY
	a.id_affiliate,
    tea.id_team
ORDER BY
	a.id_affiliate,
    tea.id_team;

/*
Query 3/3 TP2

Emitir un listado con los compradores que han comprado en la historia más de 5 rifas y deben más de 3 cuotas vencidas.
Se deberá listar DNI del comprador, cantidad total de rifas compradas y fecha última de pago.
*/

SELECT
    c.dni AS DNI,
    COUNT(t.id_trade) AS CANTCOMPRAS,
    last_purchase_date AS FECHAULTPAGO
FROM
    customers AS c
JOIN
    trades AS t
    USING(id_customer)
JOIN
    raffles AS r
    USING(id_trade)
JOIN
    (   # Busco la última fecha de pago de cada cliente.
        SELECT
            t.id_customer AS customer_idLPD,
            MAX(p.pay_date) AS last_purchase_date
        FROM
            trades AS t
        JOIN
            raffles AS r
            USING(id_trade)
        JOIN
            installments AS i
            USING(id_raffle)
        JOIN
            payments AS p
            USING(id_installment)
        GROUP BY
            t.id_customer
    ) AS customer_last_purchase_date
    ON c.id_customer = customer_idLPD
JOIN
	(
		#Busco los datos de los clientes que deban más de 3 cuotas vencidas.
		SELECT
			DISTINCT c.id_customer AS customer_idUEI,
			COUNT(p.id_payment) AS unpayed_expired_installments
		FROM
			customers AS c
		JOIN
			trades AS t
			USING(id_customer)
		JOIN
			raffles AS r
			USING(id_trade)
		JOIN
			installments AS i
			USING(id_raffle)
		JOIN
			payments AS p
			USING(id_installment)
		WHERE
			p.pay_date IS NULL AND
			i.expiring_date < NOW()
		GROUP BY
			c.id_customer
		HAVING
			unpayed_expired_installments > 3
    ) AS customer_unpayed_expired_installments
    ON c.id_customer = customer_idUEI
GROUP BY
    c.id_customer
HAVING
    CANTCOMPRAS > 5