 USE tienda_virtual;
 
 CREATE TABLE raw_american_users (
    id INT,
    name VARCHAR(100),
    surname VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    birth_date VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    address VARCHAR(255)
);
LOAD DATA INFILE '/ruta/american_users.csv'
INTO TABLE raw_american_users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/ruta/american_users.csv'
INTO TABLE raw_american_users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;








CREATE TABLE raw_european_users (
    id INT,
    name VARCHAR(100),
    surname VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    birth_date VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    address VARCHAR(255)
);
CREATE TABLE raw_companies (
    company_id VARCHAR(20),
    company_name VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    country VARCHAR(50),
    website VARCHAR(100)
);
CREATE TABLE raw_credit_cards (
    id VARCHAR(20),
    user_id INT,
    iban VARCHAR(50),
    pan VARCHAR(50),
    pin VARCHAR(10),
    cvv VARCHAR(10),
    track1 TEXT,
    track2 TEXT,
    expiring_date VARCHAR(20)
);
CREATE TABLE raw_products (
    id INT,
    product_name VARCHAR(100),
    price VARCHAR(20),
    colour VARCHAR(20),
    weight VARCHAR(20),
    warehouse_id VARCHAR(20)
);
CREATE TABLE raw_transactions (
    id VARCHAR(50),
    card_id VARCHAR(50),
    business_id VARCHAR(50),
    timestamp VARCHAR(50),
    amount VARCHAR(50),
    declined VARCHAR(10),
    product_ids VARCHAR(255),
    user_id INT,
    lat VARCHAR(50),
    longitude VARCHAR(50)
);

