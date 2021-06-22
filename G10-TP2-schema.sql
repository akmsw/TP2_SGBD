#Creación de la base de datos de pruebas.
CREATE DATABASE raffles_management_db;

#Selección de la base de datos para trabajar.
USE raffles_management_db;

#Creación de tablas.

#Tabla de géneros tabulados.
CREATE TABLE IF NOT EXISTS genders (
	id_gender INT NOT NULL AUTO_INCREMENT,
    gender VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_gender)
);

#Tabla de estados civiles tabulados.
CREATE TABLE IF NOT EXISTS marital_statuses (
	id_marital_status INT NOT NULL AUTO_INCREMENT,
    marital_status VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_marital_status)
);

#Tabla de países tabulados.
CREATE TABLE IF NOT EXISTS countries (
	id_country INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_country)
);

#Tabla de provincias tabuladas.
CREATE TABLE IF NOT EXISTS provinces (
	id_province INT NOT NULL AUTO_INCREMENT,
    id_country INT NOT NULL,
    province_name VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_province),

    FOREIGN KEY (id_country) REFERENCES countries (id_country)
);

#Tabla de ciudades tabuladas.
CREATE TABLE IF NOT EXISTS cities (
	id_city INT NOT NULL AUTO_INCREMENT,
    id_province INT NOT NULL,
    city_name VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_city),

    FOREIGN KEY (id_province) REFERENCES provinces (id_province)
);

#Tabla de métodos de pago tabulados.
CREATE TABLE IF NOT EXISTS payment_methods (
	id_payment_method INT NOT NULL AUTO_INCREMENT,
    payment_method VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_payment_method)
);

#Tabla de cantidad de cuotas tabuladas.
CREATE TABLE IF NOT EXISTS total_installments (
	id_total_installments INT NOT NULL AUTO_INCREMENT,
    total_installments INT NOT NULL,
    
    PRIMARY KEY (id_total_installments)
);

#Tabla de afiliados.
CREATE TABLE IF NOT EXISTS affiliates (
	id_affiliate INT NOT NULL AUTO_INCREMENT,
    id_gender INT NOT NULL,
    id_marital_status INT NOT NULL,
    id_city INT NOT NULL,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    dni INT NOT NULL,
    address VARCHAR (45) NOT NULL,
    phone_number VARCHAR (10) NOT NULL,
    email VARCHAR (35) NOT NULL,
    birth_date DATE NOT NULL,
    current_coursing_year INT NOT NULL,
    checkin_date DATE NOT NULL,
    
    PRIMARY KEY (id_affiliate),

    FOREIGN KEY (id_gender) REFERENCES genders (id_gender),
    FOREIGN KEY (id_marital_status) REFERENCES marital_statuses (id_marital_status),
    FOREIGN KEY (id_city) REFERENCES cities (id_city)
);

#Tabla de clientes.
CREATE TABLE IF NOT EXISTS customers (
	id_customer INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    dni INT NOT NULL,
    phone_number VARCHAR (10) NOT NULL,
    
    PRIMARY KEY (id_customer)
);

#Tabla de compras.
CREATE TABLE IF NOT EXISTS trades (
	id_trade INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    id_affiliate INT NOT NULL,
    id_payment_method INT NOT NULL,
    id_total_installments INT NOT NULL,
    purchase_date DATE,
    belonging_group INT NOT NULL,
    
    PRIMARY KEY (id_trade),

    FOREIGN KEY (id_customer) REFERENCES customers (id_customer),
    FOREIGN KEY (id_affiliate) REFERENCES affiliates (id_affiliate),
    FOREIGN KEY (id_payment_method) REFERENCES payment_methods (id_payment_method),
    FOREIGN KEY (id_total_installments) REFERENCES total_installments (id_total_installments)
);

#Tabla de rifas.
CREATE TABLE IF NOT EXISTS raffles (
	id_raffle INT NOT NULL AUTO_INCREMENT,
    id_trade INT NOT NULL,
    serial_no INT NOT NULL,
    price INT NOT NULL DEFAULT 150,
    print_year INT,
    
    PRIMARY KEY (id_raffle),

    FOREIGN KEY (id_trade) REFERENCES trades (id_trade)
);

#Tabla de grupos.
#Como GROUP es una palabra reservada, a los grupos los llamamos 'teams'.
CREATE TABLE IF NOT EXISTS teams (
	id_team INT NOT NULL AUTO_INCREMENT,
    sell_objective INT NOT NULL,
    
    PRIMARY KEY (id_team)
);

#Tabla de registro histórico de grupos.
CREATE TABLE IF NOT EXISTS teams_record (
	id_teams_record INT NOT NULL AUTO_INCREMENT,
    id_affiliate INT NOT NULL,
    id_team INT NOT NULL,
    entry_date DATE NOT NULL,
    
    PRIMARY KEY (id_teams_record),

    FOREIGN KEY (id_affiliate) REFERENCES affiliates (id_affiliate),
    FOREIGN KEY (id_team) REFERENCES teams (id_team)
);

#Tabla de cuotas.
CREATE TABLE IF NOT EXISTS installments (
	id_installment INT NOT NULL AUTO_INCREMENT,
    id_raffle INT NOT NULL,
    expiring_date DATE NOT NULL,
    
    PRIMARY KEY (id_installment),

    FOREIGN KEY (id_raffle) REFERENCES raffles (id_raffle)
);

#Tabla de pagos.
CREATE TABLE IF NOT EXISTS payments (
	id_payment INT NOT NULL AUTO_INCREMENT,
    id_installment INT NOT NULL,
    pay_date DATE,
    
    PRIMARY KEY (id_payment),

    FOREIGN KEY (id_installment) REFERENCES installments (id_installment)
);