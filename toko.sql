CREATE DATABASE tokobuku;
USE tokobuku;

-- complete: Membuat table user
CREATE TABLE users(
	username varchar(16) NOT NULL,
	password varchar(100) NOT NULL,
	status varchar(1) NOT NULL,
	PRIMARY KEY (username)
);
-- complete: memasukan data ke table user
INSERT INTO users (username, password, status) VALUES
('adityawiguna', 'thisis', '1'),
('zmarine', '123', '1');

-- complete:membuat table distributor
CREATE TABLE distributor(
	id varchar(14)NOT NULL,
	username varchar(16) NOT NULL,
	nama varchar(50) NOT NULL,
	alamat varchar(50) NOT NULL,
	telepon varchar(14) NOT NULL,
	PRIMARY KEY (id)
);
-- complete:menambahkan data ke table distributor
INSERT INTO distributor (id, username, nama, alamat, telepon) VALUES
('20170809132412', 'adityawiguna', 'Bamboomedia Cipta Persada', 'Renon', '0988776677'),
('20140809132412', 'zmarine', 'PT cccccccc', 'Jalan', '99088876655');
-- complete:membuat table kasir
CREATE TABLE kasir(
	id varchar(14)NOT NULL,
	username varchar(16) NOT NULL,
	nama varchar(50) NOT NULL,
	alamat varchar(50) NOT NULL,
	telepon varchar(14) NOT NULL,
	PRIMARY KEY (id)
);
-- complete:memasukan data ke table kasir
INSERT INTO kasir (id, username, nama, telepon) VALUES
('20140809132422', 'jd', 'Jhon Doe', '000999988'),
('20140809132426', 'joni', 'Jane Doe', '0002999');
-- complete:membuat table pasok
CREATE TABLE pasok(
	id varchar(14) NOT NULL,
	distributor_id varchar(14) NOT NULL,
	buku_id varchar(14) NOT NULL,
	jumlah int(4) NOT NULL,
	tanggal date(),
	PRIMARY KEY (id)
);
-- complete:memasukan data ke table pasok
INSERT INTO pasok (id, distributor_id, buku_id, jumlah, tanggal) VALUES
('20140809132422', '20170809132412', '111', 10, '2015-12-17');
-- complete:membuat table buku
CREATE TABLE buku(
	id varchar(14) NOT NULL,
	judul varchar(50) NOT NULL,
	isbn varchar (17) NOT NULL,
	penulis varchar (50) NOT NULL,
	penerbit varchar(50) NOT NULL,
	tahun varchar(4) NOT NULL,
	stok int(4) NOT NULL,
	harga_pokok int(4) NOT NULL,
	harga_jual integer(4) NOT NULL,
	ppn int(4) NOT NULL,
	item int(4) NOT NULL,
	PRIMARY KEY (id)
);
-- complete:memasukan data ke table buku
INSERT INTO buku (id, judul, isbn, penulis, penerbit, tahun, stok, harga_pokok, harga_jual, ppn, item) VALUES
('20140809132422', 'Belajar PPH', '978-3-16-14-84-10-0', 'BudiA', 'Bamboomedia', '2017', 30, 10000, 13000, 10, 1);
-- complete:membuat table penjualan
CREATE TABLE penjualan(
	id varchar(14) NOT NULL,
	kasir_id varchar(14) NOT NULL,
	buku_id varchar(14) NOT NULL,
	jumlah int(4) NOT NULL,
	total int(4) NOT NULL,
	tanggal date(),
	PRIMARY KEY (id)
);
-- complete:memasukan faker ke table penjualan
INSERT INTO penjualan (id, kasir_id, buku_id, jumlah, total, tanggal) VALUES
('20140809132422', '20140809132426', '20140809132422', 2, 20000, '2015-12-17');
