import 'package:flutter/material.dart';
import 'package:belanja/models/items.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final Function onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Row(
            children: [
              Hero(
                tag: item.photo,
                child: Image.asset(
                  item.photo,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Hero(
                    tag: item.name,
                    child: Text(
                      item.name,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Hero(
                  tag: item.price,
                  child: Text(
                    'Rp ${item.price}',
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
