import 'dart:math';
import 'question.dart';

List<Pertanyaan> bankSoal = [
  Pertanyaan(
    'Berapa jumlah prodi di fakultas vokasi?',
    ['A. 10', 'B. 20', 'C. 30', 'D. 40'],
    'A. 10',
    'images/vokasi.jpg',
  ),
  Pertanyaan(
    'Di kota mana Unesa berada?',
    ['A. Surabaya', 'B. Mojokerto', 'C. Malang', 'D. Sidoarjo'],
    'A. Surabaya',
    ('images/kampus.png'),
  ),
  Pertanyaan(
    'Manajemen Informatika berada di Fakultas',
    ['A. Teknik', 'B. Vokasi', 'C. Bahasa', 'D. Sidoarjo'],
    'B. Vokasi',
    ('images/himti.jpg'),
  ),
  Pertanyaan(
    'Berapa Jumlah Fakultas yang berada di Kampus Lidah Wetan?',
    ['A. Sembilan', 'B. Dua', 'C. Tiga', 'D. Empat'],
    'C. Tiga',
    ('images/futsal.jpg'),
  ),
  Pertanyaan(
    'Dimana Kampus Cabang Unesa?',
    ['A. Jombang', 'B. Singapura', 'C. Hongkong', 'D. Magetan'],
    'D. Magetan',
    ('images/magetan.jpeg'),
  ),
  Pertanyaan(
    'Berapa Lama 1 Jam Kuliah saat bulan puasa?',
    ['A. 50 menit', 'B. 40 menit', 'C. 30 menit', 'D. 60 menit'],
    'B. 40 menit',
    ('images/ramadhan.png'),
  ),
  Pertanyaan(
    'Berapa total sks D4 Manajemen Informatika?',
    ['A. 144', 'B. 120', 'C. 150', 'D. 18'],
    'A. 144',
    ('images/manajemeninformatika.png'),
  ),
  Pertanyaan(
    'Gedung mana yang sering digunakan praktik mengajar untuk mahasiswa Manajemen Informatika?',
    ['A. K2', 'B. K10', 'C. A10', 'D. K4'],
    'A. K2',
    ('images/gedung.png'),
  ),
  Pertanyaan(
    'Dimana lokasi Fakultas Ilmu Pendidikan?',
    ['A. Lidah Wetan', 'B. Surabaya', 'C. Ketintang', 'D. Ngagel'],
    'C. Ketintang',
    ('images/fip.jpg'),
  ),
  Pertanyaan(
    'Bapak Dosen I Gde Agung Sri Sidhimantra, S.Kom., M.Kom. di Manajemen Informatika mengampu mata kuliah apa?',
    ['A. Kewarganegaraan', 'B. Basis Data', 'C. Kewirausahaan', 'D. PemGame'],
    'A. PemWeb',
    ('images/dosen.jpg'),
  ),
];

void acakSoal() {
  bankSoal.shuffle(Random()); // Mengacak urutan pertanyaan
}