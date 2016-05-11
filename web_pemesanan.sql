-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Jan 2016 pada 08.49
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_pemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'gentur  ariyadi siddiq p', 'gentur', '12345'),
(2, 'm firman kahfi', 'firman', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(11) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `gambar` text NOT NULL,
  `harga_asli` bigint(20) NOT NULL,
  `biaya_dp` bigint(20) NOT NULL,
  `biaya_pelunasan` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `jenis_barang`, `nama_barang`, `gambar`, `harga_asli`, `biaya_dp`, `biaya_pelunasan`) VALUES
(1, 'kursi', 'kursi tilep', 'gambarbrg/kursi/images.jpg', 190000, 90000, 100000),
(2, 'kursi', 'kursi bagus', 'gambarbrg/kursi/images1.jpg', 250000, 100000, 150000),
(3, 'kursi', 'kursi kayu', 'gambarbrg/kursi/Kursi-Jati-Minimalis-Laric.jpg', 170000, 70000, 100000),
(4, 'kursi', 'kursi antik', 'gambarbrg/kursi/Kursi-Makan-Koboi.jpg', 230000, 100000, 130000),
(5, 'kursi', 'kursi romance', 'gambarbrg/kursi/unduhan.jpg', 330000, 130000, 200000),
(6, 'kursi', 'kursi empuk', 'gambarbrg/kursi/unduhan1.jpg', 350000, 150000, 200000),
(7, 'lemari', 'lemari hitam', 'gambarbrg/lemari/lemari1.jpg', 700000, 300000, 400000),
(8, 'lemari', 'lemari coklat', 'gambarbrg/lemari/lemari2.jpg', 800000, 350000, 450000),
(9, 'lemari', 'lemari hitam putih ', 'gambarbrg/lemari/lemari3.jpg', 850000, 450000, 400000),
(10, 'lemari', 'lemari pajangan', 'gambarbrg/lemari/lemari4.jpg', 900000, 400000, 500000),
(11, 'lemari', 'lemari kamar jumbo', 'gambarbrg/lemari/lemari5.jpg', 950000, 450000, 500000),
(12, 'lemari', 'lemari dapur', 'gambarbrg/lemari/lemari6.jpg', 900000, 400000, 500000),
(13, 'lemari', 'lemari kamar super', 'gambarbrg/lemari/lemari7.jpg', 1000000, 450000, 550000),
(14, 'meja', 'meja sederhana super', 'gambarbrg/meja/meja1.jpg', 300000, 100000, 200000),
(15, 'meja', 'meja tamu super', 'gambarbrg/meja/meja2.jpg', 350000, 150000, 200000),
(16, 'meja', 'meja kantor super ', 'gambarbrg/meja/meja3.jpg', 370000, 170000, 200000),
(17, 'meja', 'meja tamu quality', 'gambarbrg/meja/meja4.jpg', 340000, 140000, 200000),
(18, 'meja', 'meja belajar giat', 'gambarbrg/meja/meja5.jpg', 450000, 250000, 200000),
(19, 'meja', 'meja belajar tingkat', 'gambarbrg/meja/meja6.jpg', 500000, 250000, 250000),
(20, 'meja', 'meja makan jepang', 'gambarbrg/meja/meja7.jpg', 600000, 250000, 350000),
(21, 'paket', 'paket idaman', 'gambarbrg/paket/paket1.jpg', 1200000, 700000, 500000),
(22, 'paket', 'paket kursi putih ', 'gambarbrg/paket/paket2.jpg', 1300000, 800000, 500000),
(23, 'paket', 'paket kursi makan', 'gambarbrg/paket/paket3.jpg', 1100000, 600000, 500000),
(24, 'paket', 'paket kursi menawan', 'gambarbrg/paket/paket4.jpg', 1200000, 700000, 500000),
(25, 'paket', 'paket kursi teras', 'gambarbrg/paket/paket5.jpg', 1250000, 750000, 500000),
(26, 'paket', 'paket kursi sunset', 'gambarbrg/paket/paket6.jpg', 1400000, 700000, 700000),
(27, 'paket', 'paket kursi santai', 'gambarbrg/paket/paket7.jpg', 1300000, 700000, 600000),
(28, 'ranjang', 'ranjang jati', 'gambarbrg/ranjang/ranjang1.jpg', 1500000, 600000, 900000),
(29, 'ranjang', 'ranjang bertingkat', 'gambarbrg/ranjang/ranjang2.jpg', 1500000, 700000, 800000),
(30, 'ranjang', 'ranjang moderat', 'gambarbrg/ranjang/ranjang3.jpg', 1400000, 700000, 700000),
(31, 'ranjang', 'ranjang super', 'gambarbrg/ranjang/ranjang4.jpg', 1200000, 600000, 600000),
(32, 'ranjang', 'ranjang berlaci', 'gambarbrg/ranjang/ranjang5.jpg', 1600000, 600000, 1000000),
(33, 'ranjang', 'ranjang seluncur', 'gambarbrg/ranjang/ranjang6.jpg', 1250000, 500000, 750000),
(34, 'ranjang', 'ranjang merah super', 'gambarbrg/ranjang/ranjang7.jpg', 1450000, 500000, 950000),
(35, 'kursi', 'kursi jati heras', 'gambarbrg/kursi/kursi7.jpg', 90000, 40000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_data_barang`
--

CREATE TABLE `detail_data_barang` (
  `id_detail_data_barang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `waktu_pembuatan` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id_detail_pemesanan` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `validasi_pembayaran` enum('valid','tidak','belum') DEFAULT NULL,
  `harga_asli_diskon` bigint(20) NOT NULL,
  `biaya_dp_diskon` bigint(20) NOT NULL,
  `biaya_pelunasan_diskon` bigint(20) NOT NULL,
  `fixasi` enum('fix','belum') NOT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`id_detail_pemesanan`, `id_customer`, `validasi_pembayaran`, `harga_asli_diskon`, `biaya_dp_diskon`, `biaya_pelunasan_diskon`, `fixasi`, `tgl`) VALUES
(1, 2, 'valid', 1440000, 720000, 720000, 'fix', NULL),
(23, 9, 'valid', 2250000, 1350000, 900000, 'fix', NULL),
(25, 2, 'valid', 765000, 405000, 360000, 'fix', NULL),
(26, 11, 'valid', 3213000, 1593000, 1620000, 'fix', NULL),
(27, 11, 'valid', 171000, 81000, 90000, 'fix', NULL),
(28, 11, 'valid', 3060000, 1710000, 1350000, 'fix', NULL),
(29, 3, 'valid', 1350000, 540000, 810000, 'fix', '2016-01-21'),
(30, 2, 'valid', 1971000, 900000, 1071000, 'fix', '2016-01-25'),
(31, 2, 'valid', 1665000, 630000, 1035000, 'fix', '2016-01-25'),
(32, 3, 'valid', 1350000, 540000, 810000, 'fix', '2016-01-25'),
(33, 14, 'valid', 270000, 90000, 180000, 'fix', '2016-01-26'),
(34, 3, 'valid', 5940000, 3240000, 2700000, 'fix', '2016-01-26'),
(35, 7, 'valid', 3870000, 2250000, 1620000, 'fix', '2016-01-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasan`
--

CREATE TABLE `pelunasan` (
  `id_pelunasan` int(11) NOT NULL,
  `id_detail_pemesanan` int(11) NOT NULL,
  `lunas` enum('lunas','belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelunasan`
--

INSERT INTO `pelunasan` (`id_pelunasan`, `id_detail_pemesanan`, `lunas`) VALUES
(1, 1, 'lunas'),
(2, 1, 'lunas'),
(3, 23, 'lunas'),
(4, 23, 'lunas'),
(5, 26, 'lunas'),
(6, 26, 'lunas'),
(7, 28, 'lunas'),
(8, 30, 'lunas'),
(9, 31, 'lunas'),
(10, 32, 'lunas'),
(11, 33, 'lunas'),
(12, 34, 'lunas'),
(13, 35, 'lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_dp`
--

CREATE TABLE `pembayaran_dp` (
  `id_pembayaran` int(11) NOT NULL,
  `id_detail_pemesanan` int(11) NOT NULL,
  `bukti_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_dp`
--

INSERT INTO `pembayaran_dp` (`id_pembayaran`, `id_detail_pemesanan`, `bukti_pembayaran`) VALUES
(1, 28, 'bukti5.jpg'),
(2, 30, 'bukti2.jpg'),
(3, 31, 'bukti5.jpg'),
(4, 32, 'bukti7.jpg'),
(5, 33, 'bukti6.jpg'),
(6, 34, 'bukti2.jpg'),
(7, 35, 'bukti4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `status_pembayaran` enum('sudah','belum') NOT NULL,
  `tanggal` date NOT NULL,
  `penyelesaian` enum('belum','sudah') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_customer`, `id_barang`, `jumlah`, `status_pembayaran`, `tanggal`, `penyelesaian`) VALUES
(1, 2, 6, 2, 'sudah', '2016-01-14', 'sudah'),
(2, 2, 18, 2, 'sudah', '2016-01-14', 'sudah'),
(8, 2, 9, 1, 'sudah', '2016-01-15', 'sudah'),
(11, 9, 22, 1, 'sudah', '2016-01-17', 'sudah'),
(13, 9, 21, 1, 'sudah', '2016-01-17', 'sudah'),
(14, 11, 5, 4, 'sudah', '2016-01-19', 'sudah'),
(15, 11, 18, 5, 'sudah', '2016-01-19', 'sudah'),
(16, 11, 1, 1, 'sudah', '2016-01-19', 'sudah'),
(17, 11, 10, 1, 'sudah', '2016-01-19', 'sudah'),
(18, 11, 25, 2, 'sudah', '2016-01-19', 'sudah'),
(19, 3, 28, 1, 'sudah', '2016-01-20', 'sudah'),
(20, 2, 4, 3, 'sudah', '2016-01-25', 'sudah'),
(21, 2, 29, 1, 'sudah', '2016-01-25', 'sudah'),
(22, 2, 2, 1, 'sudah', '2016-01-25', 'sudah'),
(23, 2, 32, 1, 'sudah', '2016-01-25', 'sudah'),
(24, 14, 14, 1, 'sudah', '2016-01-26', 'sudah'),
(25, 3, 23, 6, 'sudah', '2016-01-26', 'sudah'),
(26, 7, 9, 2, 'sudah', '2016-01-27', 'sudah'),
(27, 7, 22, 2, 'sudah', '2016-01-27', 'sudah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_customer` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_customer`, `nama_lengkap`, `alamat`, `no_hp`, `username`, `password`) VALUES
(2, 'gentur ariyadi siddiq permana', 'sindangsari banjarsari ciamis jawa barat', 85723775219, 'gentur', '12345'),
(3, 'muhammad firman kahfi', 'brebes jawa tengah', 8568320432, 'firman', '12345'),
(4, 'gentur purnagalih riksa pramud', 'sindangsari banjarsari ciamis jawa barat', 85624362436, 'galih', '12345'),
(5, 'bajay bajuri', 'jakarta barat ', 8324723492, 'bajay', '12345'),
(6, 'dadang konelo', 'parungsari majalaya', 82389131389, 'dadang', '12345'),
(7, 'iip abdurahman', 'kawali ciami', 98401204919, 'iip', '12345'),
(8, 'saha wae lah', 'di bandung jalan sumatra', 32490238409, 'saha', '12345'),
(9, 'nia kurniasih', 'panamur tengah jatiluhur sumedang', 83489234924, 'nia', '12345'),
(10, 'isma gifari', 'balungbung garut', 82318865999, 'isma', '12345'),
(11, 'muhammad rifqi', 'panamur luhur jatiluhur sumedang', 8923842020, 'rifqi', '12345'),
(12, 'sahruzaki', 'tasikmalaya ciberem condong', 8849424212, 'zaki', '12345'),
(13, 'titin siti fatimah', 'condong tasikmalaya', 2301239821, 'titin', '12345'),
(14, 'etun zaitun', 'kuningan ', 23902133123, 'etun', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_data_barang`
--
ALTER TABLE `detail_data_barang`
  ADD PRIMARY KEY (`id_detail_data_barang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id_detail_pemesanan`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `pelunasan`
--
ALTER TABLE `pelunasan`
  ADD PRIMARY KEY (`id_pelunasan`),
  ADD KEY `id_detail_pemesanan` (`id_detail_pemesanan`);

--
-- Indexes for table `pembayaran_dp`
--
ALTER TABLE `pembayaran_dp`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_detail_pemesanan` (`id_detail_pemesanan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `detail_data_barang`
--
ALTER TABLE `detail_data_barang`
  MODIFY `id_detail_data_barang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id_detail_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `pelunasan`
--
ALTER TABLE `pelunasan`
  MODIFY `id_pelunasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pembayaran_dp`
--
ALTER TABLE `pembayaran_dp`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_data_barang`
--
ALTER TABLE `detail_data_barang`
  ADD CONSTRAINT `detail_data_barang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `detail_pemesanan_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `pendaftaran` (`id_customer`);

--
-- Ketidakleluasaan untuk tabel `pelunasan`
--
ALTER TABLE `pelunasan`
  ADD CONSTRAINT `pelunasan_ibfk_1` FOREIGN KEY (`id_detail_pemesanan`) REFERENCES `detail_pemesanan` (`id_detail_pemesanan`);

--
-- Ketidakleluasaan untuk tabel `pembayaran_dp`
--
ALTER TABLE `pembayaran_dp`
  ADD CONSTRAINT `pembayaran_dp_ibfk_1` FOREIGN KEY (`id_detail_pemesanan`) REFERENCES `detail_pemesanan` (`id_detail_pemesanan`),
  ADD CONSTRAINT `pembayaran_dp_ibfk_2` FOREIGN KEY (`id_detail_pemesanan`) REFERENCES `detail_pemesanan` (`id_detail_pemesanan`);

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `pendaftaran` (`id_customer`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
