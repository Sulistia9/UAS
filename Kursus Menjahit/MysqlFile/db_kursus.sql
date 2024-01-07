-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 07:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `db_kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kursus_menjahit`
--

CREATE TABLE
    `data_kursus_menjahit` (
        `id` int(11) NOT NULL,
        `nama` varchar(100) NOT NULL,
        `alamat` varchar(15) NOT NULL,
        `email` varchar(50) NOT NULL,
        `tanggal_lahir` date NOT NULL,
        `jenis_kelamin` enum('Laki-laki', 'Perempuan') NOT NULL,
        `telepon` varchar(100) NOT NULL,
        `pekerjaan` varchar(100) NOT NULL,
        `jenis` enum(
            'Tingkat Dasar',
            'Tingkat Keterampilan',
            'Tingkat Mahir'
        ) NOT NULL,
        `gambar` varchar(100) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_kursus_menjahit`
--

INSERT INTO
    `data_kursus_menjahit` (
        `id`,
        `nama`,
        `alamat`,
        `email`,
        `tanggal_lahir`,
        `jenis_kelamin`,
        `telepon`,
        `pekerjaan`,
        `jenis`,
        `gambar`
    )
VALUES (
        1,
        'Nurhasanah',
        'Jambi',
        'hasanah@gmail.com',
        '2003-02-23',
        'Perempuan',
        '08678990651',
        'Mahasiswa',
        'Tingkatan Terampil',
        'Nurhasanah.jpg'
    ), (
        2,
        'Refi Safitri',
        'Jambi',
        'refi@gmail.com',
        '2001-6-15',
        'Perempuan',
        '08934482452',
        'Karyawan',
        'Tingkat Dasar',
        'Refi.jpg'
    ), (
        3,
        'Elma',
        'Jambi',
        'elma@gmail.com',
        '2005-01-29',
        'Perempuan',
        '08399221013',
        'Mahasiswa',
        'Tingkat Dasar',
        'Elma.jpg'
    ), (
        4,
        'Syarifah',
        'Jambi',
        'syifa@gmail.com',
        '2007-09-26',
        'Perempuan',
        '08389900174',
        'Pelajar',
        'Tingkat Terampil',
        'Syarifah.jpg'
    ), (
        5,
        'Jamila',
        'Jambi',
        'mila@gmail.com',
        '1980-06-12',
        'Perempuan',
        '08390300145',
        'Penjahit',
        'Tingkat Mahir',
        'Jamila.jpg'
    ), (
        6,
        'Nafsiah',
        'Jambi',
        'nafsiah@gmail.com',
        '1993-03-18',
        'Perempuan',
        '08323089706',
        'Penjahit',
        'Tigkat Mahir',
        'Nafsiah.jpg'
    ), (
        7,
        'Fatimah',
        'Jambi',
        'fatimah@gmail.com',
        '2001-11-15',
        'Perempuan',
        '08345763227',
        'Karyawan',
        'Tingkat Terampil',
        'Fatimah.jpg'
    ), (
        8,
        'Linda',
        'Jambi',
        'linda@gmail.com',
        '2006-12-11',
        'Perempuan',
        '08098537108',
        'Pelajar',
        'Tingkat Terampil',
        'Linda.jpg'
    ), (
        9,
        'Bening Al-Jannah',
        'Jambi',
        'jannah@gmail.com',
        '2008-01-14',
        'Perempuan',
        '08323030011',
        'Pelajar',
        'Tingkat Dasar',
        'Jannah.jpg'
    ), (
        10,
        'Junita',
        'Jambi',
        'junita@gmail.com',
        '2006-05-10',
        'Perempuan',
        '08323030011',
        'Pelajar',
        'Tingkat Dasar',
        'Junita.jpg'
    ), (
        11,
        'Jeni ',
        'Jambi',
        'Jeni@gmail,com',
        '1998-05-18',
        'Perempuan',
        '086745328811',
        'Penjahit',
        'Tingkat Mahir',
        'Jeni.jpg'
    ), (
        12,
        'Salwa',
        'Jambi',
        'salwa@gmail.com',
        '2002-02-07',
        'Perempuan',
        '08658793212',
        'Ibu Rumah Tangga',
        'Tingkat Dasar',
        'Salwa.jpg'
    ), (
        13,
        'Lili',
        'Jambi',
        'lii@gmail.com',
        '2000-06-04',
        'Perempuan',
        '08233256713',
        'Ibu Rumah Tangga',
        'Tingkat Keterampilan',
        'Lili.jpg'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `registeration`
--
CREATE TABLE
    `registeration` (
        `Reg_ID` int(11) NOT NULL,
        `Name` varchar(40) DEFAULT NULL,
        `Email` varchar(50) DEFAULT NULL,
        `Passowrd` varchar(40) DEFAULT NULL,
        `Role_ID_FK` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data untuk tabel `registeration`
--
INSERT INTO
    `registeration` (
        `Reg_ID`,
        `Name`,
        `Email`,
        `Passowrd`,
        `Role_ID_FK`
    )
VALUES (
        1,
        'Admin',
        'admin@gmail.com',
        '12345',
        1
    ), (
        2,
        'Pimpinan',
        'pimpinan@gmail.com',
        '12345',
        2
    ), (
        3,
        'Staf',
        'staf@gmail.com',
        '12345',
        3
    );

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE
    `roles` (
        `ID` int(11) NOT NULL,
        `Roles` varchar(20) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO
    `roles` (`ID`, `Roles`)
VALUES (1, 'Admin'), (2, 'Pimpinan'), (3, 'Staf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_kursus_menjahit`
--
ALTER TABLE `data_kursus_menjahit` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `registeration`
--
ALTER TABLE `registeration`
ADD PRIMARY KEY (`Reg_ID`),
ADD
    UNIQUE KEY `email_id` (`Email`),
ADD
    KEY `Role_ID_FK` (`Role_ID_FK`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles` ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_kursus_menjahit`
--
ALTER TABLE
    `data_kursus_menjahit` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 10;

--
-- AUTO_INCREMENT untuk tabel `registeration`
--
ALTER TABLE
    `registeration` MODIFY `Reg_ID` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 11;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE
    `roles` MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `registeration`
--
ALTER TABLE `registeration`
ADD
    CONSTRAINT `registeration_ibfk_1` FOREIGN KEY (`Role_ID_FK`) REFERENCES `roles` (`ID`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;