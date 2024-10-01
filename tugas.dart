// Tugas Praktikum Dart

// 1. Apa yang Dimaksud dengan Functions dalam Bahasa Dart?
// Fungsi dalam Dart adalah blok kode yang dirancang untuk melakukan tugas tertentu.
// Fungsi dapat menerima input (parameter), melakukan operasi, dan mengembalikan hasil.
// Fungsi membantu mengorganisir dan mendaur ulang kode, sehingga membuat program lebih mudah dibaca dan dipelihara.

int tambah(int a, int b) {
  return a + b;
}

// 2. Jenis-jenis Parameter di Functions
void greet(String name) {
  print('Hello, $name!');
}

void greetOptional([String name]) {
  print('Hello, ${name ?? 'Guest'}!');
}

void greetNamed({String name = 'Guest'}) {
  print('Hello, $name!');
}

// 3. Functions sebagai First-Class Objects
void main() {
  // Contoh penggunaan fungsi first-class
  var tambah = (int a, int b) => a + b;
  print(tambah(3, 4)); // Output: 7

  // Memanggil fungsi dengan parameter
  greet('Mustofa');
  greetOptional();
  greetNamed(name: 'Mustofa');

  // 4. Apa itu Anonymous Functions?
  var list = [1, 2, 3];
  list.forEach((item) {
    print(item); // Output: 1 2 3
  });

  // 5. Perbedaan Lexical Scope dan Lexical Closures
  var nama = 'Mustofa';
  void greetScope() {
    print('Hello, $nama!'); // Mengakses variabel dari scope luar
  }

  greetScope(); // Output: Hello, Mustofa!

  Function counter() {
    var count = 0;
    return () {
      count++;
      return count;
    };
  }

  var hitung = counter();
  print(hitung()); // Output: 1
  print(hitung()); // Output: 2

  // 6. Cara Membuat Return Multiple Value di Functions
  (int, String) getData() {
    return (2241720022, 'Mustofa');
  }

  var data = getData();
  print(
      'NIM: ${data.$1}, Nama: ${data.$2}'); // Output: NIM: 2241720022, Nama: Mustofa
}
