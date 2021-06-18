USE raffles_management_db;

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
SET @ID_ARG = (SELECT id_country FROM countries WHERE country_name = 'ARGENTINA'); #Almacenamos el ID del país 'ARGENTINA'
																				   #para hacer la consulta una sola vez.

INSERT INTO provinces (id_country, province_name)
VALUES	(@ID_ARG, 'CORDOBA'),
		(@ID_ARG, 'BS. AS.'),
        (@ID_ARG, 'STA. FE'),
        (@ID_ARG, 'MENDOZA'),
        (@ID_ARG, 'JUJUY'),
        (@ID_ARG, 'SALTA'),
        (@ID_ARG, 'MISIONES'),
        (@ID_ARG, 'STGO. EST.'),
        (@ID_ARG, 'CHACO'),
        (@ID_ARG, 'SAN JUAN'),
        (@ID_ARG, 'SAN LUIS'),
        (@ID_ARG, 'NEUQUEN'),
        (@ID_ARG, 'RIO NEGRO'),
        (@ID_ARG, 'CATAMARCA'),
        (@ID_ARG, 'CHUBUT'),
        (@ID_ARG, 'CORRIENTES'),
        (@ID_ARG, 'STA. CRUZ'),
        (@ID_ARG, 'T. FUEGO'),
        (@ID_ARG, 'TUCUMAN'),
        (@ID_ARG, 'LA PAMPA'),
        (@ID_ARG, 'FORMOSA'),
        (@ID_ARG, 'LA RIOJA'),
        (@ID_ARG, 'ENTRE RIOS');

#Llenado de tabla de ciudades de provincias de Argentina.
#Almacenamos el ID de cada provincia para hacer la consulta una sola vez.
SET @ID_CBA = (SELECT id_province FROM provinces WHERE province_name = 'CORDOBA');
SET @ID_BAS = (SELECT id_province FROM provinces WHERE province_name = 'BS. AS.');
SET @ID_SFE = (SELECT id_province FROM provinces WHERE province_name = 'STA. FE');
SET @ID_MZA = (SELECT id_province FROM provinces WHERE province_name = 'MENDOZA');
SET @ID_JJY = (SELECT id_province FROM provinces WHERE province_name = 'JUJUY');
SET @ID_SLT = (SELECT id_province FROM provinces WHERE province_name = 'SALTA');
SET @ID_MIS = (SELECT id_province FROM provinces WHERE province_name = 'MISIONES');
SET @ID_SES = (SELECT id_province FROM provinces WHERE province_name = 'STGO. EST.');
SET @ID_CHA = (SELECT id_province FROM provinces WHERE province_name = 'CHACO');
SET @ID_SJU = (SELECT id_province FROM provinces WHERE province_name = 'SAN JUAN');
SET @ID_SLU = (SELECT id_province FROM provinces WHERE province_name = 'SAN LUIS');
SET @ID_NQN = (SELECT id_province FROM provinces WHERE province_name = 'NEUQUEN');
SET @ID_RNG = (SELECT id_province FROM provinces WHERE province_name = 'RIO NEGRO');
SET @ID_CTM = (SELECT id_province FROM provinces WHERE province_name = 'CATAMARCA');
SET @ID_CHB = (SELECT id_province FROM provinces WHERE province_name = 'CHUBUT');
SET @ID_CTS = (SELECT id_province FROM provinces WHERE province_name = 'CORRIENTES');
SET @ID_SCR = (SELECT id_province FROM provinces WHERE province_name = 'STA. CRUZ');
SET @ID_TDF = (SELECT id_province FROM provinces WHERE province_name = 'T. FUEGO');
SET @ID_TCM = (SELECT id_province FROM provinces WHERE province_name = 'TUCUMAN');
SET @ID_PMP = (SELECT id_province FROM provinces WHERE province_name = 'LA PAMPA');
SET @ID_FOR = (SELECT id_province FROM provinces WHERE province_name = 'FORMOSA');
SET @ID_LRJ = (SELECT id_province FROM provinces WHERE province_name = 'LA RIOJA');
SET @ID_ERS = (SELECT id_province FROM provinces WHERE province_name = 'ENTRE RIOS');

INSERT INTO cities (id_province, city_name)
VALUES	(@ID_CBA, 'CORDOBA'),
		(@ID_BAS, 'LA PLATA'),
        (@ID_SFE, 'STA. FE'),
		(@ID_MZA, 'MENDOZA'),
        (@ID_JJY, 'JUJUY'),
        (@ID_SLT, 'SALTA'),
        (@ID_MIS, 'POSADAS'),
        (@ID_SES, 'STGO. EST.'),
        (@ID_CHA, 'RESIST.'),
        (@ID_SJU, 'SAN JUAN'),
        (@ID_SLU, 'SAN LUIS'),
        (@ID_NQN, 'NEUQUEN'),
        (@ID_RNG, 'VIEDMA'),
        (@ID_CTM, 'CATAMARCA'),
        (@ID_CHB, 'RAWSON'),
        (@ID_CTS, 'CORRIENTES'),
        (@ID_SCR, 'RIO GALL.'),
        (@ID_TDF, 'USHUAIA'),
        (@ID_TCM, 'TUCUMAN'),
        (@ID_PMP, 'STA. ROSA'),
        (@ID_FOR, 'FORMOSA'),
        (@ID_LRJ, 'LA RIOJA'),
        (@ID_ERS, 'PARANA');

#Llenado de tabla de métodos de pago.
INSERT INTO payment_methods (payment_method)
VALUES	('EFECTIVO'),
		('T. DEBITO'),
        ('T. CREDITO');

#Llenado de tabla de cantidad de cuotas.
INSERT INTO total_installments (total_installments)
VALUES	(1),
		(3);

#Llenado de tabla de grupos.
INSERT INTO teams (id_team, sell_objective)
VALUES
	(1, 0),
    (2, 5),
    (3, 10),
    (4, 15),
    (5, 20);