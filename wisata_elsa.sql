-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2022 pada 06.13
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_elsa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(2, 'Adam', '5665', '23232', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'Y'),
(3, 'Andri', '989', '989', 1, '2022-04-17', '1', '1', NULL, '2022-04-17', 'N'),
(7, 'Dini', '3275656565', '08555555', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(15, 'titisan', '2323565', '08999', 2, '2022-04-17', '1', '2', '432131819.png', '2022-04-17', 'N'),
(21, 'Elsa', '2314245', '08765445636', 1, '2022-04-18', '1', '2', NULL, '2022-04-18', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Tonjong Canyon', 'Kabupaten Tasikmalaya', 'Tonjong Canyon hadir dengan keindahan alam yang begitu indah, berupa tebing kecoklatan dan jernihnya air sungai. Tempat wisata memukau ini terletak di Desa Nagrog, Kecamatan Cipatujah, Kabupaten Tasikmalaya.', 'https://asset.kompas.com/crops/iw3jiP9qJ-QnZOwoyyJ8fXnlhO0=/0x39:1040x732/750x500/data/photo/2020/10/19/5f8d58ded4daa.jpg', 10000, 5000, 'https://www.youtube.com/embed/xlVUyb3EM68'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://asset.kompas.com/crops/Fz0jDIh3z6Dxp642Di1MUK7KkkE=/0x0:800x533/750x500/data/photo/2020/10/19/5f8d5c603a93f.jpg', 15000, 5000, 'https://www.youtube.com/embed/td8EVbRbhog'),
(3, 'Kebun Teh Taraju', 'Kota Tasikmalaya', 'Perkebunan teh di Tasikmalaya terkenal dengan nama Kebun Teh Taraju. Letak perkebunan ini berada di kawasan Banyuasih, Taraju, Tasikmalaya, Jawa Barat. Dari pusat Kota Tasikmalaya, perkebunan teh ini berjarak sekitar 48 kilometer jika menggunakan kendaraan bermotor.\r\n', 'https://asset.kompas.com/crops/m3SbBK0ckRSnLinUWrB1dZPJ7vM=/0x0:738x492/750x500/data/photo/2020/07/22/5f17eb8baf20c.jpg', 10000, 5000, 'https://www.youtube.com/embed/Prut8VAwrsc'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://kabaralam.com/img/2020/999/d355f7d1-0c2e-4868-aefd-522e9a0fd3c4.jpg', 10000, 5000, 'https://www.youtube.com/embed/K1zMAML17wQ'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.', 'https://asset.kompas.com/crops/LOHvdFqjngDOa291rvyD8OnStFs=/0x0:1000x667/750x500/data/photo/2020/08/18/5f3b8e1fa6086.jpg', 10000, 5000, 'https://www.youtube.com/embed/eV-ycItPJTw'),
(6, 'Pantai Cipatujah', 'Kabupaten Tasikmalaya', 'Pantai Cipatujah menawarkan pesona alam yang masih sangat asri dan memesona karena dikelilingi tebing-tebing curam. Pantai Cipatujah merupakan pantai berkarang yang ada di kawasan selatan, tepatnya di Desa Cipatujah, Kecamatan Cipatujah, Tasikmalaya.', 'https://asset.kompas.com/crops/Ux06XTprjV-keyRxuOTf5CuL8L4=/0x0:1068x712/750x500/data/photo/2020/10/22/5f914668ce2e2.jpg', 12000, 6000, 'https://www.youtube.com/embed/ZBWCIRe3gZo'),
(7, 'Bukit Kacapi', 'Kabupaten Tasikmalaya', 'Bukit Kacapi memiliki berbagai daya tarik yang membuatnya menjadi objek wisata yang cukup populer di tasikmalaya jawa barat. Lokasinya yang berada di area perbukitan dengan view gunung dan di kelilingi hamparan perkebunan teh, membuat tempat wisata yang satu ini menjadi alternatif liburan bagi para wisatawan yang ingin menikmati suasana alam yang indah beserta udara yang segar.', 'https://www.koropak.co.id/img/artikel/koropakcoid-tour-bukit-kecapi.jpeg', 10000, 5000, 'https://www.youtube.com/embed/kcBmB2-yzSw'),
(8, 'Pantai Pangandaran', 'Kabupaten Tasikmalaya', 'Aktivitas yang dapat meliputi menikmati pemandanganyang indah, berfoto, hingga berenang jika kondisi air tidak sedang banjir. Di sini, masih belum ada fasilitas karena masih sangat baru dan masih masuk tahap penyadaran kepada warga desa akan potensi wisata yang dimiliki. Tiket masuknya pun masih gratis.', 'https://asset.kompas.com/crops/D6Xzd09ZJyilP99-oDZlz1A5Quc=/0x0:740x493/750x500/data/photo/2020/06/12/5ee3287e47e6f.jpg', 10000, 5000, 'https://www.youtube.com/embed/WG4ga7MCkcw');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
