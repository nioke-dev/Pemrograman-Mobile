import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionSquare extends StatelessWidget {
  const ActionSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            spreadRadius: 0.5,
            offset: Offset(0.5, 0.5),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Items(
            icon: FontAwesomeIcons.plus,
            label: "Isi Saldo",
          ),
          Items(
            icon: FontAwesomeIcons.moneyBill,
            label: "Tarik Saldo",
          ),
          Items(
            icon: FontAwesomeIcons.paperPlane,
            label: "Kirim Uang",
          ),
          Items(
            icon: Icons.grid_view,
            label: "Semua",
          ),
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  final IconData icon;
  final String label;
  const Items({
    super.key,
    required this.icon,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          size: 24,
          color: Colors.black54,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
