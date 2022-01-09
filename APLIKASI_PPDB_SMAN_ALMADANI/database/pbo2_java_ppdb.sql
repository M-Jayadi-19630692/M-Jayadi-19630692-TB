-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 08.03
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `pbo2_java_ppdb`
--
CREATE DATABASE IF NOT EXISTS `pbo2_java_ppdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pbo2_java_ppdb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_administrasi`
--

CREATE TABLE IF NOT EXISTS `data_administrasi` (
  `noadm` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jenis_bpn` varchar(100) NOT NULL,
  `biaya_bpn` varchar(100) NOT NULL,
  `jumlah_bpn` varchar(100) NOT NULL,
  `sisa_bpn` varchar(100) NOT NULL,
  `sts_lunas` varchar(100) NOT NULL,
  PRIMARY KEY (`noadm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_administrasi`
--

INSERT INTO `data_administrasi` (`noadm`, `nama`, `jk`, `tgl_bayar`, `jenis_bpn`, `biaya_bpn`, `jumlah_bpn`, `sisa_bpn`, `sts_lunas`) VALUES
(1, 'Agus Hermansyah', 'Laki-Laki', '2021-10-20', 'A2 (5 Pendaftar Pertama	: Rp. 700.000)', '700000', '700000', '0', 'Lunas'),
(2, 'Andhini', 'Perempuan', '2021-10-21', 'A1 (Mampu		: Rp. 1.000.000)', '1000000', '500000', '500000', 'Belum Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_login`
--

CREATE TABLE IF NOT EXISTS `data_login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `data_login`
--

INSERT INTO `data_login` (`id_login`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'adi77', 'adi77');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penerimaan`
--

CREATE TABLE IF NOT EXISTS `data_penerimaan` (
  `nisn` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `nilai_rata2` varchar(100) NOT NULL,
  `nilai_rata2_lulus` varchar(100) NOT NULL,
  `berkas` varchar(100) NOT NULL,
  `sts_adm` varchar(100) NOT NULL,
  `sts_lulus` varchar(100) NOT NULL,
  PRIMARY KEY (`nisn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penerimaan`
--

INSERT INTO `data_penerimaan` (`nisn`, `nama`, `jk`, `nilai_rata2`, `nilai_rata2_lulus`, `berkas`, `sts_adm`, `sts_lulus`) VALUES
(111432, 'Agus Hermansyah', 'Laki-Laki', '81', '79', 'Sudah Lengkap', 'Sedang Di Proses', 'Diterima/Lulus'),
(230912, 'Salsa', 'Perempuan', '80', '79', 'Sudah Lengkap', 'Pembayaran Lunas', 'Diterima/Lulus'),
(237521, 'Lisa', 'Perempuan', '81', '79', 'Sudah Lengkap', 'Pembayaran Lunas', 'Diterima/Lulus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE IF NOT EXISTS `data_siswa` (
  `noped` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `asal_sklh` varchar(100) NOT NULL,
  `nilai_rata2` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `sts_administrasi` varchar(100) NOT NULL,
  `sts_penerimaan` varchar(100) NOT NULL,
  PRIMARY KEY (`noped`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`noped`, `nama`, `nisn`, `jk`, `tmp_lahir`, `tgl_lahir`, `asal_sklh`, `nilai_rata2`, `alamat`, `sts_administrasi`, `sts_penerimaan`) VALUES
(1112, 'Aulia Rahmi', '111434', 'Perempuan', 'Tanah Laut', '2003-01-19', 'SMPN 13 Banjarmasin', '69', 'Komplek Indah Permai 5 No. 07', 'Pembayaran Belum Lunas', 'Tidak Diterima'),
(2111, 'Andi', '1212', 'Laki-Laki', 'Banjarmasin', '2002-01-21', 'SMPN AL-Madani', '75', 'Banjarmasin', 'Sedang Di Proses', 'Sedang Di Proses');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
