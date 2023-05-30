-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 08:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_obat`
--

CREATE TABLE `detail_obat` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `deskripsi_obat` varchar(100) NOT NULL,
  `indikasi_obat` varchar(100) NOT NULL,
  `aturan_minum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_obat`
--

INSERT INTO `detail_obat` (`id`, `nama_produk`, `deskripsi_obat`, `indikasi_obat`, `aturan_minum`) VALUES
(1, 'antimo', 'obat antimo cair', 'untuk mabuk perjalanan', '1x setiap mau perjalanan'),
(2, 'amoxilin', 'obat amoxilin tablet ', 'untuk pegal dan nyeri', '3x 1hari'),
(3, 'bodrexin', 'obat bodrexin tablet', 'untuk pusing ', '1x setelah muncul gejala pusing'),
(4, 'fatigon', 'obat fatigon tablet', 'untuk migren', '1x setelah muncul gejala migren'),
(5, 'gastrucid', 'obat gastrucid siroup', 'untuk magh', '3x 1 hari'),
(6, 'paracetamol', 'obat paracetamol siroup', 'untuk demam', '3x 1 hari'),
(7, 'promag', 'obat promag tablet', 'untuk magh', '3x 1 hari'),
(8, 'proris', 'obat proris', 'untuk demam', '3x 1 hari'),
(9, 'recovit', 'obat recovit siroup', 'untuk imune tubuh', '3x 1 hari'),
(10, 'teosal', 'obat teosal tablet', 'untuk sesak nafas', '3x 1 hari');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `jenis_transaksi` varchar(50) NOT NULL,
  `jumlah_produk` int(50) NOT NULL,
  `harga_produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `kode_transaksi`, `jenis_transaksi`, `jumlah_produk`, `harga_produk`) VALUES
(1, 111, 'cash', 10, 'Rp. 3.500'),
(2, 222, 'cash', 10, 'Rp. 3.500'),
(3, 333, 'credit', 20, 'Rp.30.000'),
(4, 444, 'credit', 1, 'Rp. 15.000'),
(5, 555, 'cash', 1, 'Rp. 3.500'),
(6, 666, 'credit', 1, 'Rp.5.000'),
(7, 777, 'cash', 1, 'Rp.5.000'),
(8, 888, 'cash', 1, 'Rp.10.000'),
(9, 999, 'credit', 1, 'Rp. 15.000'),
(10, 101010, 'cash', 1, 'Rp. 3.500');

-- --------------------------------------------------------

--
-- Table structure for table `id_pelanggan`
--

CREATE TABLE `id_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_pelanggan`
--

INSERT INTO `id_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_hp`, `jenis_kelamin`) VALUES
(1111, 'susi', 'subang', '0987654', 'P'),
(2222, 'hasna', 'subang', '19-18917971291', 'P'),
(3333, 'monika', 'subang', '792746969202', 'P'),
(4444, 'vina', 'subang', '083195688728', 'P'),
(5555, 'runengsih', 'subang', '083195688728', 'P'),
(6666, 'maya', 'subang', '083195688728', 'P'),
(7777, 'dilah', 'subang', '083195688728', 'P'),
(8888, 'Sandi', 'bandung', '083195688728', 'L'),
(9999, 'aldi', 'bandung', '0895358708070', 'L'),
(10101010, 'kipli', 'bandung', '0895358708070', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `nip_karyawan` int(10) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`nip_karyawan`, `nama_karyawan`, `alamat`, `jenis_kelamin`) VALUES
(1111, 'zidan', 'bandung', 'L'),
(2222, 'adib', 'subang', 'L'),
(3333, 'zidan', 'subang', 'L'),
(4444, 'abil', 'subang', 'L'),
(5555, 'ican', 'bandung', 'L'),
(6666, 'nawap', 'subang', 'L'),
(7777, 'fahri', 'bandung', 'L'),
(8888, 'eqi', 'subang', 'L'),
(9999, 'dinara', 'subang', 'P'),
(10101010, 'firda', 'subang', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_produk` int(10) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jenis_produk` varchar(50) NOT NULL,
  `stock_produk` int(10) NOT NULL,
  `harga_produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_produk`, `nama_produk`, `jenis_produk`, `stock_produk`, `harga_produk`) VALUES
(1, 'paracetamol', 'siroup', 100, 'Rp. 3.500'),
(2, 'promag', 'tablet', 120, 'Rp.5.000'),
(3, 'fatigon', 'kapsul', 130, 'Rp.10.000'),
(4, 'teosal', 'tablet', 150, 'Rp.2.5000'),
(5, 'amoxilin', 'tablet', 110, 'Rp.5.000'),
(6, 'proris', 'siroup', 120, 'Rp.30.000'),
(7, 'gastrucid', 'siroup', 115, 'Rp. 15.000'),
(8, 'recovit', 'siroup', 160, 'Rp. 20.000'),
(9, 'bodrexin', 'tablet', 130, 'Rp. 130.000'),
(10, 'antimo', 'cair', 90, 'Rp. 3.000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_pelanggan` int(50) NOT NULL,
  `id_produk` int(20) NOT NULL,
  `nip_karyawan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `kode_transaksi`, `tanggal_transaksi`, `id_pelanggan`, `id_produk`, `nip_karyawan`) VALUES
(1, 111, '2016-05-04', 1111, 1, 1111),
(2, 222, '2017-05-04', 2222, 2, 2222),
(3, 333, '2023-05-09', 3333, 3, 3333),
(7, 666, '2021-10-08', 6666, 6, 6666),
(8, 777, '2019-05-03', 7777, 7, 7777),
(9, 888, '2017-05-11', 8888, 8, 8888),
(10, 999, '2023-05-26', 9999, 9, 9999),
(11, 101010, '2015-05-16', 10101010, 10, 10101010),
(12, 444, '2016-05-13', 4444, 4, 4444),
(13, 555, '2020-05-23', 5555, 5, 5555);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_obat`
--
ALTER TABLE `detail_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_produk` (`nama_produk`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `id_pelanggan`
--
ALTER TABLE `id_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`nip_karyawan`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `nama_produk` (`nama_produk`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `nip_karyawan` (`nip_karyawan`),
  ADD KEY `kode_transaksi` (`kode_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_obat`
--
ALTER TABLE `detail_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `id_pelanggan`
--
ALTER TABLE `id_pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10101011;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `nip_karyawan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10101011;

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_obat`
--
ALTER TABLE `detail_obat`
  ADD CONSTRAINT `detail_obat_ibfk_1` FOREIGN KEY (`nama_produk`) REFERENCES `tb_obat` (`nama_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`kode_transaksi`) REFERENCES `tb_transaksi` (`kode_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `id_pelanggan`
--
ALTER TABLE `id_pelanggan`
  ADD CONSTRAINT `id_pelanggan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_transaksi` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD CONSTRAINT `tb_karyawan_ibfk_1` FOREIGN KEY (`nip_karyawan`) REFERENCES `tb_transaksi` (`nip_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_obat` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
