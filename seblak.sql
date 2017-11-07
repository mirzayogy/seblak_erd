-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 Nov 2017 pada 00.46
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seblak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_pendidikan`
--

CREATE TABLE `t_det_pendidikan` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_pendidikan` int(11) NOT NULL,
  `jenis_pendidikan` varchar(255) NOT NULL,
  `smt_pendidikan` int(11) NOT NULL,
  `kegiatan_pendidikan` varchar(255) NOT NULL,
  `tempat_pendidikan` varchar(255) NOT NULL,
  `tanggal_pendidikan` date NOT NULL,
  `jumlah_angka_pendidikan` int(11) NOT NULL,
  `bukti_fisik_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_penelitian`
--

CREATE TABLE `t_det_penelitian` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `nilai_angka_kredit` int(11) NOT NULL,
  `nilai_pimpinan` int(11) NOT NULL,
  `nilai_pusat` int(11) NOT NULL,
  `bukti_fisik_penelitian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_pengabdian`
--

CREATE TABLE `t_det_pengabdian` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_pengabdian` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `bentuk` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal_pengabdian` date NOT NULL,
  `nilai_angka_kredit` int(11) NOT NULL,
  `bukti_fisik_pengabdian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_penunjang`
--

CREATE TABLE `t_det_penunjang` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_penunjang` int(11) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `kegiatan_penunjang` varchar(255) NOT NULL,
  `tingkat` varchar(255) NOT NULL,
  `tempat_kegiatan` varchar(255) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `jumlah_angka_penunjang` int(11) NOT NULL,
  `bukti_fisik_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_dosen`
--

CREATE TABLE `t_dosen` (
  `id` int(11) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `status_kepegawaian` varchar(255) NOT NULL,
  `nipnik` varchar(255) NOT NULL,
  `nidn` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `id_universitas` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kepegawaian`
--

CREATE TABLE `t_kepegawaian` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_dosen_` int(11) NOT NULL,
  `id_riwayat_pangkat` int(11) NOT NULL,
  `id_riwayat_jabatan` int(11) NOT NULL,
  `no_serdos` int(11) NOT NULL,
  `tmt_dosen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kredit`
--

CREATE TABLE `t_kredit` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `total_angka_kredit` int(11) NOT NULL,
  `jabatan_terakhir` varchar(255) NOT NULL,
  `jabatan_baru` varchar(255) NOT NULL,
  `tanggal_diterima` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pendidikan_pengajaran`
--

CREATE TABLE `t_pendidikan_pengajaran` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `nama_pj` varchar(255) NOT NULL,
  `nipnik_pj` varchar(255) NOT NULL,
  `panggol_pj` varchar(255) NOT NULL,
  `jabatan_pj` varchar(255) NOT NULL,
  `unit_kerja_pj` varchar(255) NOT NULL,
  `tanggal_pj` date NOT NULL,
  `total_nilai_pendidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penelitian`
--

CREATE TABLE `t_penelitian` (
  `id` int(11) NOT NULL,
  `created_by` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `nama_pj` varchar(255) NOT NULL,
  `nipnik_pj` varchar(255) NOT NULL,
  `panggol_pj` varchar(255) NOT NULL,
  `jabatan_pj` varchar(255) NOT NULL,
  `unit_kerja_pj` varchar(255) NOT NULL,
  `tanggal_pj` date NOT NULL,
  `total_nilai_penelitian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengabdian`
--

CREATE TABLE `t_pengabdian` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `nama_pj` varchar(255) NOT NULL,
  `nipnik_pj` varchar(255) NOT NULL,
  `panggol_pj` varchar(255) NOT NULL,
  `jabatan_pj` varchar(255) NOT NULL,
  `unit_kerja_pj` varchar(255) NOT NULL,
  `tanggal_pj` date NOT NULL,
  `total_nilai_pengabdian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penunjang`
--

CREATE TABLE `t_penunjang` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `nama_pj` varchar(255) NOT NULL,
  `nipnik_pj` varchar(255) NOT NULL,
  `panggol_pj` varchar(255) NOT NULL,
  `jabatan_pj` varchar(255) NOT NULL,
  `unit_kerja_pj` varchar(255) NOT NULL,
  `tanggal_pj` date NOT NULL,
  `total_nilai_penunjang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_usulan`
--

CREATE TABLE `t_usulan` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `tanggal_ijazah` date NOT NULL,
  `pangkat_golongan` varchar(255) NOT NULL,
  `tmt_pangkat` varchar(255) NOT NULL,
  `jabatan_fungsional` varchar(255) NOT NULL,
  `tmt_fungsional` varchar(255) NOT NULL,
  `masa_kerja_lama` varchar(255) NOT NULL,
  `masa_kerja_baru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_det_pendidikan`
--
ALTER TABLE `t_det_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_det_penelitian`
--
ALTER TABLE `t_det_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_det_pengabdian`
--
ALTER TABLE `t_det_pengabdian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_det_penunjang`
--
ALTER TABLE `t_det_penunjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_dosen`
--
ALTER TABLE `t_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_kepegawaian`
--
ALTER TABLE `t_kepegawaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_kredit`
--
ALTER TABLE `t_kredit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pendidikan_pengajaran`
--
ALTER TABLE `t_pendidikan_pengajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_penelitian`
--
ALTER TABLE `t_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pengabdian`
--
ALTER TABLE `t_pengabdian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_penunjang`
--
ALTER TABLE `t_penunjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_usulan`
--
ALTER TABLE `t_usulan`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
