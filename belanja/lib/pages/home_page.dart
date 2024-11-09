import 'package:flutter/material.dart';
import 'package:belanja/models/items.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'ASUS ROG STRIX SCAR 18 G834JYR-I949M6G-O',
      storeName: 'Galaxy Solusindo',
      price: 75200000,
      photo: 'https://www.klikgalaxy.com/image-product/img72142-1728544898.jpg',
      stock: 100,
      rating: 5,
    ),
    Item(
      name: 'MSI 16 AI Mercedes AMG A1VGG-279ID - STEALTH',
      storeName: 'Galaxy Solusindo',
      price: 39299000,
      photo: 'https://www.klikgalaxy.com/image-product/img68488-1722231833.jpg',
      stock: 120,
      rating: 5,
    ),
    Item(
      name: 'LENOVO LEGION PRO 7 16IRX9H-1BID - Lenovo x',
      storeName: 'Galaxy Solusindo',
      price: 21900000,
      photo: 'https://www.klikgalaxy.com/image-product/img69999-1725003952.jpg',
      stock: 150,
      rating: 5,
    ),
    Item(
      name: 'ACER Nitro V15 ANV15-51-74ZW Nowvember',
      storeName: 'Galaxy Solusindo',
      price: 16099000,
      photo: 'https://www.klikgalaxy.com/image-product/img73240-1730957992.jpg',
      stock: 570,
      rating: 4,
    ),
    Item(
      name: 'Colorful EVOL P15-23 - Pine Blue',
      storeName: 'Galaxy Solusindo',
      price: 16199000,
      photo: 'https://www.klikgalaxy.com/image-product/img71959-1728124507.jpg',
      stock: 870,
      rating: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Market"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onTap: () {
                    context.go('/item', extra: item);
                  },
                );
              },
            ),
          ),
          const Footer(), // Add Footer
        ],
      ),
    );
  }
}
