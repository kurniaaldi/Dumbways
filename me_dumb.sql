-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2020 pada 17.28
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me_dumb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `titles` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `create_time` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `titles`, `images`, `descriptions`, `create_time`, `user_id`) VALUES
(7, 'Heboh Pasien Corona di Ambon Bakar Tenda Dipicu Tak Puas Hasil Tes Swab', 'https://akcdn.detik.net.id/community/media/visual/2020/06/13/pasien-corona-di-ambon-membakar-tenda-penitipan-barang_169.jpeg?w=700&q=90', 'Ambon - Saat malam menjelang, sejumlah pasien COVID-19 di Ambon nekat membakar tenda penitipan barang di dekat kamar pasien. Mereka kecewa dengan hasil tes swab.\r\nPeristiwa pembakaran tenda itu tepatnya terjadi di Gedung Lembaga Penjamin Mutu Pendidikan Maluku (Kementerian Pendidikan dan Budaya) di Jalan Tihu Wailela, Kecamatan Teluk Ambon, Kota Ambon pada Jumat 12 Juni 2020 sekira pukul 22.00 WIT.\r\n\r\n\"Subtansinya mereka menilai petugas kurang transparan terhadap hasil swab. Kemarin swab 26 orang, yang negatif ada 5 orang,\" kata Ketua Harian Gugus Tugas Percepatan Penanganan COVID-19 Maluku, Kasrul Selang saat dimintai konfirmasi, Sabtu (13/06/2020).\r\n\r\nKasrul menambahkan pasien juga menuntut ingin pulang dan diminta dikarantina di rumah masing-masing. Pasalnya mereka tidak bergejala dan merasa sehat.\r\n\r\n\"Aspirasinya mereka mau pulang untuk karantina rumah saja, karena mereka tidak bergejala dan merasa sehat-sehat saja,\" ujarnya.\r\n\r\nTerkait tuntutan untuk karantina di rumah, Kasrul menjelaskan akan dibahas dengan pemerintah Kota Ambon. Ada beberapa kriteria yang harus dilihat untuk bisa diizinkan karantina di rumah.\r\n\r\n\"Kita akan akan bahas dengan taman-taman di Pemkot, Kalau karantina mandiri di rumah, bagaimana mekanismenya dan kriteria rumah yang bisa,\" ucapnya.', '2020-06-13 20:47:51.761', 5),
(9, 'Dampak Pandemi Corona, Zara Bakal Tutup 1.200 Gerai di Seluruh Dunia ', 'https://asset.kompas.com/crops/2nOpDAirzq3-VtfJHLubfjS0ts4=/7x0:1054x698/750x500/data/photo/2020/06/13/5ee4982390838.jpg', 'Perusahaan pakaian dan sepatu asal Spanyol pemilik merek Zara, Inditex, dilaporkan mencatat kerugian untuk pertama kalinya pada Kuartal I Tahun 2020 senilai Rp 6,5 triliun. Kerugian ini ditengarai sebagai dampak Pandemi Corona, sehingga perusahaan terpaksa menutup sebagian besar gerai ritel Zara untuk mencegah penyebaran virus tersebut. MelansirThe Guardian, Zara menutup permanen 1.000 hingga 1.200 toko di seluruh dunia untuk menekan anggaran sewa di beberapa mal. Saat ini, perusahaan sedang gencar melakukan penjualan secara daring demi bersaing dengan toko busana lainnya yakni, H&M, Uniqlo, Fast Retailing, Asos, dan Boohoo. Inditex mengumumkan, penutupan gerai Zara akan berfokus di benua Asia dan Eropa, kecuali Inggris. Artikel ini telah tayang di Kompas.com dengan judul \"Dampak Pandemi Corona, Zara Bakal Tutup 1.200 Gerai di Seluruh Dunia\" Sebanyak 107 toko Zara di Inggris diprediksi takkan terpengaruh apapun dari adanya fenomena penutupan ini. Meski menutup banyak toko, Inditex memastikan para karyawan yang sebelumnya bekerja di toko Zara yang tutup tersebut takkan dipecat. Para karyawan akan dialihkan sebagai staf pemasaran produk melalui penjualan daring. Zara memiliki total 7.412 toko dan termasuk pembukan 450 toko baru. Jika ditutup sebanyak 1.200 toko, artinya tersisa 6.212 gerai di seluruh dunia. Meski begitu, belum diketahui secara pasti apakah gerai Zara di Indonesia akan terkena imbas dari penutupan ini. Berdasarkan data Inditex, penjualan daring Zara diprediksi akan meraih penjualan lebih dari 25 persen dibanding pada tahun 2019 yang hanya sebesar 14 persen. Gerai-gerai Zara yang lebih besar akan bertindak sebagai pusat distribusi untuk penjualan daring. Perusahaan yang dimiliki oleh orang terkaya nomor enam di dunia, Amancio Ortega, ini bakal merogoh 1 miliar euro atau sekitar Rp 15,9 triliun untuk melakukan pemasaran daring.', '2020-06-13 20:07:10.243', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(3, 'adit', 'adit@gmail.com'),
(5, 'andy', 'andy@gmail.com'),
(7, 'deka', 'deka@gmail.com'),
(10, 'jaka', 'jaka@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
