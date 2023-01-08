-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 08, 2023 at 10:40 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiketkapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `kapal`
--

CREATE TABLE `kapal` (
  `id_kapal` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nm_kapal` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kapal`
--

INSERT INTO `kapal` (`id_kapal`, `gambar`, `nm_kapal`, `deskripsi`) VALUES
(6, '1670928739_db949e2b9c86fae2534a.jpeg', 'Kapal Marina', 'Waisai adalah ibu kota Kabupaten Raja Ampat yang berada di bagian selatan Pulau Waigeo, yang dibangun pada tahun 2003 seiring dengan pemekaran Raja Ampat menjadi kabupaten. Waisai merupakan rumah bagi sekitar 10.000 penduduk, yang beberapa tahun belakangan ini berkembang menjadi titik transit bagi wisatawan. Dapat diakses dengan kapal cepat dari Kota Sorong, Waisai adalah kota kecil yang masih berkembang dengan penduduk setempat yang ramah.'),
(7, '1670928767_a1648158f3222635e100.jpeg', 'Kapal Marina', 'Waisai adalah ibu kota Kabupaten Raja Ampat yang berada di bagian selatan Pulau Waigeo, yang dibangun pada tahun 2003 seiring dengan pemekaran Raja Ampat menjadi kabupaten. Waisai merupakan rumah bagi sekitar 10.000 penduduk, yang beberapa tahun belakangan ini berkembang menjadi titik transit bagi wisatawan. Dapat diakses dengan kapal cepat dari Kota Sorong, Waisai adalah kota kecil yang masih berkembang dengan penduduk setempat yang ramah.'),
(8, '1670928798_72d7416aef91697fe8df.jpeg', 'Kapal Marina II', 'Waisai adalah ibu kota Kabupaten Raja Ampat yang berada di bagian selatan Pulau Waigeo, yang dibangun pada tahun 2003 seiring dengan pemekaran Raja Ampat menjadi kabupaten. Waisai merupakan rumah bagi sekitar 10.000 penduduk, yang beberapa tahun belakangan ini berkembang menjadi titik transit bagi wisatawan. Dapat diakses dengan kapal cepat dari Kota Sorong, Waisai adalah kota kecil yang masih berkembang dengan penduduk setempat yang ramah.');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nm_pengguna` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jk` char(15) NOT NULL,
  `nohp` varchar(17) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nm_pengguna`, `email`, `jk`, `nohp`, `password`, `level`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Laki-Laki', '23423', 'admin', 'Admin'),
(4, 'wandy', 'suwandiaminsangaji@gmail.com', 'Laki-Laki', '082256330920', 'wandy123', 'Pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `pesantiket`
--

CREATE TABLE `pesantiket` (
  `id_pemesanan` int(11) NOT NULL,
  `nm_pemesan` varchar(50) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `jk` char(15) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `nik` varchar(17) NOT NULL,
  `nohp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `dewasa` int(11) NOT NULL,
  `bayi` int(11) NOT NULL,
  `jeniskendaraan` varchar(20) NOT NULL,
  `id_pembayaran` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `aksi` int(11) NOT NULL,
  `total_pembayaran` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesantiket`
--

INSERT INTO `pesantiket` (`id_pemesanan`, `nm_pemesan`, `id_pengguna`, `jk`, `tempat_lahir`, `tgl_lahir`, `tgl_pemesanan`, `nik`, `nohp`, `alamat`, `dewasa`, `bayi`, `jeniskendaraan`, `id_pembayaran`, `gambar`, `aksi`, `total_pembayaran`) VALUES
(7, 'Wandy', 4, 'Laki-Laki', 'Sorong', '1987-01-13', '2022-12-13', '7304090404940003', '082256330920', 'Sorong', 2, 0, 'Golongan I', 5, '1670928452_2f58f212b8e39a5606ee.jpg', 3, '36000'),
(8, 'Ratih', 4, 'Perempuan', 'Sorong', '2023-01-01', '2023-01-08', '7304090404940002', '082256330920', 'ahsbhasdb', 1, 0, '-Pilih Jenis Kendara', 5, '1673174126_f8b73eb9bf0a3ee149e7.png', 3, '125000');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_pembayaran` int(11) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `norek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_pembayaran`, `bank`, `norek`) VALUES
(1, 'BCA', '765'),
(2, 'BRI', '234567'),
(3, 'BNI', '65456'),
(4, 'NTB', '4365'),
(5, 'MANDIRI', '8687'),
(6, 'OVO', '983'),
(7, 'DANA', '983');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kapal`
--
ALTER TABLE `kapal`
  ADD PRIMARY KEY (`id_kapal`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `pesantiket`
--
ALTER TABLE `pesantiket`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kapal`
--
ALTER TABLE `kapal`
  MODIFY `id_kapal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesantiket`
--
ALTER TABLE `pesantiket`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
