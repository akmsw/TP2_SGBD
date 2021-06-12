#Query para llenar las tablas del esquema de la base de datos del TP1.

#Primero llenamos las tablas que no van a cambiar.

#Llenado de tabla de géneros.
INSERT INTO genders (gender)
VALUES	('HOMBRE'),
		('MUJER'),
		('OTRO');

#Llenado de tabla de estados civiles.
INSERT INTO marital_statuses (marital_status)
VALUES 	('SOLTERO'),
		('CASADO'),
        ('DIVORCIADO'),
        ('VIUDO'),
        ('OTRO');

#Llenado de tabla de países.
INSERT INTO countries (country_name)
VALUES	('ARGENTINA');

#Llenado de tabla de provincias de Argentina.
SET @ID_ARG = (SELECT id_country FROM countries WHERE country_name = 'ARGENTINA');	#Almacenamos el ID del país 'ARGENTINA'
																					#para hacer la consulta una sola vez.

INSERT INTO provinces (id_country, province_name)
VALUES	(@ID_ARG, 'CORDOBA'),
		(@ID_ARG, 'BS. AS.'),
        (@ID_ARG, 'STA. FE');

#Llenado de tabla de ciudades de provincias de Argentina.
SET @ID_CBA = (SELECT id_province FROM provinces WHERE province_name = 'CORDOBA');
SET @ID_BSAS = (SELECT id_province FROM provinces WHERE province_name = 'BS. AS.');
SET @ID_STAFE = (SELECT id_province FROM provinces WHERE province_name = 'STA. FE');

INSERT INTO cities (id_province, city_name)
VALUES	(@ID_CBA, 'CORDOBA'),
		(@ID_BSAS, 'LA PLATA'),
		(@ID_STAFE, 'RAFAELA');

#Llenado de tabla de métodos de pago.
INSERT INTO payment_methods (payment_method)
VALUES	('EFECTIVO'),
		('T. DEBITO'),
        ('T. CREDITO');

#Llenado de tabla de cantidad de cuotas.
INSERT INTO total_installments (total_installments)
VALUES	(3),
		(6),
        (12);

#Llenado de tabla de grupos.
INSERT INTO teams (id_team, sell_objectives)
VALUES
	(1, 10),
    (2, 20),
    (3, 30),
    (4, 40),
    (5, 50);