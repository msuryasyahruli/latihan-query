CREATE DATABASE latihanSQL;

------------------------1 to 1------------------------

CREATE TABLE
    kepala_negara(
        id INT GENERATED ALWAYS AS IDENTITY,
        presiden VARCHAR(255),
        PRIMARY KEY(id)
    );

INSERT INTO
    pemerintah(presiden)
VALUES ('Raja Salman Bin Abdulaziz');

INSERT INTO pemerintah(presiden) VALUES ('Presiden Abdul Hamid');

INSERT INTO pemerintah(presiden) VALUES ('Raja Willem Alexander');

INSERT INTO pemerintah(presiden) VALUES('Raja Philippe');

INSERT INTO pemerintah(presiden) VALUES ('Presiden Rumen Radev');

INSERT INTO
    pemerintah(presiden)
VALUES ('Presiden Charles Savarin');

SELECT * FROM pemerintah;

CREATE TABLE
    negara(
        id INT GENERATED ALWAYS AS IDENTITY,
        negara VARCHAR(255),
        PRIMARY KEY(id),
        pemerintah_id INT,
        FOREIGN KEY(pemerintah_id) REFERENCES pemerintah(id),
        benua_id INT,
        Foreign Key (benua_id) REFERENCES benua(id)
    );

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Arab Saudi', 1, 1);

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Bangladesh', 2, 1);

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Belanda', 3, 4);

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Belgia', 4, 4);

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Bulgaria', 5, 4);

INSERT INTO negara(negara, pemerintah_id, benua_id) VALUES('Dominika', 6, 2);

SELECT * INTO negara;

------------------------1 to M------------------------

CREATE Table
    benua(
        id INT GENERATED ALWAYS AS IDENTITY,
        benua VARCHAR(255),
        PRIMARY KEY(id)
    );

INSERT INTO benua(benua) VALUES('Asia');

INSERT INTO benua(benua) VALUES('Amerika');

INSERT INTO benua(benua) VALUES('Australia');

INSERT INTO benua(benua) VALUES('Eropa');

INSERT INTO benua(benua) VALUES('Afrika');

SELECT * INTO benua;

------------------------M to M------------------------

CREATE Table
    penjual(
        id INT GENERATED ALWAYS AS IDENTITY,
        nama VARCHAR(255),
        lokasi VARCHAR(255),
        PRIMARY KEY(id), 
        produk_1 INT,
        produk_2 INT,
        produk_3 INT,
        produk_4 INT,
        Foreign Key (produk_1) REFERENCES produk(id),
        Foreign Key (produk_2) REFERENCES produk(id),
        Foreign Key (produk_3) REFERENCES produk(id),
        Foreign Key (produk_4) REFERENCES produk(id)
    );

INSERT INTO penjual(nama, lokasi, produk_1, produk_2) VALUES('dadang','mall', 1, 2);

INSERT INTO penjual(nama, lokasi, produk_1, produk_2, produk_3, produk_4) VALUES('asep','pinggir jalan', 1, 2, 4, 5);

INSERT INTO penjual(nama, lokasi, produk_1) VALUES('ujang','pasar', 3);

INSERT INTO penjual(nama, lokasi, produk_1, produk_2, produk_3) VALUES('cecep','kantin sekola', 1, 2, 5); 

INSERT INTO penjual(nama, lokasi, produk_1, produk_2) VALUES('omar','depan sekolah', 3, 5);

SELECT * INTO penjual;

CREATE Table
    produk(
        id INT GENERATED ALWAYS AS IDENTITY,
        nama_produk VARCHAR(255),
        PRIMARY KEY(id)
    );

INSERT INTO produk(nama_produk)VALUES('gorengan');

INSERT INTO produk(nama_produk)VALUES('es buah');

INSERT INTO produk(nama_produk)VALUES('nasi goreng');

INSERT INTO produk(nama_produk)VALUES('kebab');

INSERT INTO produk(nama_produk)VALUES('martabak');

SELECT * INTO produk;