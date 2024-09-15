// 5. Tugas Praktikum
// Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!
// jawaban : penjelasan terdapat pada readme
// Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
// Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!

void main() {
  // Nama dan NIM
  String nama = 'Muhammad Nurul Mustofa';
  String nim = '2241720022';

  // Fungsi untuk memeriksa apakah suatu angka adalah bilangan prima
  bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // Loop untuk memeriksa bilangan dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('Bilangan prima ditemukan: $i');
      print('Nama: $nama');
      print('NIM: $nim\n');
    }
  }
}
