-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 07:16 AM
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
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `phone`) VALUES
(1, 'Thomas Edison', 'thomas@edison.com', '0853-1234-5678'),
(2, 'Bill Gates', 'bill.gates@gmail.com', '0867-4321-5678'),
(3, 'Albert Einstein', 'einstein@yahoo.com', '123-543218'),
(4, 'Sandro ID', 'mail@sandro.id', '12345-6789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `db_barang_sample`
--
CREATE DATABASE IF NOT EXISTS `db_barang_sample` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_barang_sample`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori_barang` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_kategori_barang`, `barang`, `gambar`, `harga`) VALUES
(7, 6, 'Xiaomi Redmi 5A ', '207183gambar.png', 980000),
(8, 6, 'Xiaomi Redmi 5 Plus', '294182Redmi 5 Plus.png', 1700000),
(9, 6, 'Xiaomi Redmi Note 5 ', '538888Screenshot_1.png', 3300000),
(11, 5, 'Samsung Galaxy J2 Prime', '320437Screenshot_2.png', 1300000),
(12, 5, 'Samsung Galaxy A8', '979902Screenshot_1.png', 4200000),
(13, 5, 'Samsung Galaxy J7 Plus', '769396Screenshot_2.png', 3200000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_barang`
--

CREATE TABLE `tb_kategori_barang` (
  `id_kategori_barang` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_barang`
--

INSERT INTO `tb_kategori_barang` (`id_kategori_barang`, `kategori`, `keterangan`) VALUES
(5, 'Samsung', 'Berisi Produk Samsung'),
(6, 'Xiaomi', 'Berisi Produk Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_keluar`
--

CREATE TABLE `tb_transaksi_keluar` (
  `id_transaksi_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi_keluar`
--

INSERT INTO `tb_transaksi_keluar` (`id_transaksi_keluar`, `id_barang`, `jumlah`, `harga`, `username`, `tgl`) VALUES
(1, 7, 5, 980000, 'admin', '2018-06-02'),
(2, 7, 3, 980000, 'admin', '2018-06-01'),
(4, 12, 7, 4200000, 'admin', '2018-06-03'),
(5, 12, 3, 4200000, 'taufik', '2018-06-03'),
(8, 7, 2, 980000, 'taufik', '2018-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_masuk`
--

CREATE TABLE `tb_transaksi_masuk` (
  `id_transaksi_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi_masuk`
--

INSERT INTO `tb_transaksi_masuk` (`id_transaksi_masuk`, `id_barang`, `jumlah`, `harga`, `username`, `tgl`) VALUES
(1, 13, 15, 3200000, 'admin', '2018-05-26'),
(2, 12, 10, 4200000, 'admin', '2018-05-27'),
(5, 7, 20, 980000, 'taufik', '2018-05-30'),
(8, 9, 20, 3300000, 'taufik', '2018-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tipe` enum('staff','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`, `nama`, `tipe`) VALUES
('admin', '$2y$10$V1IVhWdTn1RCs2EGJfUu9eKFA9Gw/SbMAbWcYYuDo186fDwFTLzWW', 'Admin Aplikasi', 'admin'),
('taufik', '$2y$10$ma2KAS6cbc6IAHcxgi9WOuS.Eujp9Mr89nGxbPmGhhA3SCkUUUvEm', 'Taufik Hidayat', 'staff');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang` (
`id_barang` int(11)
,`id_kategori_barang` int(11)
,`barang` varchar(255)
,`gambar` varchar(255)
,`harga` int(11)
,`kategori` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang_keluar`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang_keluar` (
`keluar` decimal(32,0)
,`barang` varchar(255)
,`id_barang` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang_masuk`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang_masuk` (
`masuk` decimal(32,0)
,`barang` varchar(255)
,`id_barang` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_stok`
-- (See below for the actual view)
--
CREATE TABLE `vw_stok` (
`id_barang` int(11)
,`barang` varchar(255)
,`id_kategori_barang` int(11)
,`kategori` varchar(255)
,`masuk` decimal(32,0)
,`keluar` decimal(32,0)
,`stok` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_transaksi_keluar`
-- (See below for the actual view)
--
CREATE TABLE `vw_transaksi_keluar` (
`id_transaksi_keluar` int(11)
,`id_barang` int(11)
,`jumlah` int(11)
,`harga` int(11)
,`username` varchar(100)
,`tgl` date
,`barang` varchar(255)
,`kategori` varchar(255)
,`nama` varchar(100)
,`tgl_detail` varchar(72)
,`id_kategori_barang` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_transaksi_masuk`
-- (See below for the actual view)
--
CREATE TABLE `vw_transaksi_masuk` (
`id_transaksi_masuk` int(11)
,`id_barang` int(11)
,`jumlah` int(11)
,`harga` int(11)
,`username` varchar(100)
,`tgl` date
,`barang` varchar(255)
,`nama` varchar(100)
,`kategori` varchar(255)
,`tgl_detail` varchar(72)
,`id_kategori_barang` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_barang`
--
DROP TABLE IF EXISTS `vw_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang`  AS  select `a`.`id_barang` AS `id_barang`,`a`.`id_kategori_barang` AS `id_kategori_barang`,`a`.`barang` AS `barang`,`a`.`gambar` AS `gambar`,`a`.`harga` AS `harga`,`b`.`kategori` AS `kategori` from (`tb_barang` `a` join `tb_kategori_barang` `b`) where `a`.`id_kategori_barang` = `b`.`id_kategori_barang` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_barang_keluar`
--
DROP TABLE IF EXISTS `vw_barang_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang_keluar`  AS  select sum(`a`.`jumlah`) AS `keluar`,`b`.`barang` AS `barang`,`b`.`id_barang` AS `id_barang` from (`tb_transaksi_keluar` `a` join `tb_barang` `b`) where `a`.`id_barang` = `b`.`id_barang` group by `b`.`id_barang` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_barang_masuk`
--
DROP TABLE IF EXISTS `vw_barang_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang_masuk`  AS  select sum(`a`.`jumlah`) AS `masuk`,`b`.`barang` AS `barang`,`b`.`id_barang` AS `id_barang` from (`tb_transaksi_masuk` `a` join `tb_barang` `b`) where `a`.`id_barang` = `b`.`id_barang` group by `b`.`id_barang` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_stok`
--
DROP TABLE IF EXISTS `vw_stok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_stok`  AS  select `a`.`id_barang` AS `id_barang`,`a`.`barang` AS `barang`,`a`.`id_kategori_barang` AS `id_kategori_barang`,`a`.`kategori` AS `kategori`,ifnull(`b`.`masuk`,0) AS `masuk`,ifnull(`c`.`keluar`,0) AS `keluar`,ifnull(`b`.`masuk`,0) - ifnull(`c`.`keluar`,0) AS `stok` from ((`vw_barang` `a` left join `vw_barang_masuk` `b` on(`a`.`id_barang` = `b`.`id_barang`)) left join `vw_barang_keluar` `c` on(`a`.`id_barang` = `c`.`id_barang`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_transaksi_keluar`
--
DROP TABLE IF EXISTS `vw_transaksi_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_transaksi_keluar`  AS  select `a`.`id_transaksi_keluar` AS `id_transaksi_keluar`,`a`.`id_barang` AS `id_barang`,`a`.`jumlah` AS `jumlah`,`a`.`harga` AS `harga`,`a`.`username` AS `username`,`a`.`tgl` AS `tgl`,`b`.`barang` AS `barang`,`c`.`kategori` AS `kategori`,`d`.`nama` AS `nama`,date_format(`a`.`tgl`,'%d %M %Y') AS `tgl_detail`,`b`.`id_kategori_barang` AS `id_kategori_barang` from (((`tb_transaksi_keluar` `a` join `tb_barang` `b`) join `tb_kategori_barang` `c`) join `tb_user` `d`) where `a`.`id_barang` = `b`.`id_barang` and `b`.`id_kategori_barang` = `c`.`id_kategori_barang` and `a`.`username` = `d`.`username` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_transaksi_masuk`
--
DROP TABLE IF EXISTS `vw_transaksi_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_transaksi_masuk`  AS  select `a`.`id_transaksi_masuk` AS `id_transaksi_masuk`,`a`.`id_barang` AS `id_barang`,`a`.`jumlah` AS `jumlah`,`a`.`harga` AS `harga`,`a`.`username` AS `username`,`a`.`tgl` AS `tgl`,`b`.`barang` AS `barang`,`c`.`nama` AS `nama`,`d`.`kategori` AS `kategori`,date_format(`a`.`tgl`,'%d %M %Y') AS `tgl_detail`,`b`.`id_kategori_barang` AS `id_kategori_barang` from (((`tb_transaksi_masuk` `a` join `tb_barang` `b`) join `tb_user` `c`) join `tb_kategori_barang` `d`) where `a`.`id_barang` = `b`.`id_barang` and `a`.`username` = `c`.`username` and `b`.`id_kategori_barang` = `d`.`id_kategori_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategori_barang` (`id_kategori_barang`);

--
-- Indexes for table `tb_kategori_barang`
--
ALTER TABLE `tb_kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indexes for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  ADD PRIMARY KEY (`id_transaksi_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  ADD PRIMARY KEY (`id_transaksi_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_kategori_barang`
--
ALTER TABLE `tb_kategori_barang`
  MODIFY `id_kategori_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  MODIFY `id_transaksi_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  MODIFY `id_transaksi_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`id_kategori_barang`) REFERENCES `tb_kategori_barang` (`id_kategori_barang`);

--
-- Constraints for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  ADD CONSTRAINT `tb_transaksi_keluar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_transaksi_keluar_ibfk_2` FOREIGN KEY (`username`) REFERENCES `tb_user` (`username`);

--
-- Constraints for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  ADD CONSTRAINT `tb_transaksi_masuk_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_transaksi_masuk_ibfk_2` FOREIGN KEY (`username`) REFERENCES `tb_user` (`username`);
--
-- Database: `db_sistok`
--
CREATE DATABASE IF NOT EXISTS `db_sistok` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sistok`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `user`, `pass`, `nama`, `level`) VALUES
(1, 'khaer', 'd640b3ad1b21859dca846649541ffe95', 'Khaer Ansori', 1),
(3, 'gudang', '87ffdec1d67569a23445ed9f6138c102', 'Gudang', 2),
(4, 'manager', '2b7c577945389b0f27e30c2c09cdad61', 'Manager', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori_barang` int(11) NOT NULL,
  `id_satuan_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `id_kategori_barang`, `id_satuan_barang`, `nama_barang`) VALUES
(4, 2, 1, 'Indomie');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_barang`
--

CREATE TABLE `tbl_kategori_barang` (
  `id_kategori_barang` int(11) NOT NULL,
  `nama_kategori_barang` varchar(50) NOT NULL,
  `kode_kategori_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_barang`
--

INSERT INTO `tbl_kategori_barang` (`id_kategori_barang`, `nama_kategori_barang`, `kode_kategori_barang`) VALUES
(2, 'Makanan', 'MKN'),
(4, 'Bahan Baku', 'BHN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan_barang`
--

CREATE TABLE `tbl_satuan_barang` (
  `id_satuan_barang` int(11) NOT NULL,
  `nama_satuan_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan_barang`
--

INSERT INTO `tbl_satuan_barang` (`id_satuan_barang`, `nama_satuan_barang`) VALUES
(1, 'Bungkus'),
(2, 'Dus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stok_barang`
--

CREATE TABLE `tbl_stok_barang` (
  `id_stok_barang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stok_barang`
--

INSERT INTO `tbl_stok_barang` (`id_stok_barang`, `id_barang`, `stok_barang`) VALUES
(2, 4, 150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_admin`, `id_barang`, `jumlah`, `waktu`, `status`) VALUES
(1, 1, 4, 0, '0000-00-00 00:00:00', 1),
(2, 1, 4, 40, '0000-00-00 00:00:00', 1),
(3, 1, 4, 50, '2013-06-19 03:41:48', 1),
(4, 1, 4, 150, '2013-06-19 04:14:29', 0),
(5, 1, 4, 100, '2013-06-19 04:15:58', 1),
(6, 1, 4, 100, '2013-06-19 04:16:16', 0),
(7, 1, 4, 200, '2013-06-19 04:17:05', 0),
(8, 1, 4, 500, '2013-06-19 04:18:25', 1),
(9, 1, 4, 400, '2013-06-19 04:18:49', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_kategori_barang`
--
ALTER TABLE `tbl_kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indexes for table `tbl_satuan_barang`
--
ALTER TABLE `tbl_satuan_barang`
  ADD PRIMARY KEY (`id_satuan_barang`);

--
-- Indexes for table `tbl_stok_barang`
--
ALTER TABLE `tbl_stok_barang`
  ADD PRIMARY KEY (`id_stok_barang`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori_barang`
--
ALTER TABLE `tbl_kategori_barang`
  MODIFY `id_kategori_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_satuan_barang`
--
ALTER TABLE `tbl_satuan_barang`
  MODIFY `id_satuan_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_stok_barang`
--
ALTER TABLE `tbl_stok_barang`
  MODIFY `id_stok_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `db_tch`
--
CREATE DATABASE IF NOT EXISTS `db_tch` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_tch`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori_barang` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_kategori_barang`, `barang`, `gambar`, `harga`) VALUES
(1, 8, 'CE285A', '', 0),
(2, 8, 'CE285A', 'default.jpg', 100000),
(3, 9, 'Epson 664 Black', '563397download (1).png', 75000),
(4, 9, 'Epson 664 Magenta', '384029download (1).png', 75000),
(5, 9, 'Epson 664 Yellow', '887314download (1).png', 75000),
(6, 9, '505A', '680541download (1).png', 75000),
(7, 9, '505A', '158304download (1).png', 75000),
(8, 9, 'Epson 143 Black', '86037download (1).png', 120000),
(9, 10, 'Bando', '248091pp.png', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_barang`
--

CREATE TABLE `tb_kategori_barang` (
  `id_kategori_barang` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_barang`
--

INSERT INTO `tb_kategori_barang` (`id_kategori_barang`, `kategori`, `keterangan`) VALUES
(8, 'Toner', 'HP P1102'),
(9, 'Tinta', 'Epson'),
(10, 'Toner HP', 'Toner HP Besar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_keluar`
--

CREATE TABLE `tb_transaksi_keluar` (
  `id_transaksi_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_masuk`
--

CREATE TABLE `tb_transaksi_masuk` (
  `id_transaksi_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tipe` enum('staff','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang` (
`id_barang` int(11)
,`id_kategori_barang` int(11)
,`barang` varchar(255)
,`gambar` varchar(255)
,`harga` int(11)
,`kategori` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_barang`
--
DROP TABLE IF EXISTS `vw_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang`  AS  select `a`.`id_barang` AS `id_barang`,`a`.`id_kategori_barang` AS `id_kategori_barang`,`a`.`barang` AS `barang`,`a`.`gambar` AS `gambar`,`a`.`harga` AS `harga`,`b`.`kategori` AS `kategori` from (`tb_barang` `a` join `tb_kategori_barang` `b`) where `a`.`id_kategori_barang` = `b`.`id_kategori_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategori_barang` (`id_kategori_barang`);

--
-- Indexes for table `tb_kategori_barang`
--
ALTER TABLE `tb_kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indexes for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  ADD PRIMARY KEY (`id_transaksi_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  ADD PRIMARY KEY (`id_transaksi_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_kategori_barang`
--
ALTER TABLE `tb_kategori_barang`
  MODIFY `id_kategori_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  MODIFY `id_transaksi_keluar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  MODIFY `id_transaksi_masuk` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`id_kategori_barang`) REFERENCES `tb_kategori_barang` (`id_kategori_barang`);

--
-- Constraints for table `tb_transaksi_keluar`
--
ALTER TABLE `tb_transaksi_keluar`
  ADD CONSTRAINT `tb_transaksi_keluar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_transaksi_keluar_ibfk_2` FOREIGN KEY (`username`) REFERENCES `tb_user` (`username`);

--
-- Constraints for table `tb_transaksi_masuk`
--
ALTER TABLE `tb_transaksi_masuk`
  ADD CONSTRAINT `tb_transaksi_masuk_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_transaksi_masuk_ibfk_2` FOREIGN KEY (`username`) REFERENCES `tb_user` (`username`);
--
-- Database: `db_techno`
--
CREATE DATABASE IF NOT EXISTS `db_techno` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_techno`;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(30) NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(1, 'form', 'Candidate_Application_Form.docx', '2018-02-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(4, 'Meme', '2017-01-24 01:31:13', 1, 'M Fikri Setiadi', 6, '463cc7af7e2f6907c0aea38df42bb31c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(14, 'Follow Your Passion', '2017-01-24 01:32:24', 'd1838ca4ce20abf169001053aba71586.jpg', 4, 1, 'Administrator'),
(15, 'Follow Your Passion', '2017-01-24 01:32:34', '6e7bda472128488814432bdbbdb365a8.jpg', 4, 1, 'Administrator'),
(16, 'Follow Your Passion', '2017-01-24 01:32:44', 'a0bc176beeceff93741c7763fdf772c2.jpg', 4, 1, 'Administrator'),
(17, 'Follow Your Passion', '2017-01-24 01:33:08', '4ac2cf0d84b90cfcb26f4539bdfa104f.jpg', 4, 1, 'Administrator'),
(18, 'Follow Your Passion', '2017-01-24 01:33:24', '3ea0f7233df3c8aa3d5f084b75b4bb78.jpg', 4, 1, 'Administrator'),
(19, 'Follow Your Passion', '2017-08-08 00:54:58', 'dcb147372dce8fc5ec7506a410bb3923.jpg', 4, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(2, 'Teknologi', '2016-09-06 05:50:01'),
(5, 'Penelitian', '2016-09-06 06:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_web` varchar(100) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` int(2) DEFAULT 0,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_web`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Ping!', '2017-07-19 01:33:07', 1, 20, 0),
(4, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Nice Post :)', '2017-07-19 01:43:39', 1, 20, 0),
(5, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', '[removed]alert&amp;#40;No Found !&amp;#41;;[removed]', '2017-07-19 01:35:28', 0, 20, 2),
(6, 'Jokowi', 'joko@gmail.com', '', 'Ping !', '2017-07-19 02:48:24', 0, 20, 2),
(7, 'M Fikri Setiadi', NULL, NULL, 'Can I help you?', '2017-08-03 15:11:21', 1, 20, 1),
(8, 'M Fikri Setiadi', NULL, NULL, 'Thank you.', '2017-08-03 15:27:56', 1, 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', '-', 'fathurrahmansyah98@gmail.com', '082213964383', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '0f050fb938257f539cc72fffd9c5777a.jpg'),
(2, 'Fathur Rahmansyah', NULL, 'L', 'fathur', 'c2b1a7a28ace620c96223bf66bd037cf', NULL, 'fathurrahmansyah98@gmail.com', '082213964383', NULL, NULL, NULL, NULL, 1, '1', '2020-06-28 12:20:26', 'dd33443e8f9323363229571efbea4e4b.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 23:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 17:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-13 05:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-13 05:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-13 05:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-13 06:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-13 06:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 07:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 07:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 20:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 18:06:52', '::1', 'Chrome'),
(25, '2017-02-04 18:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 18:08:31', '::1', 'Chrome'),
(27, '2017-02-05 19:33:14', '::1', 'Chrome'),
(28, '2017-02-05 20:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 18:21:08', '::1', 'Chrome'),
(30, '2017-02-09 01:07:51', '::1', 'Chrome'),
(31, '2017-02-10 20:12:05', '::1', 'Chrome'),
(32, '2017-02-20 20:46:21', '::1', 'Chrome'),
(33, '2017-02-22 04:04:16', '::1', 'Chrome'),
(34, '2017-02-27 18:47:25', '::1', 'Chrome'),
(35, '2017-03-02 06:09:25', '::1', 'Chrome'),
(36, '2017-03-04 08:18:51', '::1', 'Chrome'),
(37, '2017-03-12 20:40:32', '::1', 'Chrome'),
(38, '2017-03-13 20:34:32', '::1', 'Chrome'),
(39, '2017-03-23 04:08:15', '::1', 'Firefox'),
(40, '2017-03-25 09:39:02', '::1', 'Firefox'),
(41, '2017-03-25 10:16:45', '::1', 'Firefox'),
(42, '2017-03-28 14:11:23', '::1', 'Firefox'),
(43, '2017-03-29 22:39:17', '::1', 'Firefox'),
(44, '2017-03-30 10:52:11', '::1', 'Firefox'),
(45, '2017-03-31 22:48:46', '::1', 'Firefox'),
(46, '2017-04-06 22:33:58', '::1', 'Firefox'),
(47, '2017-04-08 00:25:37', '::1', 'Firefox'),
(48, '2017-04-08 10:00:14', '::1', 'Firefox'),
(49, '2017-04-09 10:06:03', '::1', 'Firefox'),
(50, '2017-04-10 12:20:50', '::1', 'Firefox'),
(51, '2017-04-11 11:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 11:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 12:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 12:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 12:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 12:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 13:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 13:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 13:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 13:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 13:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 13:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 13:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 13:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 13:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 13:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 13:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 13:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 13:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 13:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 13:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 13:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 13:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 13:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 13:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 13:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 13:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 13:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 13:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 13:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 13:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 13:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 13:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 13:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 14:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 14:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 14:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 14:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 14:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 14:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 14:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 14:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 14:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 14:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 14:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 14:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 14:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 14:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 14:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 14:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 14:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 14:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 14:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 14:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 14:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 14:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 15:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 15:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 15:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 15:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 15:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 15:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 15:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 15:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 15:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 15:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 15:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 15:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 15:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 15:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 15:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 15:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 15:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 15:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 15:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 15:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 15:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 15:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 15:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 15:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 15:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 15:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 15:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 15:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 15:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 15:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 15:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 15:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 15:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 15:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 15:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 15:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 15:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 15:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 15:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 15:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 15:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 15:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 15:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 15:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 15:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 15:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 15:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 15:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 15:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 15:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 15:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 15:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 15:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 15:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 15:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 15:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 15:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 15:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 15:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 15:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 15:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 15:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 15:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 15:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 15:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 15:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 15:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 15:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 15:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 15:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 15:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 15:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 15:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 15:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 15:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 15:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 15:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 15:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 15:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 15:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 15:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 15:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 15:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 15:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 15:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 15:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 15:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 15:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 15:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 15:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 15:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 15:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 15:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 15:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 15:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 15:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 15:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 15:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 15:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 15:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 15:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 15:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 15:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 16:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 16:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 16:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 16:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 16:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 16:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 16:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 16:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 16:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 16:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 16:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 16:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 16:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 16:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 16:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 16:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 16:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 16:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 16:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 16:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 16:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 16:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 16:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 16:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 16:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 16:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 16:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 16:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 16:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 16:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 16:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 16:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 16:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 16:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 16:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 16:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 16:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 16:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 16:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 16:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 16:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 16:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 16:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 16:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 16:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 16:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 16:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 16:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 16:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 16:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 16:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 16:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 16:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 16:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 16:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 16:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 16:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 16:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 16:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 16:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 16:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 16:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 16:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 16:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 16:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 16:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 16:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 16:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 16:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 16:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 16:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 16:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 16:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 16:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 16:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 16:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 16:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 16:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 16:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 16:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 16:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 16:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 16:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 16:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 16:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 16:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 16:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 16:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 16:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 16:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 16:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 16:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 16:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 16:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 16:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 16:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 16:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 16:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 16:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 16:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 16:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 16:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 16:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 16:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 16:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 16:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 16:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 16:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 16:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 16:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 16:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 16:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 16:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 16:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 16:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 16:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 16:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 16:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 16:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 16:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 16:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 16:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 16:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 16:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 16:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 16:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 16:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 16:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 16:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 16:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 16:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 16:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 16:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 16:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 16:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 16:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 16:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 16:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 16:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 16:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 16:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 16:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 16:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 16:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 16:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 16:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 16:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 16:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 17:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 17:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 17:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 17:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 17:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 17:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 17:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 17:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 17:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 17:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 17:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 17:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 17:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 17:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 17:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 17:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 17:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 17:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 17:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 17:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 17:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 17:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 17:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 17:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 17:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 17:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 17:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 17:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 17:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 17:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 17:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 17:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 17:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 17:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 17:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 17:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 17:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 17:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 17:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 17:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 17:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 17:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 17:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 17:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 17:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 17:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 17:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 17:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 17:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 17:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 17:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 17:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 17:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 17:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 17:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 17:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 17:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 17:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 17:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 17:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 17:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 17:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 17:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 17:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 17:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 17:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 17:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 17:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 17:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 17:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 17:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 17:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 17:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 17:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 17:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 17:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 17:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 17:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 17:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 17:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 17:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 17:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 17:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 18:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 18:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 18:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 18:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 18:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 18:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 18:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 18:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 18:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 18:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 18:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 18:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 18:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 18:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 18:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 18:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 18:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 18:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 18:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 18:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 18:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 18:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 18:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 18:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 18:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 18:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 18:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 18:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 18:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 18:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 18:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 18:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 18:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 18:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 18:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 18:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 18:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 18:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 18:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 18:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 18:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 18:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 18:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 18:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 18:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 18:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 18:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 18:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 18:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 18:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 18:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 18:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 18:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 18:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 18:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 18:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 18:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 18:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 18:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 18:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 18:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 18:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 18:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 18:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 18:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 18:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 18:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 18:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 18:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 18:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 18:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 18:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 18:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 18:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 18:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 18:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 18:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 18:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 18:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 18:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 18:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 18:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 18:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 18:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 18:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 18:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 18:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 18:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 18:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 18:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 18:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 18:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 18:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 18:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 18:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 18:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 18:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 18:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 18:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 18:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 18:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 18:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 18:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 18:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 18:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 18:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 18:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 18:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 18:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 18:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 19:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 19:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 19:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 19:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 19:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 19:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 19:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 19:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 19:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 19:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 19:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 19:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 19:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 19:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 19:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 19:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 19:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 19:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 19:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 19:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 19:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 19:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 19:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 19:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 19:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 19:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 19:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 19:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 19:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 19:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 19:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 19:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 19:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 19:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 19:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 19:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 19:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 19:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 19:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 19:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 19:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 19:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 19:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 19:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 19:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 19:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 19:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 19:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 19:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 19:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 19:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 19:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 19:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 19:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 19:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 19:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 19:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 19:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 19:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 19:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 19:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 19:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 19:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 19:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 19:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 19:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 19:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 19:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 19:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 19:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 19:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 19:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 19:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 19:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 19:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 19:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 19:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 19:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 19:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 19:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 19:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 19:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 19:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 19:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 20:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 20:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 20:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 20:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 20:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 20:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 20:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 20:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 20:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 20:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 20:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 20:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 20:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 20:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 20:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 20:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 20:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 20:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 20:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 20:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 20:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 20:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 20:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 20:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 20:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 20:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 20:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 20:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 20:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 20:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 20:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 20:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 20:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 20:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 20:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 20:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 20:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 20:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 20:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 20:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 20:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 20:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 20:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 20:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 20:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 20:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 20:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 20:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 20:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 20:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 20:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 20:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 20:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 20:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 20:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 20:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 20:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 20:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 20:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 20:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 20:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 20:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 20:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 20:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 20:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 20:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 20:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 20:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 20:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 20:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 20:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 20:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 20:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 20:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 20:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 20:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 20:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 20:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 20:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 20:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 20:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 20:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 20:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 20:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 20:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 20:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 21:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 21:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 21:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 21:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 21:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 21:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 21:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 21:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 21:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 21:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 21:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 21:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 21:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 21:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 21:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 21:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 21:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 21:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 21:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 21:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 21:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 21:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 21:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 21:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 21:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 21:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 21:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 21:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 21:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 21:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 21:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 21:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 21:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 21:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 21:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 21:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 21:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 21:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 21:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 21:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 21:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 21:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 21:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 21:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 21:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 21:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 21:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 21:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 21:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 21:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 21:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 21:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 21:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 21:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 21:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 21:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 21:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 21:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 21:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 21:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 21:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 21:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 21:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 21:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 21:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 21:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 21:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 21:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 21:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 21:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 21:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 21:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 21:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 21:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 22:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 22:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 22:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 22:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 22:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 22:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 22:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 22:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 22:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 22:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 22:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 22:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 22:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 22:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 22:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 22:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 22:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 22:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 22:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 22:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 22:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 22:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 22:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 22:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 22:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 22:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 22:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 22:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 22:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 22:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 22:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 22:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 22:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 22:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 22:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 22:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 22:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 22:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 22:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 22:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 22:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 22:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 22:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 22:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 22:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 22:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 22:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 22:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 22:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 22:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 22:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 22:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 22:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 22:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 22:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 22:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 22:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 22:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 22:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 22:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 23:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 23:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 23:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 23:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 23:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 23:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 23:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 23:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 23:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 23:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 23:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 23:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 23:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 23:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 23:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 23:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 23:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 23:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 23:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 23:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 23:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 23:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 23:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 23:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 23:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 23:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 23:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 23:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 23:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 23:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 23:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 23:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 23:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 23:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 23:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 23:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 23:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 23:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 23:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 23:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 23:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 23:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 23:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 23:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 23:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 23:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 23:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 23:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 23:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 23:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 23:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 23:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-05-01 12:24:03', '::1', NULL),
(908, '2017-05-01 12:24:53', '::1', NULL),
(909, '2017-05-01 12:25:57', '::1', NULL),
(910, '2017-05-01 17:13:50', '::1', NULL),
(911, '2017-05-01 18:26:09', '::1', NULL),
(912, '2017-05-06 14:43:17', '::1', 'Firefox'),
(913, '2017-05-07 02:18:38', '::1', 'Firefox'),
(914, '2017-05-13 12:19:10', '::1', 'Firefox'),
(915, '2017-05-13 17:08:02', '::1', 'Firefox'),
(916, '2017-05-16 12:30:09', '::1', 'Firefox'),
(917, '2017-05-17 07:46:05', '::1', 'Firefox'),
(918, '2017-05-23 05:01:55', '::1', 'Firefox'),
(919, '2017-06-01 15:37:00', '::1', 'Firefox'),
(920, '2017-06-21 00:48:57', '::1', 'Firefox'),
(921, '2017-06-21 22:58:34', '::1', 'Firefox'),
(922, '2017-06-23 23:00:36', '::1', 'Firefox'),
(923, '2017-06-26 22:25:17', '::1', 'Firefox'),
(924, '2017-07-01 01:10:04', '::1', 'Firefox'),
(925, '2017-08-07 07:32:11', '::1', 'Firefox'),
(926, '2017-08-08 00:45:09', '::1', 'Firefox'),
(927, '2017-08-09 13:04:25', '::1', 'Firefox'),
(928, '2017-08-11 06:56:38', '::1', 'Firefox'),
(929, '2017-08-13 11:29:42', '::1', 'Firefox'),
(930, '2017-08-20 13:28:50', '::1', 'Firefox'),
(931, '2017-08-22 15:56:52', '::1', 'Firefox'),
(932, '2017-08-23 06:24:20', '::1', 'Firefox'),
(933, '2017-08-23 17:00:02', '::1', 'Firefox'),
(934, '2017-08-24 17:00:21', '::1', 'Firefox'),
(935, '2017-08-25 17:10:13', '::1', 'Firefox'),
(936, '2017-08-27 12:43:22', '::1', 'Chrome'),
(937, '2017-08-28 07:35:26', '::1', 'Firefox'),
(938, '2017-08-29 02:15:42', '::1', 'Firefox'),
(939, '2017-09-01 13:51:54', '::1', 'Firefox'),
(940, '2017-09-02 04:50:37', '::1', 'Firefox'),
(941, '2017-09-07 03:28:07', '::1', 'Firefox'),
(942, '2017-10-08 00:24:12', '::1', 'Firefox'),
(943, '2017-10-16 03:19:24', '::1', 'Firefox'),
(944, '2017-10-27 23:18:34', '::1', 'Firefox'),
(945, '2017-10-29 03:44:46', '::1', 'Firefox'),
(946, '2018-02-03 07:08:50', '103.10.66.65', 'Chrome'),
(947, '2018-02-03 08:01:32', '36.84.70.153', 'Firefox'),
(948, '2018-02-08 05:31:55', '::1', 'Firefox'),
(949, '2018-02-08 17:34:14', '::1', 'Firefox'),
(950, '2018-02-10 03:26:42', '::1', 'Firefox'),
(951, '2018-02-11 02:44:49', '::1', 'Firefox'),
(952, '2018-02-12 02:44:54', '::1', 'Firefox'),
(953, '2018-02-13 05:45:00', '::1', 'Firefox'),
(954, '2018-02-13 17:00:19', '::1', 'Firefox'),
(955, '2018-02-15 07:36:03', '::1', 'Firefox'),
(956, '2018-02-15 14:52:51', '127.0.0.1', 'Firefox'),
(957, '2018-02-15 17:33:59', '::1', 'Firefox'),
(958, '2018-02-16 17:18:20', '::1', 'Firefox'),
(959, '2018-02-17 20:54:57', '::1', 'Firefox'),
(960, '2018-02-19 04:03:41', '::1', 'Firefox'),
(961, '2018-02-19 17:13:38', '::1', 'Firefox'),
(962, '2019-04-28 17:25:44', '::1', 'Firefox'),
(963, '2019-05-28 20:57:10', '::1', 'Chrome'),
(964, '2020-01-30 14:35:39', '::1', 'Chrome'),
(965, '2020-06-20 12:59:05', '::1', 'Chrome'),
(966, '2020-06-23 13:18:58', '::1', 'Chrome'),
(967, '2020-06-28 12:19:16', '::1', 'Chrome'),
(968, '2020-07-04 06:40:53', '::1', 'Chrome'),
(969, '2020-07-25 10:25:15', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(200) DEFAULT NULL,
  `port_deskripsi` text DEFAULT NULL,
  `port_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `port_author` varchar(40) DEFAULT NULL,
  `port_image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`) VALUES
(1, 'NISSAN', '<p>M-Food merupakan aplikasi yang dirancang khusus untuk order makanan online berbasis web mobile. Dirancang dengan menggunakan jquery mobile dan codeigniter dengan icon dari font awesome sehingga mudah dikembangkan oleh developer manapun.</p>\r\n\r\n<p>Aplikasi ini mengelompokkan menu berdasarkan makanan, minuman, hot promo, dan favorit.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini adalah sebagai berikut:</p>\r\n\r\n<p>1 Dashboard (Grafik Penjualan, Garfik Pelanggan, Lates Order, Lates Pelanggan)</p>\r\n\r\n<p>2 Management Pengguna</p>\r\n\r\n<p>3 Management Menu (Makanan/Minuman)</p>\r\n\r\n<p>4 Management Pelanggan</p>\r\n\r\n<p>5 Management Order</p>\r\n\r\n<p>6 Management Konfirmasi Pembayaran</p>\r\n\r\n<p>7 Management Rekening Bank</p>\r\n\r\n<p>8 Management Gallery</p>\r\n\r\n<p>9 Management Status Order</p>\r\n\r\n<p>Info lebih lebih lanjut kunjungi www.mfikri.com</p>\r\n', '2017-07-20 03:53:59', 'Administrator', 'a26cc8fbf8ea56231d4fbb3601ddf315.png'),
(3, 'SUZUKI', '<p>Aplikasi Point of sale merupakan sebuah aplikasi yang dirancang khusus untuk mempermudah dan mempercepat proses transakasi penjualan. Dirancang menggunakan framework Codeigniter dengan konsep metro design yang elegan menjadi daya tarik aplikasi ini. Selain itu, basic design dari aplikasi ini menggunakan BOOTSTRAP sehingga memudahkan web developer untuk mengembangkan design aplikasi ini menjadi lebih menarik lagi.</p>\r\n\r\n<p>Proses transakasi penjualan dan pembelian menggunakan AJAX &nbsp;(<em>Asyncronous Javascript and XML</em>). Memungkinkan user berkomunikasi dengan database tanpa <em>reload page</em>.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini sebagai berikut:</p>\r\n\r\n<p>1. Management data barang</p>\r\n\r\n<p>2. Management data kategori</p>\r\n\r\n<p>3. Management User (Pengguna)</p>\r\n\r\n<p>4. Management Suplier</p>\r\n\r\n<p>5. Transaksi Pembelian</p>\r\n\r\n<p>7. Transaksi Penjualan Eceran dan Grosir</p>\r\n\r\n<p>8. Retur Penjualan</p>\r\n\r\n<p>9. Laporan Data Barang</p>\r\n\r\n<p>10. Laporan Stok Barang</p>\r\n\r\n<p>11. Laporan Penjualan</p>\r\n\r\n<p>12. Laporan Penjualan Per Tanggal</p>\r\n\r\n<p>13. Laporan Penjualan Per Bulan</p>\r\n\r\n<p>14. Laporan Penjualan Per Tahun</p>\r\n\r\n<p>15. Laporan Laba / Rugi</p>\r\n\r\n<p>16. Grafik Stok Barang</p>\r\n\r\n<p>17. Grafik Penjualan Per Bulan</p>\r\n\r\n<p>18. Grafik Penjualan Per Tahun</p>\r\n', '2017-07-20 07:23:14', 'Administrator', 'c3bf66d731b55b8c3f1e412ba8ea2f56.png'),
(4, 'MITSUBISHI', '<p>Download source code Tour and Travel. M-Travel merupakan Source Code Open Source berbasis web untuk company profil tour and travel yang menyajikan informasi dan paket wisata pilihan. Dimana para wisatawan dapat membooking paket wisata yang diinginkan secara online. Source Code ini mendukung berbagai macam metode pembayaran, dan lebih lagi metode pembayaran dapat ditambahkan sesuai kebutuhan.</p>\r\n\r\n<p>Source Code ini dibangun menggunakan PHP framework Codeigniter v2.2.6, dirancang menggunakan bahasa pemrograman umum sehingga code program mudah dipelajari oleh developer web lain sehingga mudah untuk dikembangkan oleh pihak lain.</p>\r\n\r\n<p>Selain itu, source code ini tidak menggunakan Active Record, sehingga semua query mudah dibaca dan di pelajari.</p>\r\n\r\n<p>Backend dari Source Code ini dibangun menggunakan template Admin LTE, yaitu template yang sangat umum bagi developer web saat ini. Selain itu, source code ini juga menggunakan <strong>Toast Message</strong> untuk menampilkan pesan. Hal itulah yang membuat souce code ini menjadi &ldquo;Pretty Awesome&rdquo;.</p>\r\n\r\n<p>Frontend dari source code ini dibangun menggunakan premium template. Dalam arti kata template BERBAYAR. Hhmm.., beruntunglah Anda bisa menemukan source code ini, karena penulis membagikan tidak hanya templatenya, akan tetapi program komplit secara Cuma-Cuma alias GRATISS.</p>\r\n', '2017-07-20 07:25:06', 'Administrator', '1e8eef417c1f5a769f5b6193111614a6.png'),
(5, 'DAIHATSU', '<p>Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:29:02', 'Administrator', '49dc450ba3c24a438a8664b2ed7791ab.jpg'),
(6, 'TOYOTA', '<p>Ini adalah deskripsi&nbsp;Ini adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:31:55', 'Administrator', '74f219b8f6a2882533effa2719217701.png'),
(7, 'HONDA', '<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:33:57', 'Administrator', 'f124f9e7edb391e7fab4c0041cc84d8c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_rating`
--

INSERT INTO `tbl_post_rating` (`rate_id`, `rate_tanggal`, `rate_ip`, `rate_point`, `rate_tulisan_id`) VALUES
(2, '2017-08-07 05:58:14', '::1', 1, 30),
(4, '2017-08-07 05:59:03', '::1', 1, 29),
(5, '2017-08-07 06:23:40', '::1', 3, 31),
(6, '2017-08-07 06:26:14', '::1', 4, 28),
(7, '2017-08-08 01:15:56', '::1', 2, 27),
(8, '2017-08-25 18:20:57', '::1', 4, 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`views_id`, `views_tanggal`, `views_ip`, `views_tulisan_id`) VALUES
(1, '2017-08-07 07:28:38', '::1', 31),
(2, '2017-08-07 07:28:51', '::1', 30),
(3, '2017-08-07 13:08:57', '::1', 27),
(4, '2017-08-07 15:55:32', '::1', 28),
(5, '2017-08-07 16:02:55', '::1', 29),
(6, '2017-08-08 00:58:17', '::1', 26),
(7, '2017-08-08 01:13:58', '::1', 27),
(8, '2017-08-08 01:16:07', '::1', 30),
(9, '2017-08-09 13:04:36', '::1', 30),
(10, '2017-08-11 06:56:47', '::1', 31),
(11, '2017-08-11 08:42:41', '::1', 30),
(12, '2017-08-11 08:42:47', '::1', 27),
(13, '2017-08-11 08:42:54', '::1', 26),
(14, '2017-08-11 08:43:00', '::1', 28),
(15, '2017-08-11 08:43:07', '::1', 25),
(16, '2017-08-11 08:43:10', '::1', 29),
(17, '2017-08-24 16:39:13', '::1', 31),
(18, '2017-08-24 16:39:13', '::1', 0),
(19, '2017-08-24 16:39:13', '::1', 0),
(20, '2017-08-24 16:39:13', '::1', 0),
(21, '2017-08-24 17:00:21', '::1', 31),
(22, '2017-08-24 17:00:22', '::1', 0),
(23, '2017-08-25 13:49:50', '::1', 30),
(24, '2017-08-25 17:22:19', '::1', 30),
(25, '2017-08-25 17:22:20', '::1', 0),
(26, '2017-08-25 17:25:14', '::1', 27),
(27, '2017-08-25 17:27:37', '::1', 26),
(28, '2017-08-25 17:45:38', '::1', 25),
(29, '2017-08-25 17:54:57', '::1', 29),
(30, '2017-08-25 18:18:38', '::1', 31),
(31, '2017-08-25 18:19:02', '::1', 28),
(32, '2017-08-27 12:43:48', '::1', 30),
(33, '2017-08-27 12:43:49', '::1', 0),
(34, '2017-08-28 07:35:26', '::1', 31),
(35, '2017-08-29 03:13:08', '::1', 30),
(36, '2017-08-29 03:13:09', '::1', 0),
(37, '2017-08-29 03:13:16', '::1', 29),
(38, '2017-08-29 13:44:05', '::1', 31),
(39, '2017-09-01 13:52:01', '::1', 30),
(40, '2017-09-01 13:52:01', '::1', 0),
(41, '2017-09-01 14:00:27', '::1', 25),
(42, '2017-09-02 04:50:46', '::1', 31),
(43, '2017-09-02 04:50:46', '::1', 0),
(44, '2017-09-02 04:51:23', '::1', 28),
(45, '2017-10-08 00:25:57', '::1', 25),
(46, '2017-10-08 00:25:57', '::1', 0),
(47, '2017-10-16 03:19:53', '::1', 31),
(48, '2017-10-16 03:19:54', '::1', 0),
(49, '2017-10-16 03:20:18', '::1', 25),
(50, '2017-10-28 00:13:13', '::1', 30),
(51, '2017-10-28 00:13:14', '::1', 0),
(52, '2017-10-29 04:16:58', '::1', 30),
(53, '2017-10-29 04:16:59', '::1', 0),
(54, '2017-10-29 04:23:42', '::1', 31),
(55, '2018-02-08 12:53:34', '::1', 31),
(56, '2018-02-08 12:53:37', '::1', 0),
(57, '2018-02-09 06:35:08', '::1', 30),
(58, '2018-02-10 08:38:33', '::1', 29),
(59, '2018-02-10 12:57:59', '::1', 31),
(60, '2018-02-15 14:19:06', '::1', 31),
(61, '2018-02-15 14:19:08', '::1', 0),
(62, '2018-02-15 17:36:22', '::1', 31),
(63, '2018-02-15 17:36:25', '::1', 0),
(64, '2018-02-18 04:50:22', '::1', 31),
(65, '2018-02-18 04:50:23', '::1', 0),
(66, '2018-02-19 08:59:02', '::1', 30),
(67, '2018-02-19 11:20:19', '::1', 32),
(68, '2018-02-19 11:40:41', '::1', 31),
(69, '2018-02-19 11:42:09', '::1', 33),
(70, '2018-02-19 13:16:18', '::1', 0),
(71, '2018-02-19 17:30:52', '::1', 31),
(72, '2019-04-28 17:26:53', '::1', 30),
(73, '2019-04-28 17:26:54', '::1', 0),
(74, '2019-04-28 17:27:33', '::1', 33),
(75, '2020-01-30 14:57:50', '::1', 32),
(76, '2020-01-30 14:58:03', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(100) DEFAULT NULL,
  `tulisan_video` varchar(100) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_video`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_rating`) VALUES
(29, 'Stamping', '<p>Thai Summit America Corporation has both tandem and transfer presses that are fully automated and equipped with double sliding bolsters for quick die change. The lines are automated from feed to finished part minimizing handling while increasing output. We stamp parts from steel (galvanized, cold rolled, high strength, stainless), aluminum and tailor welded materials.</p>\r\n\r\n<h3><strong>Tier-1 Supplier</strong></h3>\r\n\r\n<p>As a Tier-1 supplier to many of the largest global OEM&rsquo;s, Thai Summit America delivers proven world-class technology and manufacturing processes to every customer we serve. By practicing Total Productive Maintenance (TPM) methods we are able to maximize the amount of up-time of our presses saving both time and expense.</p>\r\n\r\n<hr />\r\n<h3>Thai Summit America&rsquo;s team of professionals and skilled craftsmen continue the tradition of providing excellent service with uncompromising quality and outstanding results.</h3>\r\n\r\n<hr />\r\n<p><strong>Production Plant Assists (Offloads)</strong></p>\r\n\r\n<p>Thai Summit America is fully equipped to attend to all your emergency production needs. For both domestic and international applications we are best in class for quick turn around and value. A well experienced team with over 100 years combined experience in plant assists requiring quick production turnaround. In these emergency <strong>cases we can have offloaded dies delivered and in production in less than 24 hours.</strong></p>\r\n\r\n<p><strong>Quick Die Change</strong></p>\r\n\r\n<p>Thai Summit America uses lean manufacturing methods to increase production efficiency with quick die changes. Our outside die setup time and our inside die setup times have been optimized to reduce production lot sizes for improved product flow. Our target is to have Single Minute Exchange of Dies (SMED) for all of our press lines. The quick die change methods enable us to cost effectively manufacture low volume jobs.</p>\r\n\r\n<h3>Tandem Presses</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>&nbsp;</th>\r\n			<th>Name</th>\r\n			<th>Tonnes</th>\r\n			<th>Feed Size</th>\r\n			<th>Width Size</th>\r\n			<th>Bolster Size</th>\r\n			<th>Bolster Size Draw</th>\r\n			<th>Bolster Size Line 2-6</th>\r\n			<th>Die Operation</th>\r\n		</tr>\r\n		<tr>\r\n			<td>A-Line</td>\r\n			<td>Komatsu</td>\r\n			<td>1600</td>\r\n			<td>250 x 2030 mm</td>\r\n			<td>600 x 3200 mm</td>\r\n			<td>2300 x 4000 mm</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B-Line</td>\r\n			<td>Hitachi Zosen</td>\r\n			<td>2300</td>\r\n			<td>600 x 2100 mm</td>\r\n			<td>560 x 3940 mm</td>\r\n			<td>&nbsp;</td>\r\n			<td>2540 x 4570 mm</td>\r\n			<td>2400 x 4000 mm</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C-Line</td>\r\n			<td>Hitachi Clearing</td>\r\n			<td>2300</td>\r\n			<td>900 x 2100 mm</td>\r\n			<td>1300 x 4100 mm</td>\r\n			<td>2540 x 4570 mm</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Transfer Presses</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>&nbsp;</th>\r\n			<th>Name</th>\r\n			<th>Tonnes</th>\r\n			<th>Feed Size</th>\r\n			<th>Width Size</th>\r\n			<th>Bolster Size</th>\r\n			<th>Die Operation</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1500 Transfer</td>\r\n			<td>Hitachi Zosen</td>\r\n			<td>1500</td>\r\n			<td>100 x 700 mm</td>\r\n			<td>400 x 1600 mm</td>\r\n			<td>2300 x 4800 mm</td>\r\n			<td>5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2700 Transfer</td>\r\n			<td>Komatsu</td>\r\n			<td>2700</td>\r\n			<td>200 x 1400 mm</td>\r\n			<td>400 x 1800 mm</td>\r\n			<td>2300 x 4500 mm</td>\r\n			<td>6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-08-07 02:36:39', 2, 'Teknologi', 5, '', 'p4T_O7vwObc', 1, 'Administrator', 0, 'stamping.html', 1),
(30, 'Tooling', '<p>The key to achieving perfect parts is a high quality tool. Thai Summit can assist you with all your tooling needs from design to production. Our engineers use many software systems (AutoCAD, AutoForm, CATIA, IDEAS, ProE, SMIRT 8, TEBIS, Unigraphics) for simulation studies, design and manufacturing optimization. We also provide in house tooling services for not only our internal customers, but external customers as well. Our services are cost effective for enhanced product realization and value.</p>\r\n\r\n<h3><strong>Design &amp; Manufacturing</strong></h3>\r\n\r\n<p>Together with our customer we perfect the design and transmit the information to Thai Summit&rsquo;s plant in Japan where the dies are built. This allows the customer&rsquo;s design engineers, Thai Summit&rsquo;s die making operation and Thai Summit&rsquo;s engineers to review the design and data together as a team. Thai Summit&rsquo;s dies are manufactured through a high speed and high quality serial process based on integrated data information.</p>\r\n\r\n<h3><strong>Tryout &amp; Launch</strong></h3>\r\n\r\n<p>Thai Summit&rsquo;s 400-ton die spotting presses, Kojima 2000-ton hydraulic dual action press and Kojima 1000-ton hydraulic single action press enable us to assure the fit of the upper and lower die and to produce perfect tryout parts prior to the start of production. We also offer automated spotting presses for low volume runs, with a reduced level of human handling. Thai Summit has launched over 100 new products enabling us to develop timely solutions to your metal stamping and fabrication needs.</p>\r\n\r\n<h3><strong>Modification &amp; Maintenance</strong></h3>\r\n\r\n<p>Frequently, customers require engineering changes in their part design. Thai Summit responds quickly with CNC milling machines where dies can be restored to pre-programmed tolerances. Preventative maintenance and tool improvement are done in our own die shop. During regular scheduled inspections dies go through our cleaning and maintenance procedures to ensure part quality.</p>\r\n', '2017-08-07 02:46:11', 2, 'Teknologi', 14, '', 'G0sm90IDil8', 1, 'Administrator', 0, 'tooling.html', 1),
(32, 'Assembly', '<p>Thai Summit provides modular production with just-in-time delivery. Our capabilities feature virtually all of the operations our customers may require under a single roof at world class quality levels and often at significant cost savings. We furnish highly-labor intensive subassemblies and sophisticated automated assemblies in a variety of materials.</p>\r\n\r\n<p>Our capabilities include robotic welding (laser, spot, projection, arc), material handling, roll hemming, piercing, clinching and riveting. Thai Summit is constantly looking for new and better ways to enhance the service it provides to its customers. We have invested in 3-D white light scanning and remote laser welding to keep us at the leading edge of manufacturing processes.</p>\r\n\r\n<p>As a Tier-1 supplier to many of the largest global OEM&rsquo;s, Thai Summit delivers proven world-class technology and manufacturing processes to every customer we serve. By practicing Total Productive Maintenance (TPM) methods we are able to maximize the amount of up-time of our assembly equipment saving both time and expense.</p>\r\n\r\n<h3><strong>Laser Welding</strong></h3>\r\n\r\n<hr />\r\n<p>Thai Summit was the first supplier in North America to laser weld galvanized steel. Using a proprietary process, we are able to consistently laser weld galvanized steel, meeting high customer quality standards. We currently have 5 remote laser welding stations. The following are just a few of the benefits of using laser welding:</p>\r\n\r\n<ul>\r\n	<li>Cycle time of 0.5 sec/weld</li>\r\n	<li>Saves tooling setup and investment costs</li>\r\n	<li>Does not distort surface</li>\r\n</ul>\r\n\r\n<h3><strong>Modular Assembly Cells</strong></h3>\r\n\r\n<hr />\r\n<p>Modular assembly cells offer maximum flexibility to meet our customers&rsquo; needs. Some benefits of modular cells are:</p>\r\n\r\n<ul>\r\n	<li>Unique lines dedicated to each product</li>\r\n	<li>Cells can be moved to accommodate changes in customer needs</li>\r\n	<li>Automatic unloading of parts</li>\r\n</ul>\r\n', '2018-02-19 09:08:37', 2, 'Teknologi', 2, '', 'xs2XGriDkKg', 1, 'Administrator', 0, 'assembly.html', 0),
(33, 'Innovation', '<p>Thai Summit America continually pursues the most effective production methods derived from the latest technology. The use of innovative equipment and processes has been an important factor in our success. The following technologies are examples of new processes Thai Summit America Corporation has developed or is currently investigating:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Non-Contact Measurement Systems</li>\r\n	<li>Development of Virtual Builds</li>\r\n	<li>Integration of Laser Welding in Production</li>\r\n	<li>Extra Deep Draw Dies for Aluminum</li>\r\n	<li>Tailor Welded Aluminum Stamping</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Electro-Magnetic Forming</li>\r\n	<li>Die Floater Drawing Process</li>\r\n	<li>Secondary Processing of Superformed Panels</li>\r\n	<li>Nano-Polymer Technologies</li>\r\n	<li>Roll Hemming Build Optimization</li>\r\n</ul>\r\n\r\n<p><strong>Non-Contact Measurement Systems</strong></p>\r\n\r\n<p>Thai Summit America utilizes a non-contact white light 3D optical system for dimensional measurement. This system is faster than traditional CMM machines and provides complete surface data. Following the successful launch of the manual system, Thai Summit America fully automated the system for production use. This system is used for measuring point data for production part approval process (PPAP), virtual assembly, production parts and reverse engineering of parts. Thai Summit America currently uses one manual system and 2 robotic systems.</p>\r\n\r\n<p><strong>Development of Virtual Builds</strong></p>\r\n\r\n<p>Using white-light scanning on individual components Thai Summit America is able to conduct a virtual assembly prior to the actual assembling of panels during launch. This allows Thai Summit America to find critical concerns in the build allowing more reaction time for improvements.</p>\r\n\r\n<p><strong>Integration of Laser Welding in Production</strong></p>\r\n\r\n<p>Thai Summit America is the first supplier in North America to laser weld galvanized steel. Using a proprietary process, we are able to consistently laser weld galvanized steel, meeting high customer quality standards. The laser cost competitive welding process saves time over traditional methods.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.thaisummit.us/wp-content/uploads/2012/11/laser_welding.jpg\" /></p>\r\n', '2018-02-19 09:15:47', 2, 'Teknologi', 2, '', 'mYATBDS44wQ', 1, 'Administrator', 0, 'innovation.html', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `itcs`
--
CREATE DATABASE IF NOT EXISTS `itcs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `itcs`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `NIK` int(4) NOT NULL,
  `Nama` varchar(30) NOT NULL DEFAULT 'Anonymous',
  `Jabatan` varchar(15) NOT NULL,
  `Departemen` varchar(20) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Ext` varchar(3) DEFAULT NULL,
  `MID` varchar(5) DEFAULT NULL,
  `Telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`NIK`, `Nama`, `Jabatan`, `Departemen`, `Email`, `Ext`, `MID`, `Telp`) VALUES
(1000, 'Johan Tamsir', '-', 'Director', 'johan@pttrimitra.com', '', '', ''),
(1001, 'Bambang', '-', 'Director', 'bambang@pttrimitra.com', '', '', ''),
(1003, 'Erlan Suhendar', 'Div. Mgr.', 'HRD', 'erlan@pttrimitra.com', '121', '**003', '0816-1810-285'),
(1004, 'Lina Wahyuningsih', 'Staff', 'HRD', 'lina.wahyuningsih@pttrimitra.com', '110', '', ''),
(1005, 'Jusfen Karmindo', 'Asst. Spv.', 'HRD', 'jusfen.karmindo@pttrimitra.com', '110', '**028', '0813-1402-6862'),
(1006, 'Yudi Perkasa', 'Staff', 'HRD', 'yudi.perkasa@pttrimitra.com', '210', '', ''),
(1007, 'Toni Hermawan', 'Staff', 'HRD', 'tony.hermawan@pttrimitra.com', '210', '', ''),
(1008, 'Faisal Harris', 'Dept. Mgr.', 'Maintenance', 'faizal@pttrimitra.com', '217', '**020', '0812-8687-0910'),
(1009, 'Zaenal Arifin', 'Dept. Mgr.', 'Accounting', 'zaenal@pttrimitra.com', '104', '**023', '0838-7417-5706'),
(1010, 'Eben', 'Asst. Mgr.', 'GA', '', '115', '**042', '0878-8987-6329'),
(1011, 'Suratno', 'Spv.', 'GA', '', '114', '**034', '0812-8343-7085'),
(1012, 'Jansen', 'Asst. Mgr.', 'Quality', 'jansen@pttrimitra.com', '112', '**013', '0813-8277-9280'),
(1013, 'Lisdiyah', 'Asst. Mgr.', 'Finance', 'lisdyah@pttrimitra.com', '107', '**007', '0818-0804-0340'),
(1014, 'Yanti', 'Staff', 'Finance', '', '123', '', ''),
(1015, 'Yati', 'Staff', 'Finance', '', '123', '', ''),
(1016, 'Safitri', 'Spv.', 'Accounting', 'safitri@pttrimitra.com', '105', '', ''),
(1017, 'Sita Agung Aryani', 'Staff', 'Tax Section', '', '105', '', ''),
(1018, 'Suci', 'Staff', 'Accounting', '', '105', '', ''),
(1019, 'Agung Prasetyo', 'Spv.', 'Accounting', 'agung_prasetyo@pttrimitra.com', '106', '', ''),
(1020, 'Jonsah', 'Asst. Mgr.', 'Cost Control', 'jonsah@pttrimitra.com', '205', '**155', '0812-8411-406'),
(1021, 'Hartana', 'Spv.', 'Cost Control', 'hartana@pttrimitra.com', '205', '', ''),
(1022, 'Nursaidah', 'Staff', 'Cost Control', '', '205', '', ''),
(1023, 'Stefani Desti Morina', 'Staff', 'Cost Control', '', '205', '', ''),
(1024, 'Dianah', 'Staff', 'Cost Control', '', '205', '', ''),
(1025, 'Sindia', 'Staff', 'Cost Control', '', '205', '', ''),
(1026, 'Alvin', 'Asst. Mgr.', 'Marketing', 'v.alvin@pttrimitra.com', '228', '**018', '0817-0999-955'),
(1028, 'Viki', 'Staff', 'Marketing', 'fiki@pttrimitra.com', '252', '**039', '0813-8115-8909'),
(1029, 'Rikson', 'Staff', 'Marketing', 'rikson@pttrimitra.com', '243', '', ''),
(1030, 'Heri', 'Staff', 'Marketing', 'herry.marketing@pttrimitra.com', '252', '', ''),
(1031, 'Puji', 'Spv.', 'Quality Line', '', '309', '', ''),
(1032, 'Oki', 'Staff', 'Wirecut', '', '323', '**166', '0878-8046-3420'),
(1033, 'Saeful', 'Staff', 'Wirecut', '', '323', '', ''),
(1034, 'Rusmono', 'Staff', 'PE', 'toolrepair@pttrimitra.com', '214', '', ''),
(1035, 'Teguh', 'Staff', 'PE', '', '214', '', ''),
(1036, 'Wandi', 'Staff', 'PPIC', '', '215', '**172', '0858-1784-1536'),
(1037, 'Widayat', 'Staff', 'Delivery', 'ppc2@pttrimitra.com', '312', '**150', '0813-8750-6393'),
(1038, 'Madinah', 'Staff', 'Delivery', 'ppc4@pttrimitra.com', '312', '**148', '0857-1438-6635'),
(1039, 'Ade Waspadi', 'Staff', 'Delivery', 'ppc@pttrimitra.com', '312', '**147', '0812-1259-4047'),
(1040, 'Yono Abdullah', 'Staff', 'Delivery', 'yono@pttrimitra.com', '315', '**035', '0812-9809-7176'),
(1041, 'Sumanto', 'Staff', 'Delivery', '', '315', '**161', '0813-8103-4007'),
(1042, 'Nunuk', 'Staff', 'PPIC', '', '312', '', ''),
(1043, 'Evan', 'Spv.', 'MRP', 'evan@pttrimitra.com', '0', '**170', '0813-1750-9596'),
(1044, 'Hendrik', 'Staff', 'MRP', '', '230', '', ''),
(1045, 'Sunarti', 'Spv.', 'Finance', 'sunarti@pttrimitra.com', '116', '', ''),
(1046, 'Joko', 'Staff', 'Finance', '', '117', '', ''),
(1047, 'M. Nur', 'Spv.', 'MRP', 'm.nur@pttrimitra.com', '208', '**040', '0812-1077-3445'),
(1047, 'Suci', 'Staff', 'Finance', 'accounting@pttrimitra.com', '117', '', ''),
(1048, 'Ayu', 'Staff', 'Finance', '', '117', '', ''),
(1049, 'Momi', 'Staff', 'Quality', 'qa@pttrimitra.com', '112', '', ''),
(1050, 'Triono', 'Staff', 'Quality', '', '112', '**253', '0857-1551-9465'),
(1051, 'Chandra', 'Staff', 'Quality', 'chandra@pttrimitra.com', '112', '', ''),
(1111, 'Adiyanto Tamsir', 'Div. Mgr.', 'GA', 'adiyanto@pttrimitra.com', '237', '**002', '0851-0180-6607'),
(1122, 'Liyanti', 'Div. Mgr.', 'Marketing', 'liyanti@pttrimitra.com', '242', '**005', '0878-7776-2018'),
(1200, 'Zaed', 'Dept. Mgr.', 'Engineering', 'zaed@pttrimitra.com', '226', '**004', '0821-1244-5882'),
(1212, 'Makoto Kubota', '-', 'Advisor', 'makoto_kubota@pttrimitra.com', '310', '**070', '0811-9784-401'),
(1213, 'Samuel Dwi ', 'Dept. Mgr.', 'PPIC', 'samuel@pttrimitra.com', '236', '**012', '0812-8021-4908'),
(1214, 'Sriyanto', 'Spv.', 'Purchasing', 'sriyanto@pttrimitra.com', '251', '**038', '0853-8729-1946'),
(1215, 'Hermanto', 'Staff', 'Purchasing', 'hermanto@pttrimitra.com', '244', '**142', '0812-9389-9379'),
(1216, 'Romdoni', 'Staff', 'Purchasing', 'romdoni@pttrimitra.com', '244', '**184', '0821-1283-6999'),
(1217, 'Diana', 'Asst. Spv.', 'Purchasing', 'diana@pttrimitra.com', '240', '**133', '0812-9935-2932'),
(1219, 'Tjut Dita', 'Asst. Spv.', 'Purchasing', 'dita.purchasing@pttrimitra.com', '238', '', ''),
(1220, 'Jatmiko', 'Staff', 'Purchasing', 'jatmiko@pttrimitra.com', '239', '', ''),
(1221, 'Erlina', 'Staff', 'Purchasing', 'erlina@pttrimitra.com', '233', '', ''),
(1222, 'Atie', 'Staff', 'Engineering', '', '225', '**010', '0882-1014-7352'),
(1223, 'Erliyanti', 'Staff', 'Purchasing', 'erliyanti@pttrimitra.com', '241', '**129', '0852-1647-9237'),
(1224, 'Ayu Desta', 'Staff', 'Maintenance', '', '230', '', ''),
(1225, 'Amin', 'Staff', 'Maintenance', 'amin@pttrimitra.com', '202', '', ''),
(1226, 'Yeyeh', 'Staff', 'Purchasing', 'yeyeh@pttrimitra.com', '244', '**255', '0812-8896-1171'),
(1227, 'Zulfikar', 'Staff', 'Purchasing', 'zulfikar@pttrimitra.com', '241', '**230', '0812-1956-0191'),
(1229, 'Tamsir', 'Asst. Spv.', 'Purchasing', 'tamsir@pttrimitra.com', '238', '**179', '0852-1779-6896'),
(1234, 'Sujatman', 'Dept. Mgr.', 'Press', 'sujatman@pttrimitra.com', '217', '**026', '0812-8951-8707'),
(1235, 'Drajat Hartono', 'Div. Mgr.', 'Engineering', 'djt@pttrimitra.com', '224', '**006', '0818-257-157'),
(1236, 'Teguh L', 'Asst. Mgr.', 'Engineering', 'teguh@pttrimitra.com', '220', '**046', '0813-1058-4868'),
(1237, 'Inung', 'Staff', 'Engineering', 'pde@pttrimitra.com', '223', '**047', '0817-182-095'),
(1238, 'Bayu A', 'Spv.', 'Engineering', 'bayu@pttrimitra.com', '227', '**048', '0856-857-2347'),
(1241, 'Supadi', 'Div. Mgr.', 'Accounting', 'supadi@pttrimitra.com', '207', '**019', '0813-8843-0996'),
(1242, 'Sulistiyono', 'Dept. Mgr.', 'Delivery', 'sulis@pttrimitra.com', '315', '**033', '0815-8859-926'),
(1243, 'Dwi Santosa', 'Dept. Mgr.', 'Weld & Assy', 'dwi@pttrimitra.com', '221', '**030', '0812-1071-5164'),
(1244, 'Valentinus', 'Asst. Mgr.', 'Quality', 'valent@pttrimitra.com', '112', '**015', '0812-9710-867'),
(1472, 'Jaenal Rohmat', 'Staff', 'GA', '', '113', '**056', '0852-1742-0547'),
(2097, 'Anang Prihutomo', 'Spv.', 'IT', 'anangp@pttrimitra.com', '206', '**136', '0877-8062-01304'),
(2372, 'Eko Wartono', 'Spv.', 'Weld & Assy', 'eko.wartono@pttrimitra.com', '215', '**126', '0812-1086-9722'),
(2532, 'Andiko', 'Staff', 'PPIC', 'andiko@pttrimitra.com', '215', '**174', '0813-1797-4166'),
(2891, 'Sugeng', 'Staff', 'Engineering', 'pwe@pttrimitra.com', '212', '', ''),
(3803, 'Reni', 'Staff', 'GA', 'ga@pttrimitra.com', '113', '**135', '0878-7577-3742'),
(4000, 'Santo Wijaya', 'Div. Mgr.', 'IT', 'santo.wijaya@pttrimitra.com', '231', '**016', '0812-9906-4921'),
(4021, 'Galih Supriadi', 'Staff', 'IT', 'galih@pttrimitra.com', '231', '**027', '0857-8189-3644'),
(4221, 'Muhammad Ilyas', 'Staff', 'IT', 'ilyas@pttrimitra.com', '231', '', ''),
(4314, 'Ade Novitasari', 'Staff', 'MRP', 'novitasari@pttrimitra.com', '', '', ''),
(4314, 'Ade Novitasari-', 'Staff', 'MRP', 'mrp@pttrimitra.com', '', '', ''),
(4417, 'Ari Meiwanto', 'Staff', 'Purchasing', 'ari_m@pttrimitra.com', '241', '*255', ''),
(4439, 'Heri Agus Triawan', 'Spv.', 'PQE', 'heri_at@pttrimitra.com', '313', '*210', '0813-9899-6250'),
(4440, 'Novita Pungki H', 'Staff', 'MRP', 'novita.pungki@pttrimitra.com', '208', '', ''),
(4525, 'Naomi Elisabeth', 'Staff', 'Purchasing', 'purchasing02@pttrimitra.com', '240', '', ''),
(4673, 'Yudi Supriadi', 'Asst. Mgr.', 'Marketing', 'yudi.supriadi@pttrimitra.com', '236', '', ''),
(4716, 'Wahyudin', 'Staff', 'Consumable', 'consumable@pttrimitra.com', '108', '', ''),
(4730, 'Fathur Rahmansyah', 'Staff', 'IT', 'fathur.rahmansyah@pttrimitra.com', '206', '', ''),
(4818, 'Ari Budi Kusuma', 'Staff', 'Purchasing', 'purchasing@pttrimitra.com', '239', '', ''),
(5002, 'FUJIANTO', 'Staff', 'PQE', '', '308', '', ''),
(5003, 'RIKAN', '-', 'PQE', '', '314', '', ''),
(5004, 'ARIF', 'Asst. Spv.', 'PQE', '', '314', '', ''),
(5005, 'RUDI', 'Dept. Mgr.', 'PQE', '', '314', '', ''),
(5006, 'Nugraha', 'Staff', 'Press', '', '213', '', ''),
(5007, 'Sutisna', 'Staff', 'Press', '', '213', '', ''),
(5008, 'SUSANDI', 'Div. Mgr.', 'Weld & Assy', '', '215', '', ''),
(5010, 'V. MARYONO', 'Dept. Mgr.', 'Quality', '', '112', '**015', '08129710867'),
(5011, 'Harsono', 'Staff', 'Quality', '', '112', '**251', '0878-7061-7923'),
(5012, 'EKO Y.', '-', 'Quality', '', '112', '', ''),
(5013, 'CANDRA', 'Div. Mgr.', 'Quality', '', '112', '**252', '0812-9010-2890'),
(5014, 'RENI Y.', '-', 'Quality', '', '112', '', ''),
(5015, 'IWAN', 'Dept. Mgr.', 'MRP', '', '208', '', ''),
(5016, 'RASMI', '-', 'MRP', '', '208', '', ''),
(5017, 'MARUDIN', '-', 'MRP', '', '208', '', ''),
(5018, 'SUSANTO DWI K.', '-', 'MRP', '', '209', '', ''),
(5020, 'DANI H.', 'Staff', 'MRP', '', '215', '', ''),
(5021, 'TISNA.M', 'Staff', 'MRP', '', '215', '**173', '0813-1007-7589'),
(5022, 'PLANT 2', '-', 'Accounting', '', '', '**187', '0811-1390-888'),
(5023, 'ISTANTO', '-', 'Delivery', '', '312', '**175', '0852-8640-7064'),
(5024, 'Iding R.', 'Staff', 'Delivery', '', '312', '', ''),
(5025, 'TOPIK', '-', 'Delivery', '', '312', '**059', '0813-1473-9409'),
(5026, 'Sukardi', 'Staff', 'Quality', '', '112', '', ''),
(5027, 'DADANG', '-', 'MRP', '', '', '**227', '0895-0122-1290'),
(5028, 'ANDRI', '-', 'Engineering', '', '223', '', ''),
(5029, 'ANGGARA', '-', 'Engineering', '', '223', '**153', '0877-9019-377'),
(5030, 'RIFAL', 'Staff', 'Engineering', '', '223', '', ''),
(5031, 'AGUS NUGRAHA', '-', 'Engineering', '', '225', '', ''),
(5032, 'OKIH', '-', 'PE', '', '214', '**166', '0878-8046-3420'),
(5033, 'ZULKARNAEN', '-', 'PE', '', '214', '', ''),
(5034, 'Menis Soviatun', '-', 'Purchasing', 'soviatun@pttrimitra.com', '233', '', ''),
(5035, 'JAYADI', '-', 'GA', '', '', '**208', '0896-6391-0516'),
(5036, 'Ilham', 'Staff', 'Purchasing', '', '239', '', ''),
(5037, 'ANNA', '-', 'Accounting', '', '105', '', ''),
(5038, 'YULI', '-', 'Cost Control', '', '205', '', ''),
(5039, 'Indah', 'Staff', 'Cost Control', '', '205', '', ''),
(5040, 'ANGGRAENI', '-', 'GA', 'ga@pttrimitra.com', '113', '', ''),
(5041, 'SURJANA', '-', 'GA', '', '', '**206', ''),
(5042, 'WAHYU', '-', 'GA', '', '', '**050', ''),
(5043, 'RUANG ASAKAI', '-', 'Accounting', '', '235', '', ''),
(5044, 'POS 1', '-', 'Security', '', '300', '', ''),
(5045, 'KLINIK', '-', 'Accounting', '', '119', '', ''),
(5500, 'Restu', 'Staff', 'Engineering', '', '227', '', ''),
(5501, 'Herri agus t', 'Staff', 'PQE', '', '313', '**210', '081398996250'),
(5502, 'lusi', 'Staff', 'Quality', '', '112', '', ''),
(5503, 'yan tandi r.', 'Staff', 'Accounting', '', '218', '**017', '0811-164-330'),
(5504, 'deddy', 'Staff', 'Purchasing', '', '239', '**134', '0857-1140-6492'),
(5504, 'septy', 'Staff', 'MRP', '', '', '**188', '0819-0358-8621'),
(5505, 'fuzi', 'Staff', 'Engineering', '', '223', '', ''),
(5506, 'ari', 'Staff', 'Purchasing', '', '241', '**167', '0812-1266-5686'),
(5507, 'jaka', 'Staff', 'IT', '', '', '', ''),
(5508, 'yogi', 'Staff', 'Accounting', '', '105', '', ''),
(9898, 'Asep Afriandi', 'Spv.', 'HRD', 'asep.afriandi@pttrimitra.com', '109', '', ''),
(9899, 'Yohana', 'Staff', 'Marketing', 'maryo@pttrimitra.com', '243', '', ''),
(9900, 'Pos 2', '-', 'Security', '', '301', '', ''),
(9910, 'Lisdiyah-', 'Asst. Mgr.', 'Accounting', 'finance@pttrimitra.com', '', '', ''),
(9911, 'Toni Hermawan-', 'Staff', 'HRD', 'hrd@pttrimitra.com', '', '', ''),
(9912, 'Zaenal Arifin-', 'Dept. Mgr.', 'Tax Section', 'acctax@pttrimitra.com', '', '', ''),
(9913, 'Galih Supriadi-', 'Staff', 'IT', 'it@pttrimitra.com', '', '', ''),
(9915, 'Rangga', 'Staff', 'HRD', 'rangga@pttrimitra.com', '110', '', ''),
(9916, 'PUK', '-', 'PUK', 'puk@pttrimitra.com', '111', '', ''),
(9917, 'Fredi', 'Staff', 'Delivery', '', '', '**233', '0813-9382-3207'),
(9918, 'Rosadi', 'Staff', 'Delivery', '', '', '**212', '0858-1172-4461'),
(9919, 'Diko', 'Staff', 'Delivery', '', '', '**209', '0813-1026-0032'),
(9920, 'Yan Dwi', 'Staff', 'Delivery', '', '', '**131', '0897-7669-772'),
(9921, 'Sugito', 'Staff', 'Delivery', '', '', '**137', '0857-1167-5900'),
(9922, 'Nacep', 'Staff', 'Delivery', '', '', '**127', '0858-9083-8535'),
(9923, 'Nanang', 'Staff', 'Delivery', '', '', '**054', '0822-1602-0002'),
(9924, 'Darmaji', 'Staff', 'Delivery', '', '', '**053', '0856-9196-0219'),
(9925, 'Ruslan', 'Staff', 'Delivery', '', '', '**052', '0878-0423-5054'),
(9926, 'Kemin', 'Staff', 'Delivery', '', '', '**051', '0812-9693-7183'),
(9927, 'Zaenal Rahmat', 'Staff', 'GA', '', '114', '**056', '0852-1742-0547'),
(9928, 'Rini', 'Staff', 'QHSE', '', '248', '**202', '0896-3731-9383'),
(9929, 'Supandi', 'Staff', 'QHSE', 'p2k3@pttrimitra.com', '213', '**162', '0822-2625-7009'),
(9930, 'Iis Suhendar', 'Staff', 'QHSE', 'iis.suhendar@pttrimitra.com', '213', '**162', ''),
(9931, 'Suasmoro', 'Staff', 'QHSE', '', '213', '**162', ''),
(9932, 'Jarot S', 'Asst. Mgr.', 'QHSE', 'jarot@pttrimitra.com', '207', '**160', '0813-8267-3178'),
(9933, 'Samuel Sam', 'Staff', 'Security', '', '', '**125', '0812-9025-6475'),
(9934, 'Purwanto', 'Staff', 'Security', '', '', '**124', '0813-1484-0605'),
(9935, 'Emon', 'Staff', 'Security', '', '', '**123', '0812-9384-7683'),
(9936, 'Anwar', 'Staff', 'Security', '', '', '**122', '0812-8999-5473'),
(9937, 'POS 1', '-', 'Security', '', '300', '', ''),
(9938, 'Cahya', 'Staff', 'GA', '', '', '**152', '0857-7211-0680'),
(9939, 'Aden', 'Staff', 'GA', '', '', '**237', '0813-8310-7643'),
(9940, 'Kusriyanto', 'Staff', 'GA', '', '', '**231', '0878-7931-7355'),
(9941, 'Arfan', 'Staff', 'GA', '', '', '**208', '0896-0994-8146'),
(9942, 'Endang', 'Staff', 'GA', '', '', '**207', '0823-1015-5166'),
(9943, 'Toni', 'Staff', 'GA', '', '', '**140', '0852-8049-2284'),
(9944, 'Mita', 'Staff', 'GA', '', '', '**057', '0857-1407-0152'),
(9945, 'Eri', 'Staff', 'GA', '', '', '**024', '0821-1323-9391'),
(9946, 'Siswondo', 'Staff', 'GA', '', '', '**058', '0857-7039-9771'),
(9947, 'Sumarno', 'Staff', 'GA', '', '', '**060', '0878-7771-0592'),
(9948, 'Sanny', 'Staff', 'GA', '', '', '**128', '0852-1008-6608'),
(9949, 'Dedi', 'Staff', 'GA', '', '', '**181', '0895-1973-3374'),
(9951, 'Riyanti', '-', 'Secretary', 'riyanti@pttrimitra.com', '200', '**141', '0812-8230-5470'),
(9952, 'Muhrodin', '-', 'Secretary', 'muhrodin@pttrimitra.com', '200', '**041', '0812-1991-2433'),
(9953, 'Maryo', 'Staff', 'Marketing', 'maryo@pttrimitra.com', '252', '', ''),
(9954, 'Fajar', 'Staff', 'Finance', '', '118', '**204', '0857-7140-7375'),
(9955, 'Wahyu', 'Staff', 'Finance', 'adm.sj@pttrimitra.com', '118', '**203', '0812-1831-9926'),
(9956, 'Burhan Tamsir', 'Div. Mgr.', 'Accounting', 'yohanes@pttrimitra.com', '204', '**009', '0816-1113-782'),
(9957, 'Momose', '-', 'Advisor', 'yukihiro.momose@pttrimitra.com', '302', '**089', '0811-1999-056'),
(9958, 'Lolla Viana', 'Dept. Mgr.', 'HRD', 'lolla@pttrimitra.com', '109', '**025', '0815-8812-885'),
(9959, 'Linan Sunandi', 'Staff', 'Weld & Assy', '', '', '**008', '021-9746-0320'),
(9961, 'Heri Setiawan', 'Staff', 'Weld & Assy', 'hery_setiawan@pttrimitra.com', '', '**029', '0852-1794-6091'),
(9962, 'Yuni Priyo', 'Staff', 'Weld & Assy', '', '232', '', ''),
(9963, 'Hambali', 'Staff', 'Konstruksi', '', '', '**146', '0821-2250-4656'),
(9964, 'Yusuf', 'Staff', 'Maintenance', '', '', '**036', '0813-9894-7551'),
(9965, 'Supriyono', 'Staff', 'Maintenance', '', '', '**132', '0856-9510-3672'),
(9966, 'Lisinsa', 'Staff', 'Maintenance', '', '230', '**032', '0813-1824-8736'),
(9967, 'Narip', 'Staff', 'Press', '', '214', '', ''),
(9968, 'Aristyawan', 'Staff', 'Press', '', '214', '**159', '0838-1123-5746'),
(9969, 'Ade Irawan', 'Staff', 'Weld & Assy', '', '232', '', ''),
(9970, 'Robik', 'Asst. Mgr.', 'PE', 'robik@pttrimitra.com', '216', '**177', '0813-1592-3302'),
(9972, 'Subagyo', 'Spv.', 'Quality', 'bagyo@pttrimitra.com', '112', '**249', '082114889301'),
(9973, 'Sutanto', 'Staff', 'Quality', '', '112', '', ''),
(9974, 'Aris Masruri', 'Asst. Mgr.', 'PQE', 'aris.masruri@pttrimitra.com', '313', '**021', '0878-0425-9443'),
(9975, 'Pendi', 'Staff', 'MRP', '', '314', '**120', '0856-9311-3627'),
(9976, 'Samsul', 'Staff', 'Incoming', '', '314', '**139', '0853-1180-3728'),
(9977, 'Warsito', 'Staff', 'PQE', '', '308', '', ''),
(9978, 'Yakub T', 'Staff', 'PQE', 'pqe@pttrimitra.com', '308', '', ''),
(9979, 'Pujiyanto', 'Staff', 'PQE', '', '313', '**171', '0821-1048-3154'),
(9980, 'M. Rokhani', 'Spv.', 'Delivery', 'rokhani@pttrimitra.com', '315', '**031', '0811-1896-985'),
(9981, 'Sukardi', 'Staff', 'Delivery', 'ppc3@pttrimitra.com', '312', '**158', '0877-4141-1921'),
(9982, 'Santoso', 'Staff', 'Delivery', '', '315', '**022', '0821-2327-3418'),
(9983, 'Fajar Triono', 'Staff', 'Delivery', '', '312', '**151', '0857-1747-1133'),
(9984, 'Septi', 'Staff', 'MRP', 'septi@pttrimitra.com', '', '**188', '0819-0358-8621'),
(9985, 'Ulung', 'Staff', 'MRP', '', '0', '**171', '0821-1048-3154'),
(9987, 'Pariama', 'Asst. Mgr.', 'PPIC', 'pariama@pttrimitra.com', '218', '**014', '0813-1591-9315'),
(9988, 'Fitra', 'Staff', 'Marketing', 'project.marketing@pttrimitra.com', '252', '', ''),
(9989, 'Soleh', 'Staff', 'PRE', '', '225', '**045', '0856-9357-4466'),
(9990, 'Niam', 'Staff', 'Engineering', '', '322', '', ''),
(9991, 'Yunus', 'Staff', 'Wirecut', '', '323', '**154', '0852-1413-0225'),
(9992, 'Sawab', 'Asst. Spv.', 'Wirecut', 'sawab@pttrimitra.com', '323', '**138', '0813-7245-2881'),
(9993, 'Dadang', 'Staff', 'Wirecut', '', '323', '**044', '0878-0459-3054'),
(9994, 'Aris', 'Staff', 'Engineering', '', '227', '', ''),
(9995, 'Husni', 'Staff', 'Engineering', '', '227', '', ''),
(9996, 'Syamsul', 'Staff', 'Engineering', 'design@pttrimitra.com', '227', '', ''),
(9997, 'Aditya', 'Staff', 'Engineering', 'aditya@pttrimitra.com', '223', '**010', '0812-9659-0474'),
(9998, 'Erwin', 'Dept. Mgr.', 'Engineering', 'erwin@pttrimitra.com', '220', '**043', '0821-4794-9516'),
(9999, 'Dedi', 'Staff', 'Purchasing', 'purchasing@pttrimitra.com', '238', '**134', '0857-1140-6492');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `division` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `nik`, `email`, `division`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Fathur Rahmansyah', '4730', 'fathur.rahmansyah@pttrimitra.com', 'IT', 'default.jpg', '$2y$10$1YUUgQbDfkQ/JidHrnAW3u.LyYO4XQAXlAg9A.5F.GVZhKY..arSy', 2, 1, 1579424017),
(2, 'Astari Nadinne', '4444', 'astari.nadinne@gmail.com', 'IT', 'default.jpg', '$2y$10$llZpgcs7qTP2zyiaWw.pL.9dtXNIJJMepKEU/2j1TdDHO/Lmi3SHS', 2, 1, 1579424890),
(3, 'Caesario', '4564', 'rio@ngalup.co.id', 'Marketing', 'default.jpg', '$2y$10$QvlKJkm07I/lr7n0ARFHR.9UR4WZCD6ASTbA1yQGwen2dnst6NB7e', 2, 1, 1579424985),
(4, 'Riski', '8982', 'riski@gmail.com', 'Purchasing', 'default.jpg', '$2y$10$wDT0hdQJ8QxLuWFnghiNpuLA1EMPEUhXHmX6Fkmv0YoFAMbqXle6K', 2, 1, 1579425041),
(5, 'administrator', '0000', 'admin@pttrimitra.com', 'IT', 'default.jpg', '$2y$10$Bk03mMWHp3iE5IAujFcdGOP2UXJ0ZIQECa5ot2YxdY.uVKslJEQaS', 1, 1, 1579792342),
(6, 'Nadiem Makarim', '8762', 'nadiem@go-jek.com', 'IT', 'default.jpg', '$2y$10$8S4TDfWn1qncTMjsVTzn9ek9StwBLJhNi2fIHjXJ7SbNeVH7pYVu2', 2, 1, 1580045971);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'menu'),
(4, 'Employe');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fa fa-dashcube', 1),
(2, 2, 'My Profile', 'user', 'fa fa-user', 1),
(3, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(4, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(5, 2, 'Elist', 'user/elist', 'fas fa-fw fa-phone-alt', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`NIK`,`Nama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ittch`
--
CREATE DATABASE IF NOT EXISTS `ittch` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ittch`;

-- --------------------------------------------------------

--
-- Table structure for table `it_supplier`
--

CREATE TABLE `it_supplier` (
  `id_supplier` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_supplier`
--

INSERT INTO `it_supplier` (`id_supplier`, `supplier_name`, `supplier_code`, `address`, `phone`) VALUES
(1, 'Perkasa Solusi Mandiri', 'PSM', 'Sukaresmi, Lippo cikarang', '081286216892'),
(2, 'F2F Com', 'F2F', 'Mangga Dua, Orion Dusit', '08158155985'),
(3, 'Saira Teknik', 'STK', 'Cikarang Baru', '089232132333'),
(4, 'Megatronic', 'MGT', 'Mangga Dua', '0212391823');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nik` varchar(4) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `level` int(1) NOT NULL COMMENT '1 admin 2 User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nik`, `password`, `name`, `division`, `level`) VALUES
(1, '4730', '02b29a4e1f9891a07f3ae0bbbaaf62fcc59c89b9', 'Fathur Rahmansyah', 'IT', 1),
(2, '1111', '011c945f30ce2cbafc452f39840f025693339c42', 'User', 'IT', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `it_supplier`
--
ALTER TABLE `it_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `it_supplier`
--
ALTER TABLE `it_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `manajemen_stok`
--
CREATE DATABASE IF NOT EXISTS `manajemen_stok` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `manajemen_stok`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` varchar(5) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `harga` int(3) DEFAULT NULL,
  `diskon` tinyint(3) DEFAULT 0,
  `pajak` tinyint(3) DEFAULT 0,
  `stok` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `nama`, `harga`, `diskon`, `pajak`, `stok`) VALUES
('3G2E5', 'Sepatu Tomkins', 900000, 1, 10, 10),
('B214G', 'sepatu adidas', 100000, 5, 0, 10),
('GCD1G', 'sepatu gelang', 60000, 50, 0, 6);

--
-- Triggers `barang`
--
DELIMITER $$
CREATE TRIGGER `after_insert_barang` AFTER INSERT ON `barang` FOR EACH ROW INSERT INTO stok SET
stok.idbarang = new.idbarang,
stok.masuk = new.stok,
stok.terjual = 0,
stok.updated_at = CURRENT_DATE
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `idstok` int(11) NOT NULL,
  `idbarang` varchar(5) DEFAULT NULL,
  `masuk` tinytext DEFAULT NULL,
  `terjual` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`idstok`, `idbarang`, `masuk`, `terjual`, `updated_at`) VALUES
(1, 'GCD1G', '6', 0, '2019-02-24'),
(3, 'B214G', '10', 0, '2019-02-24'),
(4, 'B214G', '17', 0, '2019-02-25'),
(5, 'GCD1G', '1', 0, '2019-02-25'),
(6, 'B214G', '3', 0, '2019-03-25'),
(7, 'GCD1G', '2', 0, '2019-03-25'),
(8, '3G2E5', '9', 0, '2020-02-15'),
(9, '3G2E5', '1', 0, '2020-02-15'),
(10, '3G2E5', '1', 0, '2020-02-15'),
(11, 'B214G', '6', 0, '2020-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(65) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nama` varchar(65) DEFAULT NULL,
  `akses` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `akses`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'RAGA MULIA KUSUMA', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_barang`
-- (See below for the actual view)
--
CREATE TABLE `v_barang` (
`idbarang` varchar(5)
,`nama` varchar(45)
,`harga` varchar(58)
,`diskon` varchar(6)
,`pajak` varchar(6)
,`stok` tinyint(1)
,`terjual` tinyint(1)
,`total` tinytext
,`last_modified` date
);

-- --------------------------------------------------------

--
-- Structure for view `v_barang`
--
DROP TABLE IF EXISTS `v_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_barang`  AS  select `barang`.`idbarang` AS `idbarang`,`barang`.`nama` AS `nama`,(select concat('Rp ',format(`barang`.`harga`,0))) AS `harga`,(select concat(`barang`.`diskon`,' %')) AS `diskon`,(select concat(`barang`.`pajak`,' %')) AS `pajak`,`barang`.`stok` AS `stok`,`stok`.`terjual` AS `terjual`,`stok`.`masuk` AS `total`,`stok`.`updated_at` AS `last_modified` from (`stok` join `barang` on(`barang`.`idbarang` = `stok`.`idbarang`)) order by `stok`.`updated_at` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`idstok`),
  ADD KEY `fk_stok_barang_idx` (`idbarang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `idstok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `fk_stok_barang` FOREIGN KEY (`idbarang`) REFERENCES `barang` (`idbarang`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_sistok\",\"table\":\"tbl_admin\"},{\"db\":\"ittch\",\"table\":\"it_supplier\"},{\"db\":\"trimitra\",\"table\":\"computer\"},{\"db\":\"trimitra\",\"table\":\"computers\"},{\"db\":\"trimitra\",\"table\":\"pc_specs\"},{\"db\":\"trimitra\",\"table\":\"users\"},{\"db\":\"ittch\",\"table\":\"user\"},{\"db\":\"rental_mobil\",\"table\":\"admin\"},{\"db\":\"rental_mobil\",\"table\":\"transaksi\"},{\"db\":\"project\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-03-26 13:22:20', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';
<div class="error"><h1>Error</h1><p><strong>SQL query:</strong>
<a href="server_sql.php?sql_query=SET+SQL_QUOTE_SHOW_CREATE+%3D+1&amp;show_query=1"><span class="nowrap"><img src="themes/dot.gif" title="Edit" alt="Edit" class="icon ic_b_edit" />&nbsp;Edit</span></a>    </p>
<p>
<code class="sql"><pre>
SET SQL_QUOTE_SHOW_CREATE = 1
</pre></code>
</p>
<p>
    <strong>MySQL said: </strong><a href="./url.php?url=https%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.7%2Fen%2Ferror-messages-server.html" target="mysql_doc"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</p>
<code>#2006 - MySQL server has gone away</code><br/></div>