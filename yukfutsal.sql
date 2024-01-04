-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 06:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yukfutsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `foto`) VALUES
('achyar', 'Achyar', 'rifqiachyar30@gmail.com', '11', 'Achyar.png'),
('fadil', 'Fadil', 'fadil@gmail.com', '11', 'Fadil.jpg'),
('tania', 'Tania', 'tania@gmail.com', '11', 'Tania.jpg'),
('theo', 'Theo', 'theo@gmail.com', '11', 'Theo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bayar_cod`
--

CREATE TABLE `bayar_cod` (
  `id_book` varchar(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bayar_cod`
--

INSERT INTO `bayar_cod` (`id_book`, `jumlah_bayar`, `bayar`, `status`) VALUES
('KB00000002', 100000, 100000, 'Selesai'),
('KB00000003', 200000, 200000, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `bayar_transfer`
--

CREATE TABLE `bayar_transfer` (
  `id_book` varchar(10) NOT NULL,
  `rek_kirim` varchar(30) NOT NULL,
  `rek_tujuan` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bayar_transfer`
--

INSERT INTO `bayar_transfer` (`id_book`, `rek_kirim`, `rek_tujuan`, `status`, `bukti_bayar`) VALUES
('KB00000001', '010020931847834', 'bri', 'Selesai', 'auth-providers.png'),
('KB00000005', '3931086632', 'bca', 'Menunggu Konfirmasi admin', 'WhatsApp Image 2023-12-15 at 15.50.31.jpeg'),
('KB00000006', '123123123', 'bca', 'Telah Dikonfirmasi', 'Green & White Modern Adventure Logo.png'),
('KB00000007', '12220565', 'bca', 'Telah Dikonfirmasi', '1678077-ryzen-radeon-graphics-1260x709.webp');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id_lap` varchar(5) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam` varchar(15) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lap` varchar(5) NOT NULL,
  `jenis_rumput` varchar(20) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `harga` int(20) NOT NULL,
  `no_lap` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`id_lap`, `jenis_rumput`, `foto`, `harga`, `no_lap`, `username`) VALUES
('LP011', 'beton/semen', 'Lap Gaya Futsal.jpg', 600000, '01', 'tania'),
('LP012', 'beton/semen', 'Lap S-Class Futsal.jpg', 65000, '01', 'tania2'),
('LP013', 'beton/semen', 'Lap Planet Futsal.jpg', 50000, '01', 'tania3'),
('LP014', 'beton/semen', 'Lap.Sumber.jpg', 55000, '01', 'the');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username_member` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ver_code` varchar(255) NOT NULL,
  `lupa_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username_member`, `nama`, `tgl_lahir`, `jk`, `email`, `password`, `foto`, `ver_code`, `lupa_pass`) VALUES
('fadilbsi', 'Fadillah Rohmat BSI', '1990-01-01', 'L', 'fadilrohmatbsi@gmail.com', '11', 'Fadil.jpg', '', ''),
('the', 'THEO', '2003-01-05', 'L', 'theo@gmail.com', '11', 'ubuntu.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `username` varchar(50) NOT NULL,
  `nama_opt` varchar(100) NOT NULL,
  `nama_futsal` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `alamat_futsal` varchar(250) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `ver_code` varchar(255) NOT NULL,
  `lupa_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`username`, `nama_opt`, `nama_futsal`, `email`, `password`, `alamat`, `alamat_futsal`, `kota`, `foto`, `ver_code`, `lupa_code`) VALUES
('tania', 'Tania', 'Zona Futsal Surakarta (Lapangan Gaya Futsal)', 'tania@gmail.com', '11', 'Surakarta', 'Jl. Tentara Pelajar N0.90, Gilingan', 'Surakarta', 'Lap Gaya Futsal.jpg', '503303842373f0ae77d6b6338fc1a1d4', ''),
('tania2', 'Tania2', 'Zona Futsal Surakarta (Lapangan S-Class Futsal)', 'tania2@gmail.com', '11', 'Surakarta', 'Jl. Jend Urip Sumoharjo, Jebres, Surakarta.', 'Surakarta', 'Lap S-Class Futsal.jpg', '239913f9f5231791fa7c5c42377b23ab', ''),
('tania3', 'Tania3', 'Zona Futsal Surakarta (Lapangan Planet Futsal)', 'tania3@gmail.com', '11', 'Surakarta', 'Jl. R.M Said No.118, Punggawan, Banjarsari, Surakarta.', 'Surakarta', 'Lap Planet Futsal.jpg', 'e19c7938fbfecf44c4e01005758001fd', ''),
('the', 'Theo', 'Zona Futsal Surakarta (Lapangan Sumber)', 'theoracing@gmail.com', '11', 'Surakarta', 'Sumber, Kec. Banjarsari', 'Surakarta', 'Lap.Sumber.jpg', 'eb2e01bfdc94adaa4b548a1f6a210884', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_book` varchar(10) NOT NULL,
  `username_member` varchar(30) NOT NULL,
  `id_lap` varchar(5) NOT NULL,
  `tgl_book` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `tgl_main` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_berakhir` time NOT NULL,
  `jenis_bayar` varchar(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_book`, `username_member`, `id_lap`, `tgl_book`, `batas_bayar`, `tgl_main`, `jam_mulai`, `jam_berakhir`, `jenis_bayar`, `total_harga`, `status`) VALUES
('KB00000001', 'risqi17', 'LP003', '2017-01-02 15:26:53', '2017-01-02 21:26:53', '2017-01-03', '18:00:00', '20:00:00', 'transfer', 100000, 'Selesai'),
('KB00000002', 'risqi17', 'LP003', '2017-01-02 15:36:52', '2017-01-02 21:36:52', '2017-01-03', '18:00:00', '20:00:00', 'cod', 100000, 'Selesai'),
('KB00000003', 'rijal-86K9', 'LP002', '2017-01-02 15:46:43', '2017-01-02 21:46:43', '2017-01-03', '12:00:00', '14:00:00', 'off cod', 200000, 'Selesai'),
('KB00000004', 'risqi17', 'LP001', '2017-01-02 20:51:41', '2017-01-03 02:51:41', '2017-01-03', '17:00:00', '19:00:00', 'transfer', 130000, 'Dibatalkan'),
('KB00000005', 'fadilbsi', 'LP011', '2023-12-15 15:48:37', '2023-12-15 18:48:37', '2023-12-15', '20:00:00', '22:00:00', 'transfer', 1200000, 'Selesai'),
('KB00000006', 'anjay', 'LP011', '2023-12-30 19:51:15', '2023-12-30 22:51:15', '2023-12-31', '05:00:00', '07:00:00', 'transfer', 1200000, 'Selesai'),
('KB00000007', 'the', 'LP014', '2024-01-04 12:01:43', '2024-01-04 18:01:43', '2024-01-05', '07:00:00', '10:00:00', 'transfer', 165000, 'Telah Dikonfirmasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username_member`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
