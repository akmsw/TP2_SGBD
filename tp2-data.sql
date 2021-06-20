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
	( 2, 2,  5,    'JIMENA',    'CESANO', 40406691,  'CALLE SUSANA HORIA 555', '3886617894', 			      'changes@tupac.com', '1997-09-12', 5, '2016-06-09'),
    ( 1, 5,  1, 'FRANCISCO',    'BONINO', 41279796, 	       'CALLE JON 78', '3512621750', 			   'xinaras@warmmail.com', '1998-06-04', 5, '2017-04-06'),
    ( 2, 3,  4,  'AGUSTINA', 'FERNANDEZ', 40787812,   'BV. ESTEBAN QUITO 367', '2615542114', 			  'bigmomma@warmmail.com', '1998-05-01', 5, '2017-04-23'),
    ( 2, 4, 23,     'SOFIA', 'RODRIGUEZ', 41476582, 	  'CALLE CORNETA 147', '3435682431', 			     'oof97@warmmail.com', '1997-11-27', 4, '2017-05-11'),
	( 1, 1, 13, 	'MATEO',    'MERINO', 41232347, 	       'AV. PAPA 123', '2984865929', 'relampago_marcelinho@maremarix.com', '1999-01-25', 5, '2017-08-05'),
    ( 1, 4, 13,     'LIHUE',      'LUNA', 39129465, 	     'CALLE FALSA 45', '2944345507', 		  'liwex.420forever@lmao.com', '1995-12-08', 5, '2018-06-12'),
    ( 3, 2, 21,     'CESAR',   'SALDAÑA', 41278336,    'AV. AQUILES BAILO 22', '3717653321', 	    'alexandr_kogan123@jmail.com', '1998-04-09', 4, '2018-08-01'),
    ( 1, 1,  1,  'FEDERICO',  'CORONATI', 40502859, 'BV. ARMANDO PAREDES 658', '3537659447', 			 'portuguencis@enzot.com', '1997-10-02', 5, '2018-09-17'),
    ( 2, 5, 18,    'EMILIA', 'GUTIERREZ', 41320666, 	 'AV. ELSA PATERO 91', '2964781456', 'empanadasdecarne.forever@jmail.com', '1998-01-31', 5, '2019-04-15'),
    ( 1, 3,  1,    'FRANCO',     'VAIRA', 38730172, 	 'CALLE MESSIRVE 845', '3564605466', 		      'piola_guy17@jmail.com', '1995-10-20', 5, '2019-05-20');

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
	( 7,  1, 3, 1, '2016-10-26'),
    ( 8,  1, 1, 1, '2016-12-13'),
    ( 3,  1, 1, 1, '2017-03-24'),
    ( 4,  1, 3, 2, '2017-06-04'),
    ( 6,  2, 2, 2, '2017-06-30'),
    ( 9,  1, 3, 1, '2017-08-01'),
    ( 2,  5, 1, 1, '2017-09-15'),
    ( 8,  5, 1, 2, '2017-09-16'),
    ( 7,  1, 2, 2, '2017-11-04'),
    ( 1,  2, 2, 2, '2017-11-19'),
    ( 8,  4, 2, 2, '2017-11-30'),
    ( 3,  2, 1, 2, '2018-02-22'),
    ( 7,  2, 2, 2, '2018-04-14'),
    ( 1,  5, 1, 2, '2018-04-17'),
    ( 1,  1, 3, 1, '2018-05-21'),
    ( 9,  5, 1, 2, '2018-05-25'),
    ( 9,  2, 2, 1, '2018-06-08'),
    ( 9,  2, 1, 2, '2018-06-29'),
    ( 5,  1, 1, 1, '2018-07-14'),
    ( 5,  1, 1, 2, '2018-08-12'),
    ( 9,  1, 1, 1, '2018-09-10'),
    ( 4,  2, 2, 2, '2018-09-20'),
    ( 5,  7, 1, 2, '2018-10-31'),
    ( 6,  7, 1, 2, '2018-11-30'),
    ( 1,  1, 3, 2, '2018-12-05'),
    ( 3,  1, 1, 1, '2019-02-03'),
    ( 8,  6, 1, 1, '2019-02-11'),
    ( 5,  2, 2, 2, '2019-04-10'),
    ( 1,  1, 2, 1, '2019-04-23'),
    ( 3,  2, 2, 2, '2019-05-09'),
    (10,  9, 2, 2, '2019-05-31'),
    ( 2,  2, 2, 2, '2019-06-14'),
    ( 2,  6, 2, 2, '2019-07-13'),
    ( 5,  4, 1, 1, '2020-02-05'),
    ( 1,  2, 2, 1, '2020-02-21'),
    ( 5,  8, 2, 1, '2020-03-29'),
    ( 4,  2, 1, 1, '2020-04-24'),
    ( 5,  8, 2, 1, '2020-05-08'),
    ( 9,  8, 2, 1, '2020-08-30'),
    ( 3, 10, 1, 1, '2020-09-07'),
    ( 1,  3, 3, 1, '2020-09-10'),
    (10,  1, 3, 1, '2020-09-29'),
    ( 5,  3, 3, 1, '2020-10-25'),
    (10,  7, 2, 1, '2020-11-04'),
    ( 4,  7, 2, 1, '2020-11-14'),
    ( 1,  1, 3, 1, '2020-12-27'),
    ( 5,  2, 2, 1, '2021-01-05'),
    ( 5,  9, 2, 1, '2021-04-17'),
    (10,  7, 2, 1, '2021-06-10'),
    ( 7,  8, 2, 1, '2021-12-30');
 
