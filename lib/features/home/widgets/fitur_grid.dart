import 'package:flutter/material.dart';

class FiturGrid extends StatelessWidget {
  FiturGrid({super.key});

  final List<FeatureItem> features = [
    FeatureItem(icon: Icons.phone_android, label: 'Pulsa/Data'),
    FeatureItem(icon: Icons.flash_on, label: 'Listrik'),
    FeatureItem(icon: Icons.recommend, label: 'Hemat Lengkap By Telkomsel'),
    FeatureItem(icon: Icons.credit_card, label: 'Kartu Uang Elektronik'),
    FeatureItem(icon: Icons.church, label: 'Gereja'),
    FeatureItem(icon: Icons.attach_money_rounded, label: 'Infaq'),
    FeatureItem(icon: Icons.favorite, label: 'Donasi Lainnya'),
    FeatureItem(icon: Icons.grid_view, label: 'Lainnya'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemCount: features.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(features[index].icon, color: Colors.red),
            const SizedBox(height: 4),
            Text(features[index].label,
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center),
          ],
        );
      },
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String label;

  FeatureItem({required this.icon, required this.label});
}
