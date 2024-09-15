# Praktikum 1

## **Langkah 1 dan 2**

Terdapat error pada kode di bawah ini karena penulisan `IF` dan `ELSE` tidak menggunakan huruf kecil.

![Error pada If Else](https://i.ibb.co/4sYBwm0/Screenshot-2024-09-15-184636.png)

### **Hasil saat dijalankan**

![Hasil Saat Dijalanakan](https://i.ibb.co/WyT4Z7b/Screenshot-2024-09-15-185123.png)

### **Hasil Setelah Diperbaiki**

![Setelah Diperbaiki](https://i.ibb.co/hZ2Ty9q/Screenshot-2024-09-15-185302.png)

## **Langkah 2**

Pada program berikut, terjadi dua error:

1. Variabel `test` sudah dideklarasikan di atas.
2. Variabel `test` bertipe string, sehingga tidak bisa digunakan dalam kondisi boolean.

![Error pada Langkah 2](https://i.ibb.co/LCyzN7V/Screenshot-2024-09-15-185501.png)

### **Setelah Perbaikan**

![Setelah Diperbaiki](https://i.ibb.co/DpMzFL9/Screenshot-2024-09-15-185730.png)

---

# Praktikum 2

## **Langkah 1 dan 2**

**Penjelasan**: Terjadi error karena variabel `counter` belum dideklarasikan.

![Error Counter](https://i.ibb.co/48zvKQ0/Screenshot-2024-09-15-190448.png)

### **Perbaikan**

**Penjelasan**: Deklarasikan variabel `counter` sebagai tipe integer, karena akan dilakukan penambahan nilai di bawahnya.

![Perbaikan Counter](https://i.ibb.co/6r4Hzgb/Screenshot-2024-09-15-190634.png)

## **Langkah 3**

**Penjelasan**: Pengulangan terjadi hingga angka 76 karena pada kondisi `while` diatur kurang dari 77, sehingga program berhenti di angka 76.

![Hasil Pengulangan](https://i.ibb.co/99hQHqB/Screenshot-2024-09-15-191007.png)

---

# Praktikum 3

## **Langkah 1 dan 2**

**Penjelasan**:

- Terdapat error karena variabel `index` belum dideklarasikan.
- Jika sudah dideklarasikan, program akan masuk **infinite loop** karena kondisi selalu bernilai true. Hal ini terjadi karena tidak ada increment pada variabel `index`.

![Error Infinite Loop](https://i.ibb.co/1fVLqHK/Screenshot-2024-09-15-191226.png)

### **Setelah Perbaikan**

![Setelah Perbaikan Infinite Loop](https://i.ibb.co/BPpy5LW/Screenshot-2024-09-15-191931.png)

## **Langkah 3**

**Penjelasan**: Error terjadi karena penulisan kode yang salah.

![Error Penulisan Kode](https://i.ibb.co/89Qzhnx/Screenshot-2024-09-15-193101.png)

### **Setelah Diperbaiki**

**Penjelasan**: Loop berhenti pada angka 21 karena terdapat kondisi `break` yang keluar dari loop saat variabel `index` mencapai 21.

![Perbaikan Break](https://i.ibb.co/5RQ1pm9/Screenshot-2024-09-15-193223.png)

---

# Tugas

![Tugas](https://i.ibb.co/F3JFHP8/Screenshot-2024-09-15-194043.png)

## **Penjelasan Singkat Kode**

1. **Deklarasi Nama dan NIM**:

   - Variabel `nama` dan `nim` digunakan untuk menyimpan nama lengkap dan NIM.

2. **Fungsi `isPrime(int number)`**:

   - Memeriksa apakah sebuah angka adalah bilangan prima.
   - Mengembalikan `true` jika angka prima, selain itu `false`.

3. **Loop untuk Bilangan Prima**:
   - Perulangan `for` mengecek angka dari 0 hingga 201.
   - Jika angka prima, mencetak bilangan tersebut beserta nama dan NIM.
