// Praktikum 5: Eksperimen Tipe Data Records

void main() {
  // Langkah 1: Membuat record
  var record = ('first', a: 2, b: true, 'last');
  print('Langkah 1: $record');

  // Langkah 2: Eksekusi kode pada langkah 1
  // Tidak ada error, hasil yang dicetak adalah: ('first', a: 2, b: true, 'last')

  // Langkah 3: Fungsi tukar untuk menukar nilai record
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var record2 = (1, 2);
  var swapped = tukar(record2);
  print('Langkah 3: Original: $record2, Swapped: $swapped');

  // Langkah 4: Deklarasi record mahasiswa
  (String, int) mahasiswa;
  mahasiswa = ('Muhammad Nurul Mustofa', 2241720022);
  print('Langkah 4: Mahasiswa: $mahasiswa');

  // Langkah 5: Mengakses field dalam record mahasiswa2
  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print('Langkah 5:');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  // Memperbarui record mahasiswa2 dengan nama dan NIM
  mahasiswa2 = ('Muhammad Nurul Mustofa', a: 2241720022, b: true, 'last');
  print('Record Mahasiswa2 yang diperbarui: $mahasiswa2');
}
