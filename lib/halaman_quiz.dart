import 'package:flutter/material.dart';
import 'pengacakan.dart'; // Mengimpor file pengacakan.dart yang berisi fungsi acakSoal

class HalamanQuiz extends StatefulWidget {
  const HalamanQuiz({Key? key}) : super(key: key); // Deklarasi constructor HalamanQuiz dengan parameter key

  @override
  State<HalamanQuiz> createState() => _HalamanQuizState(); // Membuat state baru untuk HalamanQuiz
}

class _HalamanQuizState extends State<HalamanQuiz> {
  List<Widget> skorMaba = []; // List untuk menyimpan skor Maba (Mahasiswa Baru)
  int nomorPertanyaan = 0; // Variabel untuk menyimpan nomor pertanyaan yang sedang ditampilkan
  int jawabanBenar = 0; // Variabel untuk menyimpan jumlah jawaban benar
  int jawabanSalah = 0; // Variabel untuk menyimpan jumlah jawaban salah
  int totalSkor = 0; // Variabel untuk menyimpan total skor

  @override
  void initState() {
    super.initState();
    acakSoal(); // Panggil fungsi acakSoal saat initState dipanggil pertama kali
  }

  void pilihJawaban(String jawaban) {
    setState(() {
      if (jawaban == bankSoal[nomorPertanyaan].kunciJawaban) { // Memeriksa jawaban dengan kunci jawaban yang benar
        skorMaba.add(
          const Icon(
            Icons.check, // Menambahkan icon tanda centang jika jawaban benar
            color: Colors.green,
          ),
        );
        jawabanBenar++; // Menambah jumlah jawaban benar
      } else {
        skorMaba.add(
          const Icon(
            Icons.close, // Menambahkan icon tanda silang jika jawaban salah
            color: Colors.red,
          ),
        );
        jawabanSalah++; // Menambah jumlah jawaban salah
      }

      totalSkor = jawabanBenar * 10; // Menghitung total skor berdasarkan jumlah jawaban benar

      nomorPertanyaan++; // Pindah ke pertanyaan berikutnya
      if (nomorPertanyaan < bankSoal.length) { // Jika masih ada pertanyaan tersisa
        // Kosong, karena pertanyaan selanjutnya akan ditampilkan oleh widget build
      } else {
        _tampilkanSkor(); // Memanggil fungsi tampilkanSkor jika sudah semua pertanyaan terjawab
      }
    });
  }

  void _tampilkanSkor() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.yellowAccent, // Warna latar belakang dialog
          title: const Text('Skor Akhir'), // Judul dialog
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Benar: $jawabanBenar', style: const TextStyle(color: Colors.black)), // Menampilkan jumlah jawaban benar
              Text('Salah: $jawabanSalah', style: const TextStyle(color: Colors.black)), // Menampilkan jumlah jawaban salah
              Text('Total Skor: $totalSkor', style: const TextStyle(color: Colors.black)), // Menampilkan total skor
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  nomorPertanyaan = 0; // Reset nomor pertanyaan
                  jawabanBenar = 0; // Reset jumlah jawaban benar
                  jawabanSalah = 0; // Reset jumlah jawaban salah
                  skorMaba.clear(); // Menghapus skor Maba
                  totalSkor = 0; // Reset total skor
                  acakSoal(); // Panggil fungsi acakSoal lagi untuk mengacak urutan pertanyaan berikutnya
                });
                Navigator.of(context).pop(); // Tutup dialog
              },
              child: const Text('Ulangi'), // Tombol untuk mengulangi kuis
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Benar: $jawabanBenar', // Menampilkan jumlah jawaban benar
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Salah: $jawabanSalah', // Menampilkan jumlah jawaban salah
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                bankSoal[nomorPertanyaan].pertanyaan, // Menampilkan pertanyaan
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Image.asset(
                bankSoal[nomorPertanyaan].gambar, // Menampilkan gambar terkait pertanyaan
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: bankSoal[nomorPertanyaan].jawaban.map((jawaban) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  pilihJawaban(jawaban); // Memilih jawaban
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Warna tombol jawaban
                  fixedSize: const Size(400, 50), // Ukuran tombol jawaban
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jawaban, // Teks jawaban
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    if (skorMaba.length > nomorPertanyaan) skorMaba[nomorPertanyaan], // Menampilkan ikon tanda benar/salah jika sudah dipilih
                  ],
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
