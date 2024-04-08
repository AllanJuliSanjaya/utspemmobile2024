import 'dart:math'; // Mengimpor pustaka math untuk menggunakan class Random
import 'question.dart'; // Mengimpor file question.dart yang berisi definisi kelas Pertanyaan

// List bankSoal berisi daftar objek Pertanyaan yang akan digunakan dalam quiz
List<Pertanyaan> bankSoal = [
  Pertanyaan(
    'Berapa jumlah prodi di fakultas vokasi?', // Pertanyaan 1
    ['A. 10', 'B. 20', 'C. 30', 'D. 40'], // Opsi jawaban
    'A. 10', // Kunci jawaban
    'images/vokasi.jpg', // Lokasi gambar terkait pertanyaan
  ),
  Pertanyaan(
    'Di kota mana Unesa berada?', // Pertanyaan 2
    ['A. Surabaya', 'B. Mojokerto', 'C. Malang', 'D. Sidoarjo'], // Opsi jawaban
    'A. Surabaya', // Kunci jawaban
    'images/kampus.png', // Lokasi gambar terkait pertanyaan
  ),
  Pertanyaan(
    'Manajemen Informatika berada di Fakultas', // Pertanyaan 3
    ['A. Teknik', 'B. Vokasi', 'C. Bahasa', 'D. Sidoarjo'], // Opsi jawaban
    'B. Vokasi', // Kunci jawaban
    ('images/himti.jpg'),
  ),
  Pertanyaan(
    'Berapa Jumlah Fakultas yang berada di Kampus Lidah Wetan?', // Pertanyaan 4
    ['A. Sembilan', 'B. Dua', 'C. Tiga', 'D. Empat'], // Opsi jawaban
    'C. Tiga', // Kunci jawaban
    ('images/futsal.jpg'),
  ),
  Pertanyaan(
    'Dimana Kampus Cabang Unesa?', // Pertanyaan 5
    ['A. Jombang', 'B. Singapura', 'C. Hongkong', 'D. Magetan'], // Opsi jawaban
    'D. Magetan', // Kunci jawaban
    ('images/magetan.jpeg'),
  ),
  Pertanyaan(
    'Berapa Lama 1 Jam Kuliah saat bulan puasa?', // Pertanyaan 6
    ['A. 50 menit', 'B. 40 menit', 'C. 30 menit', 'D. 60 menit'], // Opsi jawaban
    'B. 40 menit', // Kunci jawaban
    ('images/ramadhan.png'),
  ),
  Pertanyaan(
    'Berapa total sks D4 Manajemen Informatika?', // Pertanyaan 7
    ['A. 144', 'B. 120', 'C. 150', 'D. 18'], // Opsi jawaban
    'A. 144', // Kunci jawaban
    ('images/manajemeninformatika.png'),
  ),
  Pertanyaan(
    'Gedung mana yang sering digunakan praktik mengajar untuk mahasiswa Manajemen Informatika?', // Pertanyaan 8
    ['A. K2', 'B. K10', 'C. A10', 'D. K4'], // Opsi jawaban
    'A. K2', // Kunci jawaban
    ('images/gedung.png'),
  ),
  Pertanyaan(
    'Dimana lokasi Fakultas Ilmu Pendidikan?', // Pertanyaan 9
    ['A. Lidah Wetan', 'B. Surabaya', 'C. Ketintang', 'D. Ngagel'], // Opsi jawaban
    'C. Ketintang', // Kunci jawaban
    ('images/fip.jpg'),
  ),
  Pertanyaan(
    'Bapak Dosen I Gde Agung Sri Sidhimantra, S.Kom., M.Kom. di Manajemen Informatika mengampu mata kuliah apa?', // Pertanyaan 10
    ['A. Kewarganegaraan', 'B. Basis Data', 'C. Kewirausahaan', 'D. PemWe'], // Opsi jawaban
    'D. PemWeb', // Kunci jawaban
    ('images/dosen.jpg'),
  ),
];

// Fungsi acakSoal digunakan untuk mengacak urutan pertanyaan dalam list bankSoal
void acakSoal() {
  bankSoal.shuffle(Random()); // Menggunakan fungsi shuffle dari list untuk mengacak urutan elemen
}
