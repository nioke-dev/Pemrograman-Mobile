# **Praktikum 1**

### Langkah 1 dan 2

Jika kode tersebut dijalankan, berikut adalah hasil yang akan muncul di console: </br>
<a href="https://imgbb.com/"><img src="https://i.ibb.co.com/rkj7162/Screenshot-2024-09-23-212205.png" alt="Screenshot-2024-09-23-212205" border="0"></a>

**Penjelasan:**

- Inisialisasi list: `var list = [1, 2, 3];` membuat list yang berisi tiga elemen: `1`, `2`, dan `3`.
- Assert pertama: `assert(list.length == 3);` memastikan bahwa panjang list sama dengan 3. Jika pernyataan ini benar (yang memang benar), program akan melanjutkan tanpa error.
- Assert kedua: `assert(list[1] == 2);` memverifikasi bahwa elemen pada indeks ke-1 adalah `2`.
- Print pertama: `print(list.length);` mencetak panjang list, yaitu `3`.
- Print kedua: `print(list[1]);` mencetak nilai elemen pada indeks ke-1, yang pada awalnya adalah `2`.
- Modifikasi elemen list: `list[1] = 1;` mengubah nilai elemen pada indeks ke-1 menjadi `1`.
- Assert ketiga: `assert(list[1] == 1);` memverifikasi bahwa perubahan tersebut berhasil dilakukan.
- Print ketiga: `print(list[1]);` mencetak nilai elemen pada indeks ke-1, yang sekarang adalah `1`.

### Langkah 3

<a href="https://ibb.co.com/XWRGnHq"><img src="https://i.ibb.co.com/qDQ2H6v/Screenshot-2024-09-26-225546.png" alt="Screenshot-2024-09-26-225546" border="0"></a>

Pada langkah 3, kode akan berhasil dieksekusi tanpa error, karena:

1.  Variabel `list` telah dideklarasikan sebagai `final`, yang berarti elemen-elemennya bisa diubah, tetapi ukuran list dan referensi ke list tersebut tidak bisa diubah.
2.  `List<dynamic>.filled(5, null)` membuat list dengan panjang 5, diisi dengan nilai `null` secara default, sehingga setiap elemen dapat diganti dengan tipe data apapun, termasuk `String` untuk nama dan NIM.
3.  Elemen pada indeks 1 dan 2 diisi dengan nama dan NIM, kemudian hasil list dicetak.

# **Praktikum 2**

### Langkah 1,2 dan 3

<a href="https://ibb.co.com/SRVhc9m"><img src="https://i.ibb.co.com/gzt5dBW/Screenshot-2024-09-26-230148.png" alt="Screenshot-2024-09-26-230148" border="0"></a>

**Penjelasan:**

- `Set` adalah koleksi yang tidak berurutan dan tidak mengizinkan elemen duplikat. Ketika mencetak `halogens`, urutan elemen mungkin berbeda setiap kali Anda mengeksekusi kode tersebut karena sifat `Set`.
- Jika tidak terjadi error, berarti kode berjalan dengan baik.

**Langkah 3**

<a href="https://ibb.co.com/jJG24QM"><img src="https://i.ibb.co.com/5KvycS8/Screenshot-2024-09-26-230351.png" alt="Screenshot-2024-09-26-230351" border="0"></a>

**Penjelasan:**

- `names1` dan `names2` berhasil dideklarasikan sebagai `Set<String>`, dan outputnya adalah set kosong.
- `names3` dideklarasikan sebagai `Map` dan hasilnya juga akan menunjukkan `{}`. Ini merupakan hal yang perlu diperhatikan, karena kita ingin menggunakan set, bukan map.

**Perbaikan**: Untuk memperbaiki deklarasi `names3`, kita bisa menghapusnya, karena sesuai instruksi tidak akan digunakan saat ini.

**Menambahkan Elemen ke Set**

<a href="https://ibb.co.com/t3Rvkrt"><img src="https://i.ibb.co.com/mSp21Ww/Screenshot-2024-09-26-230813.png" alt="Screenshot-2024-09-26-230813" border="0"></a>

# **Praktikum 3**

<a href="https://ibb.co.com/F5TnGbW"><img src="https://i.ibb.co.com/X7RVmZ4/Screenshot-2024-09-26-231034.png" alt="Screenshot-2024-09-26-231034" border="0"></a>

**Penjelasan:**

- `gifts` adalah `Map` dengan key bertipe `String` dan value yang dapat bertipe `String` atau `int`.
- `nobleGases` adalah `Map` dengan key bertipe `int` dan value yang dapat bertipe `String` atau `int`.

### Langkah 3

<a href="https://ibb.co.com/g31BsKN"><img src="https://i.ibb.co.com/bPh8p9T/Screenshot-2024-09-26-231605.png" alt="Screenshot-2024-09-26-231605" border="0"></a>

### Langkah 3

#### 1. Deklarasi `Map` Kosong

- `mhs1` dan `mhs2` dideklarasikan sebagai `Map` kosong.
  - `mhs1` memiliki kunci dan nilai bertipe `String`.
  - `mhs2` memiliki kunci bertipe `int` dan nilai bertipe `String`.

#### 2. Manipulasi Nilai dalam `gifts`

- Kode ini mengubah nilai pada kunci yang ada dalam `gifts`.
  - Sebagai contoh, kunci `'fifth'` yang awalnya berisi angka `1`, diubah menjadi `'golden rings'`.
  - Ini menunjukkan fleksibilitas `Map` untuk mengubah entri yang ada.

#### 3. Menambah Nilai dalam `nobleGases`

- Nilai baru ditambahkan ke dalam `nobleGases` untuk kunci yang ada dan juga menambahkan kunci baru `18` dengan nilai `'argon'`.
  - Ini memperlihatkan cara `Map` menyimpan dan mengelola data dengan kunci unik.

#### 4. Menambahkan Nama dan NIM

- Elemen tambahan dimasukkan ke dalam `mhs1` dan `mhs2`.
  - Misalnya, `mhs1` diisi dengan nama dan NIM.
  - `mhs2` diisi dengan nama yang memiliki kunci `1`.
  - Ini menggambarkan bagaimana `Map` dapat digunakan untuk menyimpan informasi dengan cara yang terstruktur.

#### Kesimpulan

Langkah ini memberikan pemahaman yang lebih baik tentang bagaimana `Map` di Dart dapat digunakan untuk menyimpan dan memanipulasi data. Melalui proses ini, kita belajar tentang penggunaan kunci unik dalam akses dan pengelolaan data, serta fleksibilitas dalam mengubah nilai dalam `Map`.
