-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2014 at 05:03 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ow_zm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT 'administrator',
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_session` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `no_telp`, `email`, `blokir`, `id_session`) VALUES
(1, 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'FHUNIDAR', '085228482669', 'FH@yahoo.co.id', 'Y', 'sa0co693e2iisud1dlm1cuutk5'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'HUKUMUNIDAR', '085228482669', 'UNIDAR', 'N', '0mhkd8ubdlekgfmc3uv0vgjnu6'),
(6, 'a', '0cc175b9c0f1b6a831c399e269772661', 'Zulham', '1234567890', 'zh@gmail.com', 'N', '0cc175b9c0f1b6a831c399e269772661');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `id_dosen` int(9) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username_login` varchar(100) NOT NULL,
  `password_login` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nip`, `nama_lengkap`, `username_login`, `password_login`, `alamat`, `tempat_lahir`, `tgl_lahir`, `no_telp`, `email`, `foto`) VALUES
(13, '105', 'Bagus Santoso', '105', '65b9eea6e1cc6bb9f0cd2a47751a186f', 'pelabuhan tulehu', 'Jawa', '1921-09-21', '1234567890', 'dosen@gmail.com', ''),
(14, '106', 'Rukiah Latuconsina,SH,MH', '106', 'f0935e4cd5920aa6c7c996a5ee53a70f', 'perumahan telkom ,kota masohi', 'Pelaw', '1984-02-16', '1234567890', 'dosen@gmail.com', ''),
(12, '104', 'Emy Ollong,SH, MH', '104', 'c9e1074f5b3f9fc8ea15d152add07294', 'xxxxxxxxxxxxxxxxxx', 'Desa Ureng', '1979-09-01', '1234567890', 'dosen@gmail.com', '16_DSC1599.jpg'),
(10, '102', 'Machmud Ramia,SH', '102', 'ec8956637a99787bd197eacd77acce5e', 'peumahan dosen darussalam,tulehu', 'Tulehu', '1959-09-10', '1234567890', 'dosen@gmail.com', '36DSC_0179.JPG'),
(9, '109', 'Ismail Lestaluhu,SH,MH', '109', '2723d092b63885e0d7c260cc007e8b9d', 'kampung lama desa tulehu', 'Tulehu', '1962-01-12', '1234567890', 'dosen@gmail.com', ''),
(8, '101', 'Asma Karim,SH, MH', '101', '38b3eff8baf56627478ec76a704e9b52', 'jalan talang ,kota masohi', 'Masohi', '1971-08-09', '1234567890', 'dosen@gmail.com', '44PicsArt_1347282898749.jpg'),
(11, '103', 'Dayanto,SH,MH', '103', '6974ce5ac660610b44d9b9fed0ff9548', 'kampung lesane ,kota masohi', 'Masohi', '1984-01-05', '1234567890', 'dosen@gmail.com', ''),
(15, '107', 'Mochtar Betaubun,SH,MH', '107', 'a97da629b098b75c294dffdc3e463904', 'batu merah ,kota ambon', 'Tual', '1981-12-28', '1234567890', 'dosen@gmail.com', ''),
(16, '108', 'Hasan Slamet', '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 'sugiarto,kota masohi', 'Masohi', '1987-10-22', '1234567890', 'dosen@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `iId` int(5) NOT NULL AUTO_INCREMENT,
  `iJudul` varchar(150) NOT NULL,
  `iIsi` text NOT NULL,
  `pengirim` int(11) NOT NULL,
  `tgl` date NOT NULL,
  PRIMARY KEY (`iId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`iId`, `iJudul`, `iIsi`, `pengirim`, `tgl`) VALUES