#Llenado de la tabla de rifas.
INSERT INTO raffles
			(
				id_trade,
                serial_no,
                print_year
            )
VALUES
    ( 1,  1, 2016),
    ( 2,  2, 2016),
    ( 3,  1, 2017),
    ( 4,  2, 2017),
    ( 5,  3, 2017),
    ( 6,  4, 2017),
    ( 7,  5, 2017),
    ( 8,  6, 2017),
    ( 9,  7, 2017),
    (10,  8, 2017),
    (11,  9, 2017),
    (12,  1, 2018),
    (13,  2, 2018),
    (14,  3, 2018),
    (15,  4, 2018),
    (16,  5, 2018),
    (17,  6, 2018),
    (18,  7, 2018),
    (19,  8, 2018),
    (20,  9, 2018),
    (21, 10, 2018),
    (22, 11, 2018),
    (23, 12, 2018),
    (24, 13, 2018),
    (25, 14, 2018),
    (26,  1, 2019),
    (27,  2, 2019),
    (28,  3, 2019),
    (29,  4, 2019),
    (30,  5, 2019),
    (31,  6, 2019),
    (32,  7, 2019),
    (33,  8, 2019),
    (34,  1, 2020),
    (35,  2, 2020),
    (36,  3, 2020),
    (37,  4, 2020),
    (38,  5, 2020),
    (39,  6, 2020),
    (40,  7, 2020),
    (41,  8, 2020),
    (42,  9, 2020),
    (43, 10, 2020),
    (44, 11, 2020),
    (45, 12, 2020),
    (46, 13, 2020),
    (47,  1, 2021),
    (48,  2, 2021),
    (49,  3, 2021),
    (50,  4, 2021);

#Llenado de la tabla de cuotas.
INSERT INTO installments
			(
                id_raffle,
                expiring_date
            )
VALUES
    ( 1, '2016-11-25'),
    ( 2, '2017-01-12'),
    ( 3, '2017-04-23'),
    ( 4, '2017-07-04'),
    ( 4, '2017-08-03'),
    ( 4, '2017-09-02'),
    ( 5, '2017-07-30'),
    ( 5, '2017-08-29'),
    ( 5, '2017-09-28'),
    ( 6, '2017-08-31'),
    ( 7, '2017-10-15'),
    ( 8, '2017-10-16'),
    ( 8, '2017-11-15'),
    ( 8, '2017-12-15'),
    ( 9, '2017-12-04'),
    ( 9, '2018-01-03'),
    ( 9, '2018-02-02'),
    (10, '2017-12-19'),
    (10, '2018-01-18'),
    (10, '2018-02-17'),
    (11, '2017-12-30'),
    (11, '2018-01-29'),
    (11, '2018-02-28'),
    (12, '2018-03-24'),
    (12, '2018-04-23'),
    (12, '2018-05-23'),
    (13, '2018-05-14'),
    (13, '2018-06-13'),
    (13, '2018-07-13'),
    (14, '2018-05-17'),
    (14, '2018-06-16'),
    (14, '2018-07-16'),
    (15, '2018-06-20'),
    (16, '2018-06-24'),
    (16, '2018-07-24'),
    (16, '2018-08-23'),
    (17, '2018-07-08'),
    (18, '2018-07-29'),
    (18, '2018-08-28'),
    (18, '2018-09-27'),
    (19, '2018-08-13'),
    (20, '2018-09-11'),
    (20, '2018-10-11'),
    (20, '2018-11-10'),
    (21, '2018-10-10'),
    (22, '2018-10-20'),
    (22, '2018-11-19'),
    (22, '2018-12-19'),
    (23, '2018-11-30'),
    (23, '2018-12-30'),
    (23, '2019-01-29'),
    (24, '2018-12-30'),
    (24, '2019-01-29'),
    (24, '2019-02-28'),
    (25, '2019-01-04'),
    (25, '2019-02-03'),
    (25, '2019-03-05'),
    (26, '2019-03-05'),
    (27, '2019-03-13'),
    (27, '2019-04-12'),
    (27, '2019-05-12'),
    (28, '2019-05-10'),
    (28, '2019-06-09'),
    (28, '2019-07-09'),
    (29, '2019-05-23'),
    (30, '2019-06-08'),
    (30, '2019-07-08'),
    (30, '2019-08-07'),
    (31, '2019-06-30'),
    (31, '2019-07-30'),
    (31, '2019-08-29'),
    (32, '2019-07-14'),
    (32, '2019-08-13'),
    (32, '2019-09-12'),
    (33, '2019-08-12'),
    (33, '2019-09-11'),
    (33, '2019-10-11'),
    (34, '2020-03-06'),
    (35, '2020-03-22'),
    (36, '2020-04-28'),
    (37, '2020-05-24'),
    (38, '2020-06-07'),
    (39, '2020-09-29'),
    (40, '2020-10-07'),
    (41, '2020-10-10'),
    (42, '2020-10-29'),
    (43, '2020-11-24'),
    (44, '2020-12-04'),
    (45, '2020-12-14'),
    (46, '2021-01-26'),
    (47, '2021-02-04'),
    (48, '2021-05-17'),
    (49, '2021-07-10'),
    (50, '2022-01-29');

