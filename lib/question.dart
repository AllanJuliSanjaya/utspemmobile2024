// Deklarasi kelas Pertanyaan untuk merepresentasikan pertanyaan dalam quiz
class Pertanyaan {
  String pertanyaan; // Variabel untuk menyimpan teks pertanyaan
  List<String> jawaban; // Variabel untuk menyimpan opsi jawaban dalam bentuk list
  String kunciJawaban; // Variabel untuk menyimpan kunci jawaban
  String gambar; // Variabel untuk menyimpan lokasi gambar terkait pertanyaan

  // Konstruktor dengan parameter untuk menginisialisasi nilai variabel saat objek Pertanyaan dibuat
  Pertanyaan(this.pertanyaan, this.jawaban, this.kunciJawaban, this.gambar);
}