(5, 'Informasi Jadwal Ujian', '<p>Ujian Seminar akan dilakukan pada tanggal 12 s/d 19 november 2014.</p>\r\n\r\n<p>Untuk info lebih jelas hubungi bagian akademik. Terima Kasih</p>\r\n', 1, '2014-07-07'),
(6, 'Info Baru', '<p>Isi Info Baru</p>\r\n', 3, '2014-08-06'),
(7, 'Login Mahasiswa', '<p>Disampaikan kepada seluruh mahasiswa FH-UNIDAR untuk menghubungi bagian akademik fakultas untuk melakukan registrasi akun dengan kelengkapan persyaratan yang telah ditentukan. Terima Kasih</p>\r\n', 3, '2014-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `jId` int(5) NOT NULL AUTO_INCREMENT,
  `id_dosen` int(5) NOT NULL,
  `kId` int(5) NOT NULL,
  `jTgl` date NOT NULL,
  `jJam` varchar(15) NOT NULL,
  PRIMARY KEY (`jId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`jId`, `id_dosen`, `kId`, `jTgl`, `jJam`) VALUES
(1, 8, 1, '2014-08-07', '09.20-14.00'),
(3, 8, 2, '2014-08-08', '09.00-15.00'),
(6, 12, 1, '2014-08-09', '09.20-14.00'),
(7, 12, 2, '2014-08-10', '09.00-15.00'),
(8, 12, 1, '2014-08-11', '09.00-15.00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `jId` int(5) NOT NULL AUTO_INCREMENT,
  `jNama` varchar(50) NOT NULL,
  PRIMARY KEY (`jId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`jId`, `jNama`) VALUES
(1, 'PIDANA'),
(2, 'PERDATA');

-- --------------------------------------------------------

--
-- Table structure for table `kampus`
--

CREATE TABLE IF NOT EXISTS `kampus` (
  `kId` int(5) NOT NULL AUTO_INCREMENT,
  `kNama` varchar(150) NOT NULL,
  PRIMARY KEY (`kId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kampus`
--

INSERT INTO `kampus` (`kId`, `kNama`) VALUES
(1, 'Kampus A'),
(2, 'Kampus B'),
(3, 'Kampus C');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `kkId` int(11) NOT NULL AUTO_INCREMENT,
  `kId` int(11) NOT NULL,
  `kkLevel` enum('2','3') DEFAULT NULL,
  `kkOleh` varchar(20) DEFAULT NULL,
  `kkPesan` text NOT NULL,
  `kkBaca` enum('0','1') NOT NULL DEFAULT '0',
  `kkWaktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kkId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`kkId`, `kId`, `kkLevel`, `kkOleh`, `kkPesan`, `kkBaca`, `kkWaktu`) VALUES
(3, 1, '2', '12', 'Perbaiki penulisan sesuaikan dengan panduan penulisan', '1', '2014-08-07 16:33:36'),
(4, 1, '3', '200911336', 'Terima kasih pak..\r\nakan saya perbaiki secepatnya..', '1', '2014-08-07 16:52:08'),
(5, 1, '3', '200911336', 'Apakah ada batasan tahun buku yang digunakan untuk referensi??', '1', '2014-08-07 16:54:05'),
(6, 2, '2', '12', 'Lengkapi BAB 3 dengan jadwal penelitian', '1', '2014-08-07 17:44:40'),
(7, 4, '2', '12', 'Silahkan antar lembar konsultasi dan berkas untuk di ACC', '1', '2014-08-07 17:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE IF NOT EXISTS `konsultasi` (
  `kId` int(5) NOT NULL AUTO_INCREMENT,
  `sId` int(5) NOT NULL,
  `dosId` int(11) NOT NULL,
  `kBaca` enum('0','1') NOT NULL DEFAULT '0',
  `kKet` text NOT NULL,
  `kFile` varchar(255) NOT NULL,
  `kWaktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`kId`, `sId`, `dosId`, `kBaca`, `kKet`, `kFile`, `kWaktu`) VALUES
(1, 1, 12, '1', 'Konsultasi Pertama', '35Laravel - From Apprentice To Artisan.pdf', '2014-08-07 10:28:45'),
(2, 4, 12, '1', 'Konslutasi Pertama', '5manual moodle lengkap.doc', '2014-08-07 17:35:42'),
(4, 1, 12, '1', 'Konsultasi Kedua (Perbaikan penulisan)', '33making_forum.pdf', '2014-08-07 17:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `mNim` varchar(15) NOT NULL,
  `mNama` varchar(50) NOT NULL,
  `mTgllhr` date NOT NULL,
  `mTmpt` varchar(25) NOT NULL,
  `mTelp` varchar(15) NOT NULL,
  `mEmail` varchar(50) NOT NULL,
  `mAlamat` text NOT NULL,
  `mFoto` varchar(150) NOT NULL,
  `jId` int(5) NOT NULL,
  `kId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`mNim`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mNim`, `mNama`, `mTgllhr`, `mTmpt`, `mTelp`, `mEmail`, `mAlamat`, `mFoto`, `jId`, `kId`, `username`, `password`) VALUES
('201011123', 'Ridwan Lesstaluhu', '1990-04-01', 'tulehu', '1234567890', 'mhs@gmail.com', 'kompleks hurnala ,desa tulehu', '', 1, 1, '004', '11364907cf269dd2183b64287156072a'),
('200911336', 'Nurlila Para', '1984-05-08', 'tihu', '1234567890', 'mhs@gmail.com', 'Jalan Soa Bali,Kota Ambon', '24images.jpg', 2, 1, '001', 'dc5c7986daef50c1e02ab09b442ee34f'),
('201011074', 'Jekta Karnudu', '1991-04-04', 'pulau rhun', '1234567890', 'mhs@gmail.com', 'kampung lama desa tulehu', '', 1, 1, '003', 'e88a49bccde359f0cabb40db83ba6080'),
('201011161', 'Syamsudin', '1971-08-17', 'kendari', '1234567890', 'mhs@gmail.com', 'jln lesane ', '', 1, 3, '005', 'ce08becc73195df12d99d761bfbba68d'),
('201011009', 'Afid Suandi Lamadi', '1992-05-16', 'banda ', '1234567890', 'mhs@gmail.com', 'jln kebun cengkeh', '', 1, 1, '002', '93dd4de5cddba2c733c65f233097f05a');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE IF NOT EXISTS `periode` (
  `pTahun` char(4) NOT NULL,
  `pDekan` varchar(50) NOT NULL,
  `pDNip` varchar(50) NOT NULL,
  `pQSP` int(11) NOT NULL,
  `pQUH` int(11) NOT NULL,
  `pQUM` int(11) NOT NULL,
  `pAktif` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`pTahun`, `pDekan`, `pDNip`, `pQSP`, `pQUH`, `pQUM`, `pAktif`) VALUES
('2014', 'ISMAIL LESTALUHU, SH. MH', '197330427 200212 2 005', 30, 30, 30, '1');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE IF NOT EXISTS `skripsi` (
  `sId` int(5) NOT NULL AUTO_INCREMENT,
  `sJudul` text NOT NULL,
  `sStatus` enum('0','1','2') NOT NULL DEFAULT '0',
  `mNim` varchar(15) NOT NULL,
  `sTahun` varchar(4) NOT NULL,
  `sTgl` date NOT NULL,
  `sNoSKPembimbing` varchar(100) DEFAULT NULL,
  `sPem1` int(11) DEFAULT NULL,
  `sPem2` int(11) DEFAULT NULL,
  `sKomentar` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`sId`, `sJudul`, `sStatus`, `mNim`, `sTahun`, `sTgl`, `sNoSKPembimbing`, `sPem1`, `sPem2`, `sKomentar`) VALUES
(1, 'Peranan Unit Identifikasi Dalam Proses Penyidikan Untuk Mengungkapkan Suatu Tindak Pidana (Studi Kasus Di Polresta Malteng', '2', '200911336', '2014', '2014-08-07', '001/SK/FH.UD/2014', 14, 12, NULL),
(3, 'studi terhadap pekerja anakdi kota ambon dalam perspektif hak asasi manusia (HAM)', '1', '200911336', '2014', '2014-08-07', NULL, NULL, NULL, NULL),
(4, 'Studi Terhadap Pekerja Anak di Kota Ambon Dalam Perspektif Hak Asasi Manusia (HAM)', '2', '201011009', '2014', '2014-08-07', '002/SK/FH.UD/2014', 12, 10, NULL),
(6, 'Coba Judul TA', '1', '201011074', '2014', '2014-08-17', NULL, NULL, NULL, 'Objek dalam TA bersifat abstrak (tidak jelas)'),
(7, 'Studi Terhadap UU Pemilu dalam Mengurangi Angka Golongan Putih (GOLPUT) di Kota Ambon', '2', '201011074', '2014', '2014-08-17', ' 003/SK/FH.UD/2014', 12, 13, NULL),
(8, 'Peranan Unit Identifikasi Dalam Proses Penyidikan Untuk Mengungkapkan Suatu Tindak Pidana (Studi Kasus Di Polresta Malteng)', '0', '201011123', '2014', '2014-08-19', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ujian_hasil`
--

CREATE TABLE IF NOT EXISTS `ujian_hasil` (
  `sId` int(5) NOT NULL,
  `mNim` varchar(15) NOT NULL,
  `sTahun` varchar(4) NOT NULL,
  `sTgl` date NOT NULL,
  `sJam` varchar(15) NOT NULL,
  `sT4` varchar(100) NOT NULL,
  `sNoSK` varchar(100) NOT NULL,
  `sPenguji1` int(11) NOT NULL,
  `sPenguji2` int(11) NOT NULL,
  `sPenguji3` int(11) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian_hasil`
--

INSERT INTO `ujian_hasil` (`sId`, `mNim`, `sTahun`, `sTgl`, `sJam`, `sT4`, `sNoSK`, `sPenguji1`, `sPenguji2`, `sPenguji3`) VALUES
(1, '200911336', '2014', '2014-08-23', '11.00', 'Ruang 110', '005/SK/FH.UD/2014', 10, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ujian_meja`
--

CREATE TABLE IF NOT EXISTS `ujian_meja` (
  `sId` int(5) NOT NULL,
  `mNim` varchar(15) NOT NULL,
  `sTahun` varchar(4) NOT NULL,
  `sTgl` date NOT NULL,
  `sJam` varchar(15) NOT NULL,
  `sT4` varchar(100) NOT NULL,
  `sNoSK` varchar(100) NOT NULL,
  `sPenguji1` int(11) NOT NULL,
  `sPenguji2` int(11) NOT NULL,
  `sPenguji3` int(11) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian_meja`
--

INSERT INTO `ujian_meja` (`sId`, `mNim`, `sTahun`, `sTgl`, `sJam`, `sT4`, `sNoSK`, `sPenguji1`, `sPenguji2`, `sPenguji3`) VALUES
(1, '200911336', '2014', '2014-08-25', '10.00', 'Ruang 202', '007/SK/FH.UD/2014', 15, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ujian_proposal`
--

CREATE TABLE IF NOT EXISTS `ujian_proposal` (
  `sId` int(5) NOT NULL,
  `mNim` varchar(15) NOT NULL,
  `sTahun` varchar(4) NOT NULL,
  `sTgl` date NOT NULL,
  `sJam` varchar(15) NOT NULL,
  `sT4` varchar(255) NOT NULL,
  `sNoSK` varchar(100) NOT NULL,
  `sPenguji1` int(11) NOT NULL,
  `sPenguji2` int(11) NOT NULL,
  `sPenguji3` int(11) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian_proposal`
--

INSERT INTO `ujian_proposal` (`sId`, `mNim`, `sTahun`, `sTgl`, `sJam`, `sT4`, `sNoSK`, `sPenguji1`, `sPenguji2`, `sPenguji3`) VALUES
(1, '200911336', '2014', '2014-08-17', '12.00', 'Ruang 201', '004/SK/FH.UD/2014', 14, 10, 9),
(4, '201011009', '2014', '2014-08-20', '12.00', 'Ruang 104', '006/SK/FH.UD/2014', 8, 10, 13);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
