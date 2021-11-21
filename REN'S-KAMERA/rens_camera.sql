-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 01:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpemesanan`
--

CREATE TABLE `detailpemesanan` (
  `no_pemesanan` varchar(15) NOT NULL,
  `lama_pesan` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailpemesanan`
--

INSERT INTO `detailpemesanan` (`no_pemesanan`, `lama_pesan`, `total_harga`, `tanggal_pesan`) VALUES
('572WYiftzcSIDMQ', 3, 180000, '2019-06-14'),
('cOBU7CYjiTulKSQ', 3, 240000, '2019-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `fotoproduk`
--

CREATE TABLE `fotoproduk` (
  `id_foto` int(11) NOT NULL,
  `nama_foto` varchar(50) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotoproduk`
--

INSERT INTO `fotoproduk` (`id_foto`, `nama_foto`, `ukuran`, `tipe`) VALUES
(1, 'kamera1.jpg', 77635, 'image/jpeg'),
(2, 'kamera3.jpg', 84814, 'image/jpeg'),
(3, 'kamera4.jpg', 22503, 'image/jpeg'),
(4, 'lensa2.jpg', 5527, 'image/jpeg'),
(5, 'kamera6.jpg', 62980, 'image/jpeg'),
(6, 'lensa33.jpg', 120185, 'image/jpeg'),
(7, 'lensa44.jpg', 136919, 'image/jpeg'),
(8, 'lens1.jpg', 115803, 'image/jpeg'),
(9, 'drone1.jpg', 82331, 'image/jpeg'),
(10, 'mavic2.jpg', 10339, 'image/jpeg'),
(11, 'mavic mini.jpg', 15189, 'image/jpeg'),
(12, 'djiair 2s.jpg', 142762, 'image/jpeg'),
(13, 'phantom3.jfif', 26465, 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `itemproduk`
--

CREATE TABLE `itemproduk` (
  `id_bar` int(11) NOT NULL,
  `nama_bar` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `id_foto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemproduk`
--

INSERT INTO `itemproduk` (`id_bar`, `nama_bar`, `stok`, `harga`, `id_foto`) VALUES
(1, 'sony a6000', 2, '200.000', 1),
(2, 'Canon Eos 7D', 2, '200.000', 2),
(3, 'Canon Eos M3', 1, '150.000', 3),
(4, 'FE 35MM f1.2', 1, '100.000', 4),
(5, 'Sony a7mark III', 2, '300.000', 5),
(6, 'FE 85mm F1.8', 3, '150.000', 6),
(7, 'ZEISS 16-70mm', 1, '250.000', 7),
(8, 'FE 50mm f1.8', 3, '100.000', 8),
(9, 'DJI PHANTOM 4 PRO', 1, '750.000', 9),
(10, 'Dji Mavic 2', 2, '800.000', 10),
(11, 'Dji Mavic Mini', 3, '600.000', 11),
(12, 'Dji Air 2s', 2, '800.000', 12),
(13, 'DJI PHANTOM 3 PRO', 1, '750.000', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesan` int(11) NOT NULL,
  `id_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_pemesanan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesan`, `id_pelanggan`, `nama_pelanggan`, `email`, `no_pemesanan`) VALUES
(5, '123123', 'adnan', 'adnan@gmail.co', '572WYiftzcSIDMQ'),
(10, '13124', 'aisyah', 'aisyah123@gmail.com', 'cOBU7CYjiTulKSQ');

-- --------------------------------------------------------

--
-- Table structure for table `produkpemesanan`
--

CREATE TABLE `produkpemesanan` (
  `id_order` int(11) NOT NULL,
  `nomor_pemesanan` varchar(15) NOT NULL,
  `id_bar` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produkpemesanan`
--

INSERT INTO `produkpemesanan` (`id_order`, `nomor_pemesanan`, `id_bar`, `harga`, `kuantitas`) VALUES
(10, '572WYiftzcSIDMQ', 4, 100000, 1),
(11, '572WYiftzcSIDMQ', 6, 150000, 3),
(12, 'cOBU7CYjiTulKSQ', 1, 200000, 2),
(13, 'cOBU7CYjiTulKSQ', 6, 150000, 3),
(14, 'cOBU7CYjiTulKSQ', 8, 150000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpemesanan`
--
ALTER TABLE `detailpemesanan`
  ADD PRIMARY KEY (`no_pemesanan`);

--
-- Indexes for table `fotoproduk`
--
ALTER TABLE `fotoproduk`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `itemproduk`
--
ALTER TABLE `itemproduk`
  ADD PRIMARY KEY (`id_bar`),
  ADD KEY `id_foto` (`id_foto`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `no_pemesanan` (`no_pemesanan`);

--
-- Indexes for table `produkpemesanan`
--
ALTER TABLE `produkpemesanan`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `nomor_pemesanan` (`nomor_pemesanan`,`id_bar`),
  ADD KEY `id_bar` (`id_bar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fotoproduk`
--
ALTER TABLE `fotoproduk`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `itemproduk`
--
ALTER TABLE `itemproduk`
  MODIFY `id_bar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produkpemesanan`
--
ALTER TABLE `produkpemesanan`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemproduk`
--
ALTER TABLE `itemproduk`
  ADD CONSTRAINT `itemproduk_ibfk_1` FOREIGN KEY (`id_foto`) REFERENCES `fotoproduk` (`id_foto`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`no_pemesanan`) REFERENCES `detailpemesanan` (`no_pemesanan`);

--
-- Constraints for table `produkpemesanan`
--
ALTER TABLE `produkpemesanan`
  ADD CONSTRAINT `produkpemesanan_ibfk_1` FOREIGN KEY (`nomor_pemesanan`) REFERENCES `detailpemesanan` (`no_pemesanan`),
  ADD CONSTRAINT `produkpemesanan_ibfk_2` FOREIGN KEY (`id_bar`) REFERENCES `itemproduk` (`id_bar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
