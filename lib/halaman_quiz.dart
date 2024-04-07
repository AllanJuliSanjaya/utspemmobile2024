import 'package:flutter/material.dart';
import 'pengacakan.dart';

class HalamanQuiz extends StatefulWidget {
  const HalamanQuiz({super.key});

  @override
  State<HalamanQuiz> createState() => _HalamanQuizState();
}

class _HalamanQuizState extends State<HalamanQuiz> {
  List<Widget> skorMaba = [];
  int nomorPertanyaan = 0;
  int jawabanBenar = 0;
  int jawabanSalah = 0;
  int totalSkor = 0;

  @override
  void initState() {
    super.initState();
    acakSoal(); // Panggil fungsi acakSoal saat initState
  }

  void pilihJawaban(String jawaban) {
    setState(() {
      if (jawaban == bankSoal[nomorPertanyaan].kunciJawaban) {
        skorMaba.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
        jawabanBenar++;
      } else {
        skorMaba.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
        jawabanSalah++;
      }

      totalSkor = jawabanBenar * 10;

      nomorPertanyaan++;
      if (nomorPertanyaan < bankSoal.length) {
      } else {
        _tampilkanSkor();
      }
    });
  }

  void _tampilkanSkor() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.yellowAccent,
          title: const Text('Skor Akhir'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Benar: $jawabanBenar', style: const TextStyle(color: Colors.black)),
              Text('Salah: $jawabanSalah', style: const TextStyle(color: Colors.black)),
              Text('Total Skor: $totalSkor', style: const TextStyle(color: Colors.black)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  nomorPertanyaan = 0;
                  jawabanBenar = 0;
                  jawabanSalah = 0;
                  skorMaba.clear();
                  totalSkor = 0;
                  acakSoal(); // Panggil fungsi acakSoal lagi untuk mengacak urutan pertanyaan berikutnya
                });
                Navigator.of(context).pop();
              },
              child: const Text('Ulangi'),
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
                'Benar: $jawabanBenar',
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
              ),
              Text(
                'Salah: $jawabanSalah',
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            bankSoal[nomorPertanyaan].pertanyaan,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          Image.asset(
            bankSoal[nomorPertanyaan].gambar,
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
    pilihJawaban(jawaban);
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightBlue,
    fixedSize: const Size(400, 50),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    jawaban,
    style: const TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    ),
    ),
    if (skorMaba.length > nomorPertanyaan)
    skorMaba[nomorPertanyaan],
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
