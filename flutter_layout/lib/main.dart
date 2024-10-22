import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            const ImageSection(
              image: 'image/bfg.jpg',
            ),
            titleSection,
            buttonSection(color), // Memasukkan buttonSection di sini
            textSection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // Memindahkan buttonSection menjadi method agar bisa mengakses variabel color
  Widget buttonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Batu Flower Garden terletak di perbukitan indah Kota Batu, Malang. '
    'Tempat wisata ini menawarkan hamparan bunga yang menawan dengan latar belakang pegunungan, '
    'memberikan pengalaman alam yang mempesona. Pengunjung dapat menikmati suasana sejuk dan pemandangan '
    'yang luar biasa sambil berfoto di berbagai spot Instagramable yang disediakan.\n\n'
    'Oleh : Muhammad Nurul Mustofa [2241720022]',
    softWrap: true,
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0), // Padding untuk seluruh Container
  child: Row(
    mainAxisAlignment:
        MainAxisAlignment.spaceBetween, // Mengatur jarak antar item
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Mengatur posisi kolom di awal baris
          children: [
            Container(
              padding: const EdgeInsets.only(
                  bottom: 8.0), // Padding bawah untuk teks judul
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey[500], // Warna teks abu-abu
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red, // Warna ikon bintang merah
      ),
      const SizedBox(width: 8), // Spasi antara ikon dan teks
      const Text('41'), // Jumlah rating
    ],
  ),
);

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: double.infinity,
      image,
      fit: BoxFit.cover,
    );
  }
}
