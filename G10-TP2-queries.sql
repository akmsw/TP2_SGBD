# TP2 SISTEMAS DE GESTIÓN DE BASES DE DATOS - GRUPO 10 - TEMA 5

/*
Query 1/3 TP2

Elaborar una consulta SQL que genere un listado que contenga todos los afiliados con su nombre y apellido y que además muestre cuál es el grupo (ID de grupo)
en el que vendió mas rifas, la fecha de la última vez que vendió una rifa de ese grupo y la cantidad de pagos registrados de esa rifa.
Si varios grupos tienen la misma cantidad de rifas vendidas por el afiliado, poner uno cualquiera de ellos.
*/

SELECT
    NOMBREAFILIADO,
    APELLIDOAFILIADO,
    MAX(GRUPO) AS GRUPO,
    MAX(FECHAULT) AS FECHAULT,
    CANTPAGOS
FROM
    (
        SELECT
            a.first_name AS NOMBREAFILIADO,
            a.last_name AS APELLIDOAFILIADO,
            t.id_team AS GRUPO,
            COUNT(tr.id_trade) AS CANTRIFAS,
            MAX(purchase_date) AS FECHAULT,
            COUNT(DISTINCT p.id_payment) AS CANTPAGOS
        FROM
            teams AS t
        CROSS JOIN
            affiliates AS a
        LEFT JOIN
            trades AS tr
            ON  a.id_affiliate = tr.id_affiliate AND
                tr.belonging_group = t.id_team
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
            a.id_affiliate,
            t.id_team,
            r.id_raffle
        ORDER BY
            a.id_affiliate,
            GRUPO
    ) query2
WHERE
    CANTRIFAS != 0
GROUP BY
    NOMBREAFILIADO,
    APELLIDOAFILIADO;

/*
Query 2/3 TP2

Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones afiliado-grupo indicando cuántas rifas vendió en cada grupo.
Si no vendió ninguna, deberá figurar 0 (cero).
Ordenar por afiliado y por grupo según el criterio de recaudación total en el último año del grupo.
*/

SELECT
	a.first_name AS NOMBREAFILIADO,
    a.last_name AS APELLIDOAFILIADO,
	t.id_team AS GRUPO,
    COUNT(tr.id_trade) AS CANTRIFAS
FROM
	teams AS t
CROSS JOIN
	affiliates AS a
LEFT JOIN
	trades AS tr
    ON  a.id_affiliate = tr.id_affiliate AND
        tr.belonging_group = t.id_team
GROUP BY
	a.id_affiliate,
    t.id_team
ORDER BY
	a.id_affiliate,
    GRUPO;

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
		# Busco los datos de los clientes que deban más de 3 cuotas vencidas.
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
    CANTCOMPRAS > 5;