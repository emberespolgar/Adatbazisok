-- a maszkolasokat a "szallaz adatbazis online" valtozatan vegeztem el

CREATE TABLE maszkoltVendeg2 (
    usernev nvarchar(255) MASKED WITH (FUNCTION = 'default()') NULL,
    email nvarchar(255) MASKED WITH (function = 'email()'),
    szul_dat DATE MASKED WITH (Function = 'default()')
);

-- beszuras 
INSERT INTO maszkoltVendeg2 (
   usernev, email, szul_dat) 
 VALUES
 ('paprita1', 'gergenyi@gmail.com', '2002-01-23')

-- lekerdezes

SELECT * FROM maszkoltVendeg2 

-- MaszkoltHozzafero1 hozzarendelese SELECT utasitashoz, bejelentkezesi jog nelkul

CREATE USER MaszkoltHozzafero1 WITHOUT Login;
GRANT SELECT ON maszkoltVendeg2 TO MaszkoltHozzafero1