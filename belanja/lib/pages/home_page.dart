import 'package:flutter/material.dart';
import 'package:belanja/models/items.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:belanja/widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, photo: 'assets/images/sugar.jpg'),
    Item(name: 'Salt', price: 2000, photo: 'assets/images/salt.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum 5 - Belanja App"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                );
              },
            ),
          ),
          const Footer(), // Menambahkan Footer
        ],
      ),
    );
  }
}
