-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 05:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trimitra`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nik`, `nama`, `dept`, `role`, `password`) VALUES
(1, 4730, 'Fathur Rahmansyah', 'IT', 0, '011c945f30ce2cbafc452f39840f025693339c42');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dept`
--

CREATE TABLE `tb_dept` (
  `id_dept` int(11) NOT NULL,
  `nama_dept` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dept`
--

INSERT INTO `tb_dept` (`id_dept`, `nama_dept`) VALUES
(1, 'Accounting & Tax'),
(11, 'HRD'),
(12, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lik`
--

CREATE TABLE `tb_lik` (
  `id_lik` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` int(11) NOT NULL DEFAULT 0,
  `departemen` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kat_karyawan` varchar(50) NOT NULL,
  `status_kecelakaan` varchar(50) NOT NULL,
  `kerja_shift` varchar(50) NOT NULL,
  `usia` int(11) NOT NULL DEFAULT 0,
  `masuk_kerja` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `bagian_terluka` varchar(50) NOT NULL,
  `penanganan` varchar(255) NOT NULL,
  `perawatan` varchar(50) NOT NULL,
  `kond_tdk_aman` text NOT NULL,
  `tind_tdk_aman` text NOT NULL,
  `men` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `machine` varchar(255) NOT NULL,
  `tind_perbaikan` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `target` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_lik`
--

INSERT INTO `tb_lik` (`id_lik`, `tanggal`, `waktu`, `nama`, `nik`, `departemen`, `jabatan`, `kat_karyawan`, `status_kecelakaan`, `kerja_shift`, `usia`, `masuk_kerja`, `jenis_kelamin`, `bagian_terluka`, `penanganan`, `perawatan`, `kond_tdk_aman`, `tind_tdk_aman`, `men`, `material`, `method`, `machine`, `tind_perbaikan`, `pic`, `target`) VALUES
(7, '2020-07-05', '20:46:40', 'Enzi Andi ', 4578, 'Stamping', 'Operator', 'Karyawan', 'Ringan', 'Malam', 22, '2020-06-05', 'Laki-Laki', 'Kaki ', 'Betadine dan perban', 'Klinik TCH', 'Troli terlalu berat', 'Didorong terlalu cepat', 'Terburu buru', 'OK', 'Terlalu tergesa gesa', '', 'Perbaikan troli', 'Hambali', '2020-08-05'),
(8, '2020-07-05', '20:46:40', 'Enzi Andi ', 4578, 'Stamping', 'Operator', 'Karyawan', 'Ringan', 'Malam', 22, '2020-06-05', 'Laki-Laki', 'Kaki ', 'Betadine dan perban', 'Klinik TCH', 'Troli terlalu berat', 'Didorong terlalu cepat', 'Terburu buru', 'OK', 'Terlalu tergesa gesa', 'OK', 'Perbaikan troli', 'Hambali', '2020-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rs_list`
--

CREATE TABLE `tb_rs_list` (
  `id` int(11) NOT NULL,
  `nama_rs` varchar(250) NOT NULL DEFAULT '0',
  `alamat_rs` varchar(250) NOT NULL DEFAULT '0',
  `telepon_rs` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rs_list`
--

INSERT INTO `tb_rs_list` (`id`, `nama_rs`, `alamat_rs`, `telepon_rs`) VALUES
(1, 'Hosana Medika', 'Jalan Utama BIIE No. 1 Lippo, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17550', '89909877'),
(2, 'Omni', 'Komp The Oasis Kav No.1, Jl. Raya Cikarang - Cibarusah', '29779999'),
(3, 'Siloam', 'Jl. MH. Thamrin No.Kav. 105, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530', '29636900'),
(4, 'Permata Keluarga Lippo Cikarang', 'Lippo Cikarang, Jl. MH. Thamrin No.Kav.129, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17550', '89905588'),
(5, 'Amanda Cikarang', 'Jl. Raya Cikarang - Cibarusah No.83, Serang, Cikarang Sel., Bekasi, Jawa Barat 17330', '8971717'),
(6, 'Annisa', 'Jl. Raya Lemahabang No.31, Simpangan, Kec. Cikarang Utara, Bekasi, Jawa Barat 17836', '8904165'),
(7, 'Permata Keluarga Jababeka', 'Medical City, Jl. Dr. Cipto Mangunkusumo No.1a, Simpangan, Kec. Cikarang Utara, Bekasi, Jawa Barat 17533', '29083399'),
(8, 'Sentra Medika Cikarang', 'Jl. Industri Pasir Gombong, Cikarang, Kec. Cikarang Utara, Bekasi, Jawa Barat 17530', '-'),
(9, 'Karya Medika 1 Cibitung', 'Jl. Raya Imam Bonjol No.9B, Kalijaya, Kec. Cikarang Bar., Bekasi, Jawa Barat 17530', '8903003'),
(10, 'Bhakti Husada', 'Jl. RE. Martadinata, Karangbaru, Kec. Cikarang Utara, Bekasi, Jawa Barat 17530', '8900530'),
(11, 'MItra Keluarga Cikarang', 'Jl. Raya Industri No.100, Mekarmukti, Kec. Cikarang Utara, Bekasi, Jawa Barat 17550', '89840900'),
(12, 'Metro Jababeka', ' Jalan Anggrek I No. B2/2 Mekarmukti Cikarang Baru, Jl. Jababeka Raya, Mekarmukti, Kec. Cikarang Utara, Bekasi, Jawa Barat 17530', '89831626'),
(13, 'Awal Bros Bekasi Barat', ' Jl. KH. Noer Ali No.Kav. 17-18, RT.001/RW.009, Kayuringin Jaya, Kec. Bekasi Bar., Kota Bks, Jawa Barat 17144', '8868888');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `nik` int(11) NOT NULL DEFAULT 0,
  `dept` varchar(50) NOT NULL DEFAULT '',
  `jabatan` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `nik`, `dept`, `jabatan`) VALUES
(1, 'fathur rahmansyah', 4730, 'IT', 'Staff'),
(2, 'Andre Hehanusa', 2132, '1', 'Manager'),
(3, 'Astari Nadinne', 8888, 'HRD', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dept`
--
ALTER TABLE `tb_dept`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `tb_lik`
--
ALTER TABLE `tb_lik`
  ADD PRIMARY KEY (`id_lik`);

--
-- Indexes for table `tb_rs_list`
--
ALTER TABLE `tb_rs_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_dept`
--
ALTER TABLE `tb_dept`
  MODIFY `id_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_lik`
--
ALTER TABLE `tb_lik`
  MODIFY `id_lik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_rs_list`
--
ALTER TABLE `tb_rs_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
