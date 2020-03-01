-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2020 at 07:40 PM
-- Server version: 10.3.20-MariaDB-0ubuntu0.19.04.1
-- PHP Version: 7.3.14-1+ubuntu19.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman_buku_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` varchar(4) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `tahun`, `pengarang`) VALUES
('B001', 'Laskar Pelangi', '1945', 'Eko Bangsat'),
('B002', 'Habis Gelap Terbitlah Terang', '1996', 'R.A Kartini'),
('B003', 'Bahasa Indonesia Kelas XI', '1959', 'Budi Utomo'),
('B004', 'Bahasa Inggris Kelas XI', '2001', 'Riyan Purwanto'),
('B005', 'Sejarah Indonesia Kelas XI', '2002', 'Adi Nugroho');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `nis` int(4) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_daftar`
--

INSERT INTO `tb_daftar` (`nis`, `nama`, `kelas`, `telp`, `alamat`, `username`, `email`, `password`) VALUES
(9910, 'Wayan Kapeng', 'X RPL 4', '044224', 'baluk', 'hai03', 'es@n', 'tes'),
(9934, 'eka darmawan', 'XI RPL 1', '081234567890', 'kelurahan batu agung', 'eka001', 'darmawan@gmail.com', 'saweraksasa'),
(9936, 'Ngurah Umbara', 'XI RPL 1', '083114263326', 'Desa Tegal Badeng Timur', 'apokade@gmail.com', 'apokade@gmail.com', 'tesbeneh'),
(9939, 'andika tri parta', 'XI RPL 1', '083112456789', 'kebon', 'mangdika04', 'andika@gmail.com', 'cobacoba'),
(9940, 'Eri Setiawan', 'XI RPL 1', '857384', 'Desa Baluk', 'eri03', 'erisetiawan202020', 'ettetetetet'),
(9945, 'Sidik Armawan', 'XI RPL 1', '085738434953', 'Desa Prancak', 'sidik03', 'fafaffa@gmail.com', 'tesbeneh'),
(9955, 'Ika Ari Koriasih', 'XI RPL 1', '087816616691', 'Desa Baluk', 'ika28', 'ikaari@gmail.com', 'bebas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_buku` int(4) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `nama_pengarang` varchar(50) DEFAULT NULL,
  `tanggal_peminjaman` varchar(30) DEFAULT NULL,
  `tanggal_kembali` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  MODIFY `id_buku` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