#Llenado de la tabla de pagos.
INSERT INTO payments
			(
				id_installment,
                pay_date
            )
VALUES
    ( 1, '2016-11-20'),
    ( 2, '2017-01-07'),
    ( 3, '2017-04-18'),
    ( 4, '2017-06-29'),
    ( 5, '2017-07-29'),
    ( 6, '2017-08-28'),
    ( 7, '2017-07-25'),
    ( 8, '2017-08-24'),
    ( 9, '2017-09-23'),
    (10, '2017-08-26'),
    (11, '2017-10-10'),
    (12, '2017-10-11'),
    (13, '2017-11-10'),
    (14, '2017-12-10'),
    (15, '2017-11-29'),
    (16, '2017-12-29'),
    (17, '2018-01-28'),
    (18, '2017-12-14'),
    (19, '2018-01-13'),
    (20, '2018-02-12'),
    (21, '2017-12-25'),
    (22, '2018-01-24'),
    (23, '2018-02-23'),
    (24, '2018-03-19'),
    (25, '2018-04-18'),
    (26, '2018-05-18'),
    (27, '2018-05-09'),
    (28, '2018-06-08'),
    (29, '2018-07-08'),
    (30, '2018-05-12'),
    (31, '2018-06-11'),
    (32, '2018-07-11'),
    (33, '2018-06-15'),
    (34, '2018-06-19'),
    (35, '2018-07-19'),
    (36, '2018-08-18'),
    (37, '2018-07-03'),
    (38, '2018-07-24'),
    (39, '2018-08-23'),
    (40, '2018-09-22'),
    (41, '2018-08-08'),
    (42, '2018-09-06'),
    (43, '2018-10-06'),
    (44, '2018-11-05'),
    (45, '2018-10-05'),
    (46, '2018-10-15'),
    (47, '2018-11-14'),
    (48, '2018-12-14'),
    (49, '2018-11-25'),
    (50, '2018-12-25'),
    (51, '2019-01-24'),
    (52, '2018-12-25'),
    (53, '2019-01-24'),
    (54, '2019-02-23'),
    (55, '2018-12-30'),
    (56, '2019-01-29'),
    (57, '2019-02-28'),
    (58, '2019-02-28'),
    (59, '2019-03-08'),
    (60, '2019-04-07'),
    (61, '2019-05-17'),
    (62, '2019-05-15'),
    (63, '2019-06-14'),
    (64, '2019-07-14'),
    (65, '2019-05-28'),
    (66, '2019-06-13'),
    (67, '2019-07-13'),
    (68, '2019-08-12'),
    (69, '2019-07-05'),
    (70, '2019-08-04'),
    (71, '2019-09-03'),
    (72, '2019-07-19'),
    (73, '2019-08-18'),
    (74, '2019-09-17'),
    (75, '2019-08-17'),
    (76, '2019-09-16'),
    (77, '2019-10-16'),
    (78, '2020-03-11'),
    (79, NULL),
    (80, NULL),
    (81, NULL),
    (82, NULL),
    (83, NULL),
    (84, NULL),
    (85, NULL),
    (86, NULL),
    (87, NULL),
    (88, NULL),
    (89, NULL),
    (90, NULL),
    (91, NULL),
    (92, NULL),
    (93, NULL),
    (94, NULL);

INSERT INTO teams_record
            (
                id_affiliate,
                id_team,
                entry_date
            )
VALUES
    ( 1, 1, '2016-06-09'),
    ( 2, 1, '2017-04-06'),
    ( 3, 1, '2017-04-23'),
    ( 4, 1, '2017-05-11'),
    ( 1, 2, '2017-08-01'),
    ( 5, 1, '2017-08-05'),
    ( 2, 2, '2018-06-08'),
    ( 6, 1, '2018-06-12'),
    ( 7, 1, '2018-08-01'),
    ( 1, 3, '2018-09-10'),
    ( 8, 1, '2018-09-17'),
    ( 9, 1, '2019-04-15'),
    (10, 1, '2019-05-20'),
    ( 2, 3, '2019-06-14'),
    ( 1, 4, '2020-12-27'),
    ( 7, 2, '2021-06-10');