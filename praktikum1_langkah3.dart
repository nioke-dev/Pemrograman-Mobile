void main() {
  final list = List<dynamic>.filled(
      5, null); // Menggunakan dynamic agar dapat berisi tipe data apa pun
  list[1] = 'Muhammad Nurul Mustofa'; // Mengisi elemen indeks 1 dengan nama
  list[2] = '2241720022'; // Mengisi elemen indeks 2 dengan NIM

  print(
      list); // Output: [null, 'Muhammad Nurul Mustofa', '2241720022', null, null]
}
