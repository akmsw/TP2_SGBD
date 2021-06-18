USE raffles_management_db;

#Llenado de la tabla de afiliados.
INSERT INTO affiliates
			(
				id_gender,
                id_marital_status,
				id_city,
                first_name,
                last_name,
                dni,
                address,
                phone_number,
                email,
                birth_date,
                current_coursing_year,
                checkin_date
			)
VALUES
	(2, 2,  5,    'JIMENA',    'CESANO', 40406691,  'CALLE SUSANA HORIA 555', '3886617894', 				 'changes@tupac.com', '1997-09-12', 5, '2016-06-09'),
    (1, 5,  1, 'FRANCISCO',    'BONINO', 41279796, 			  'CALLE JON 78', '3512621750', 			  'xinaras@warmmail.com', '1998-06-04', 5, '2017-04-06'),
    (2, 3,  4,  'AGUSTINA', 'FERNANDEZ', 40787812,   'BV. ESTEBAN QUITO 367', '2615542114', 			 'bigmomma@warmmail.com', '1998-05-01', 5, '2017-04-23'),
    (2, 4, 23,     'SOFIA', 'RODRIGUEZ', 41476582, 		 'CALLE CORNETA 147', '3435682431', 				'oof97@warmmail.com', '1997-11-27', 4, '2017-05-11'),
	(1, 1, 13, 	   'MATEO',    'MERINO', 41232347, 			  'AV. PAPA 123', '2984865929', 'relampago_marcelinho@maremarix.cum', '1999-01-25', 5, '2017-08-05'),
    (1, 4, 13,     'LIHUE',      'LUNA', 39129465, 			'CALLE FALSA 45', '2944345507', 		 'liwex.420forever@lmao.com', '1995-12-08', 5, '2018-06-12'),
    (3, 2, 21,     'CESAR',   'SALDAÑA', 41278336, 	  'AV. AQUILES BAILO 22', '3717653321', 	   'alexandr_kogan123@jmail.com', '1998-04-09', 4, '2018-08-01'),
    (1, 1,  1,  'FEDERICO',  'CORONATI', 40502859, 'BV. ARMANDO PAREDES 658', '3537659447', 			'portuguencis@enzot.com', '1997-10-02', 5, '2018-09-17'),
    (2, 5, 18,    'EMILIA', 'GUTIERREZ', 41320666, 		'AV. ELSA PATERO 91', '2964781456', 'empanadasdecarne.forever@jmail.com', '1998-01-31', 5, '2019-04-15'),
    (1, 3,  1,    'FRANCO',     'VAIRA', 38730172, 		'CALLE MESSIRVE 845', '3564605466', 		  	 'piola_guy17@jmail.com', '1995-10-20', 5, '2019-05-20');

#Llenado de la tabla de clientes.
INSERT INTO customers 
			(
				first_name,
                last_name,
                dni,
                phone_number
            )
VALUES
	(  	 'PAULA',   'LOPEZ', 41665873, 3513084314),
    (	 'JULIO',   'LUJAN', 38179555, 2960010054),
    (	  'HUGO',   'BAZAN', 39471121, 3887141495),
    (	 'MARIA', 'GUILLEN', 40401998, 3538111112),
    (	 'LUISA',  'GARZON', 42069666, 3566642069),
    (	 'LAURA',   'GODOY', 40398761, 2946771213),
    (	 'PABLO',  'BOSSIO', 39123478, 3718445598),
    (	'TERESA',   'OYOLA', 38976124, 3492784560),
    (   'MILENA', 'HERRERA', 41555123, 3512629850),
    ('ANA BELEN', 'MONTOYA', 40127896, 3546789901);

#Llenado de la tabla de compras.
INSERT INTO trades
			(
				id_customer,
                id_affiliate,
                id_payment_method,
                id_total_installments,
                purchase_date
            )
VALUES
	(10,  8, 2, 1, '2016-09-02'),
    ( 4,  3, 1, 1, '2017-04-08'),
    ( 7,  3, 1, 3, '2017-04-13'),
    ( 1,  7, 1, 1, '2017-04-24'),
    ( 6,  7, 3, 1, '2017-04-29'),
    ( 8,  2, 3, 1, '2017-05-01'),
	( 1,  2, 1, 1, '2017-05-11'),
    ( 3,  4, 2, 1, '2017-06-10'),
    (10,  4, 2, 2, '2017-06-10'),
    ( 7,  1, 1, 1, '2017-09-01'),
    ( 7,  2, 1, 1, '2018-07-21'),
    ( 3,  5, 1, 3, '2018-09-02'),
    ( 4,  5, 3, 2, '2018-09-03'),
    ( 2,  5, 1, 2, '2018-10-05'),
    ( 4,  9, 2, 2, '2018-11-05'),
    ( 5,  6, 1, 3, '2019-04-27'),
    ( 8,  6, 1, 2, '2019-06-03'),
    ( 7, 10, 1, 1, '2019-06-21'),
    ( 5, 10, 3, 3, '2019-07-06'),
    ( 2,  6, 1, 1, '2019-08-01');

#Llenado de la tabla de rifas.
INSERT INTO raffles
			(
				id_trade,
                serial_no,
                print_year
            )
VALUES
	( 1, 1, 2016),
    ( 2, 1, 2017),
    ( 3, 2, 2017),
    ( 4, 3, 2017),
    ( 5, 4, 2017),
    ( 6, 5, 2017),
    ( 7, 6, 2017),
    ( 8, 7, 2017),
    ( 9, 8, 2017),
    (10, 9, 2017),
    (11, 1, 2018),
    (12, 2, 2018),
    (13, 3, 2018),
    (14, 4, 2018),
    (15, 5, 2018),
    (16, 1, 2019),
    (17, 2, 2019),
    (18, 3, 2019),
    (19, 4, 2019),
    (20, 5, 2019);