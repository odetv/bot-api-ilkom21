-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 14.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(1, 'master', 'master');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `ttl_mhs` varchar(255) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `kelas_mhs` varchar(11) NOT NULL,
  `no_hp_mhs` varchar(255) NOT NULL,
  `email_mhs` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `status_mhs` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `nama_mhs`, `ttl_mhs`, `semester`, `kelas_mhs`, `no_hp_mhs`, `email_mhs`, `prodi`, `jurusan`, `fakultas`, `status_mhs`) VALUES
(1, 2115101002, 'Kadek Widiadnyana', 'Desa Sinabun, 01-05-2003', 'IV', 'A', '081246173876', 'widiadnyana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(2, 2115101003, 'Made Andika Wiananda', 'Singaraja, 12-10-2003', 'IV', 'A', '085792980841', 'andika.wiananda@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(3, 2115101004, 'I Kadek Prasta Yudhantara', 'Gilimanuk, 04-07-2002', 'IV', 'A', '081949673417', 'prasta@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(4, 2115101008, 'Putu Mandiasa', 'Tamblang, 27-09-2002', 'IV', 'A', '085936739551', 'mandiasa@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(5, 2115101010, 'Ni Putu Ari Kusumadewi', 'Tegak, 20-03-2003', 'IV', 'A', '087888244915', 'ari.kusumadewi@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(6, 2115101014, 'I Gede Gelgel Abdiutama', 'Mataram, 26-07-2002', 'IV', 'A', '085739683673', 'gelgel.abdiutama@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(7, 2115101015, 'Okthen Orlanda Naitboho', 'Oebonak, 11-10-2003', 'IV', 'A', '081343160169', 'okthen@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(8, 2115101016, 'Subhan Maulana', 'Singaraja, 06-05-2003', 'IV', 'A', '082147080983', 'subhan@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(9, 2115101017, 'Nyoman Yudhi Gunawan', 'Singaraja, 02-11-2002', 'IV', 'A', '081353990957', 'yudhi.gunawan@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(10, 2115101018, 'Fitriani Gea', 'Hilimbowo, 19-04-2003', 'IV', 'A', '085260708346', 'fitriani.gea@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(11, 2115101024, 'Kadek Feny Sugiantari', 'Singaraja, 04-09-2002', 'IV', 'A', '081937036468', 'feny@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(12, 2115101026, 'Gede Bakti Pratama Putra', 'Madenan, 14-03-2002', 'IV', 'A', '087843911673', 'bakti@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(13, 2115101031, 'Gusti Putu Ayu Mas Meita Pradnya Swari', 'Negara, 01-05-2003', 'IV', 'A', '083114044502', 'ayu.mas.meita@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(14, 2115101033, 'I Putu Dion Arditya', 'Cau belayu, 21-09-2003', 'IV', 'A', '081244737827', 'dion.arditya@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(15, 2115101038, 'I Nyoman Rahadyan Adji Sastra', 'Ambengan, 06-06-2003', 'IV', 'A', '082145847423', 'rahadyan@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(16, 2115101039, 'Komang Juliana', 'Sambangan, 25-07-2003', 'IV', 'A', '083115939673', 'juliana.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(17, 2115101040, 'Made Waradiana Aryadi', 'Singaraja, 06-07-2003', 'IV', 'A', '089522818869', 'waradiana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(18, 2115101041, 'I Made Bayu Sastra Wiguna', 'Benanan, 05-07-2003', 'IV', 'A', '081237015813', 'bayu.sastra@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(19, 2115101042, 'Ali Siddiq Al Farizi Siregar', 'Kisaran, 09-01-2003', 'IV', 'A', '082164429748', 'ali.siddiq@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(20, 2115101044, 'Putu Adi Widyantara', 'Tejakula, 20-06-2002', 'IV', 'A', '081353084295', 'adi.widyantara@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(21, 2115101049, 'Putu Wendi Prasetya', 'Desa ambengan, 21-04-2003', 'IV', 'A', '087858755435', 'wendi@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(22, 2115101050, 'Godlife Nehrad Anton Hindom', 'Faktak, Papua Barat, 01-06-2002', 'IV', 'A', '082190735101', 'godlife@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(23, 2115101051, 'Bagus Aji Andarwira', 'Surabaya, 04-12-2002', 'IV', 'A', '087849808586', 'bagus.aji@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(24, 2115101052, 'Arteddy Rover Bukit', 'Desa Bukit, 11-11-2002', 'IV', 'A', '082165702232', 'arteddy@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(25, 2115101054, 'I Komang Krisna Aditya Pranata', 'Bangli, 08-03-2003', 'IV', 'A', '081353046989', 'krisna.aditya.pranata@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(26, 2115101055, 'David Mario Yohanes Samosir', 'Cibinong, Bogor, 06-09-2002', 'IV', 'B', '081289324751', 'david.mario@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(27, 2115101056, 'Ngakan Gde Satria Abirama', 'Singaraja, 16-08-2003', 'IV', 'B', '085739822692', 'ngakan.gde@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(28, 2115101057, 'Komang Dendi Perwira Putra', 'Singaraja, 10-01-2001', 'IV', 'B', '081339729752', 'dendi.perwira@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(29, 2115101058, 'Dewa Putu Indra Sunarya', 'Singaraja, 09-09-2002', 'IV', 'B', '081918520502', 'indra.sunarya@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(30, 2115101061, 'Komang Wahyu Kusuma Wardana', 'Selat, 10-03-2002', 'IV', 'B', '0895373956789', 'wahyu.kusuma.wardana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(31, 2115101062, 'Putu Indah Wahyuni', 'Gianyar, 10-04-2003', 'IV', 'B', '087854610630', 'indah.wahyuni.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(32, 2115101063, 'Komang Wibisana', 'Bengkel, 29-11-2003', 'IV', 'B', '0881038224877', 'wibisana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(33, 2115101064, 'Ketut Adhitia Permana Kusuma', '-', 'IV', 'B', '081380069736', 'adhitia.permana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(34, 2115101065, 'Gede Martha Kusuma', 'Singaraja, 06-03-2003', 'IV', 'B', '085156331403', 'martha.kusuma@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(35, 2115101066, 'I Gede Risva Darma Sentana', 'Seraya Tengah, Karangasem, 12-01-2001', 'IV', 'B', '081294725481', 'risva@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(36, 2115101067, 'Anggaradiva Bendesa', 'Denpasar, 02-12-2002', 'IV', 'B', '081326037908', 'anggaradiva@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(37, 2115101068, 'Komang Erwin Pranata', 'Kec.seririt, Kab.buleleng, 12-04-2003', 'IV', 'B', '088219288548', 'erwin.pranata@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(38, 2115101069, 'Made Yudi Widiandana', 'Batur Tengah, 22-10-2021', 'IV', 'B', '087763140440', 'yudi.widiandana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(39, 2115101070, 'Ni Kadek Aprianti', 'Bebandem, 09-04-2002', 'IV', 'B', '087752375284', 'aprianti@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(40, 2115101071, 'Kadek Yuda Mahendra', 'Singaraja, 05-04-2003', 'IV', 'B', '083114106206', 'yuda.mahendra.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(41, 2115101072, 'Made Govinda Premana Sidhi', 'Singaraja, 12-07-2003', 'IV', 'B', '087701960832', 'govinda@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(42, 2115101073, 'I Made Septian Cahya Pradito', 'Surabaya, Jawa Timur, 12-09-2002', 'IV', 'B', '085739702100', 'septian.cahya@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(43, 2115101074, 'Syaiful Haq', 'Singaraja, Bali, 28-11-1999', 'IV', 'B', '0895368781077', 'syaiful.haq@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(44, 2115101075, 'I Komang Windra Artha', 'Badung, 15-05-2003', 'IV', 'B', '087850043814', 'windra@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(45, 2115101077, 'Made Restu Wedatama', 'Buleleng, 28-07-2003', 'IV', 'B', '087763247135', 'restu.wedatama@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(46, 2115101078, 'Ikd Bujangga Sakti', 'Temakung, 03-09-2003', 'IV', 'B', '087853844295', 'ikd@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(47, 2115101079, 'I Made Adi Wahyudinata', 'Batur Tengah, 05-09-2002', 'IV', 'B', '085738872467', 'adi.wahyudinata@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(48, 2115101080, 'I Gede Sudiartika', 'Jumenang, 10-10-2003', 'IV', 'B', '085337342804', 'sudiartika@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(49, 2115101081, 'I Kadek Yoga Mardiawan', '-', 'IV', 'B', '085738150784', 'yoga.mardiawan@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(50, 2115101001, 'Desak Putu Mahadewi Saraswati', '-', 'IV', 'IKI', '-', 'desak.mahadewi.saraswati@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(51, 2115101005, 'Kadek Puja Astawa', '-', 'IV', 'IKI', '-', 'puja.astawa.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(52, 2115101006, 'Dewa Komang Reiki Perdana Wisnu', '-', 'IV', 'IKI', '-', 'reiki@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(53, 2115101007, 'I Ketut adi krisna murti saksena', '-', 'IV', 'IKI', '-', 'adi.krisna.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(54, 2115101011, 'Putu Adi Sastrawan', '-', 'IV', 'IKI', '-', 'adi.sastrawan.2@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(55, 2115101012, 'I Komang Arya Adi Kusuma', '-', 'IV', 'IKI', '-', 'arya.adi.kusuma@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(56, 2115101013, 'Darmawan Jiddan', '-', 'IV', 'IKI', '-', 'darmawan.jiddan@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(57, 2115101019, 'Putu Bagus Muhammad Fajar', '-', 'IV', 'IKI', '-', 'bagus.fajar@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(58, 2115101021, 'I Gede Deindra Dwija Puridiasta', '-', 'IV', 'IKI', '-', 'deindra@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(59, 2115101022, 'Andreas Stiady', '-', 'IV', 'IKI', '-', 'andreas.stiady@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(60, 2115101023, 'Dewa Gede Bhaskara Pramudya', '-', 'IV', 'IKI', '-', 'bhaskara.pramudya@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(61, 2115101025, 'I Kadek Bayu Danu Artha', '-', 'IV', 'IKI', '-', 'bayu.danu@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(62, 2115101027, 'Joe Aqilla Vandyta', '-', 'IV', 'IKI', '-', 'joe@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(63, 2115101029, 'Anak Agung Ade Wahyu Widya Nanda', '-', 'IV', 'IKI', '-', 'anak.agung.ade@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(64, 2115101032, 'Tegar Samjoe Indra Laka', '-', 'IV', 'IKI', '-', 'tegar.samjoe@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(65, 2115101034, 'I Gusti Ngurah Kadek Rian Adnyana', '-', 'IV', 'IKI', '-', 'rian.adnyana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(66, 2115101035, 'I Wayan Wahyu Kusuma', '-', 'IV', 'IKI', '-', 'wahyu.kusuma@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(67, 2115101036, 'Komang Adi Satya Mahagangga', '-', 'IV', 'IKI', '-', 'adi.satya@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(68, 2115101037, 'Mellisa Damayanti', '-', 'IV', 'IKI', '-', 'mellisa@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(69, 2115101043, 'Kadek Agung Kannha Wiswambara', '-', 'IV', 'IKI', '-', 'agung.kannha@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(70, 2115101045, 'Putu Gede Dimas Witjaksana', '-', 'IV', 'IKI', '-', 'dimas.witjaksana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(71, 2115101046, 'Kadek Losinanda Prawira', '-', 'IV', 'IKI', '-', 'losinanda@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(72, 2115101048, 'Kadek Agus Tamayasa', '-', '-', 'IKI', '-', 'agus.tamayasa@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', ''),
(73, 2115101053, 'Komang Harry Sudana', '-', 'IV', 'IKI', '-', 'harry.sudana@undiksha.ac.id', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(74, 2115101059, 'Ni Putu Karisma Dewi', '-', 'IV', 'IKI', '-', 'risma.karisma753@gmail.com', 'S1 Ilmu Komputer', 'Teknik Informatika', 'Fakultas Teknik dan Kejuruan', 'Aktif'),
(76, 1000000001, 'Dummy Nama 1', 'dummy, 01-01-2001', 'I', 'A', '085192783672', 'dummy1@mail.com', 'S1 Dummy', 'Dummy J', 'Dummy F', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_login` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_login`, `email`, `password`) VALUES
(1, 'widiadnyana@undiksha.ac.id', '2115101002'),
(2, 'andika.wiananda@undiksha.ac.id', '2115101003'),
(3, 'prasta@undiksha.ac.id', '2115101004'),
(4, 'mandiasa@undiksha.ac.id', '2115101008'),
(5, 'ari.kusumadewi@undiksha.ac.id', '2115101010'),
(6, 'gelgel.abdiutama@undiksha.ac.id', '2115101014'),
(7, 'okthen@undiksha.ac.id', '2115101015'),
(8, 'subhan@undiksha.ac.id', '2115101016'),
(9, 'yudhi.gunawan@undiksha.ac.id', '2115101017'),
(10, 'fitriani.gea@undiksha.ac.id', '2115101018'),
(11, 'feny@undiksha.ac.id', '2115101024'),
(12, 'bakti@undiksha.ac.id', '2115101026'),
(13, 'ayu.mas.meita@undiksha.ac.id', '2115101031'),
(14, 'dion.arditya@undiksha.ac.id', '2115101033'),
(15, 'rahadyan@undiksha.ac.id', '2115101038'),
(16, 'juliana.2@undiksha.ac.id', '2115101039'),
(17, 'waradiana@undiksha.ac.id', '2115101040'),
(18, 'bayu.sastra@undiksha.ac.id', '2115101041'),
(19, 'ali.siddiq@undiksha.ac.id', '2115101042'),
(20, 'adi.widyantara@undiksha.ac.id', '2115101044'),
(21, 'wendi@undiksha.ac.id', '2115101049'),
(22, 'godlife@undiksha.ac.id', '2115101050'),
(23, 'bagus.aji@undiksha.ac.id', '2115101051'),
(24, 'arteddy@undiksha.ac.id', '2115101052'),
(25, 'krisna.aditya.pranata@undiksha.ac.id', '2115101054'),
(26, 'david.mario@undiksha.ac.id', '2115101055'),
(27, 'ngakan.gde@undiksha.ac.id', '2115101056'),
(28, 'dendi.perwira@undiksha.ac.id', '2115101057'),
(29, 'indra.sunarya@undiksha.ac.id', '2115101058'),
(30, 'wahyu.kusuma.wardana@undiksha.ac.id', '2115101061'),
(31, 'indah.wahyuni.2@undiksha.ac.id', '2115101062'),
(32, 'wibisana@undiksha.ac.id', '2115101063'),
(33, 'adhitia.permana@undiksha.ac.id', '2115101064'),
(34, 'martha.kusuma@undiksha.ac.id', '2115101065'),
(35, 'risva@undiksha.ac.id', '2115101066'),
(36, 'anggaradiva@undiksha.ac.id', '2115101067'),
(37, 'erwin.pranata@undiksha.ac.id', '2115101068'),
(38, 'yudi.widiandana@undiksha.ac.id', '2115101069'),
(39, 'aprianti@undiksha.ac.id', '2115101070'),
(40, 'yuda.mahendra.2@undiksha.ac.id', '2115101071'),
(41, 'govinda@undiksha.ac.id', '2115101072'),
(42, 'septian.cahya@undiksha.ac.id', '2115101073'),
(43, 'syaiful.haq@undiksha.ac.id', '2115101074'),
(44, 'windra@undiksha.ac.id', '2115101075'),
(45, 'restu.wedatama@undiksha.ac.id', '2115101077'),
(46, 'ikd@undiksha.ac.id', '2115101078'),
(47, 'adi.wahyudinata@undiksha.ac.id', '2115101079'),
(48, 'sudiartika@undiksha.ac.id', '2115101080'),
(49, 'yoga.mardiawan@undiksha.ac.id', '2115101081'),
(50, 'desak.mahadewi.saraswati@undiksha.ac.id', '2115101001'),
(51, 'puja.astawa.2@undiksha.ac.id', '2115101005'),
(52, 'reiki@undiksha.ac.id', '2115101006'),
(53, 'adi.krisna.2@undiksha.ac.id', '2115101007'),
(54, 'adi.sastrawan.2@undiksha.ac.id', '2115101011'),
(55, 'arya.adi.kusuma@undiksha.ac.id', '2115101012'),
(56, 'darmawan.jiddan@undiksha.ac.id', '2115101013'),
(57, 'bagus.fajar@undiksha.ac.id', '2115101019'),
(58, 'deindra@undiksha.ac.id', '2115101021'),
(59, 'andreas.stiady@undiksha.ac.id', '2115101022'),
(60, 'bhaskara.pramudya@undiksha.ac.id', '2115101023'),
(61, 'bayu.danu@undiksha.ac.id', '2115101025'),
(62, 'joe@undiksha.ac.id', '2115101027'),
(63, 'anak.agung.ade@undiksha.ac.id', '2115101029'),
(64, 'tegar.samjoe@undiksha.ac.id', '2115101032'),
(65, 'rian.adnyana@undiksha.ac.id', '2115101034'),
(66, 'wahyu.kusuma@undiksha.ac.id', '2115101035'),
(67, 'adi.satya@undiksha.ac.id', '2115101036'),
(68, 'mellisa@undiksha.ac.id', '2115101037'),
(69, 'agung.kannha@undiksha.ac.id', '2115101043'),
(70, 'dimas.witjaksana@undiksha.ac.id', '2115101045'),
(71, 'losinanda@undiksha.ac.id', '2115101046'),
(72, 'agus.tamayasa@undiksha.ac.id', '2115101048'),
(73, 'harry.sudana@undiksha.ac.id', '2115101053'),
(74, 'risma.karisma753@gmail.com', '2115101059');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
