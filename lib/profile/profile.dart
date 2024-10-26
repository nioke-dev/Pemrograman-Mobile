// profile_screen.dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light grey background
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: const ProfileHeader(
                name: 'muhammad nurul mustofa',
                id: '6285161644408',
                imageUrl: 'assets/images/fotoku.png',
              ),
            ),
            const SizedBox(height: 8),
            _buildWhiteContainer([
              ProfileListItem(
                title: 'Tipe Akun',
                value: 'Full Service',
                onTap: () {},
                showArrow: true,
              ),
            ]),
            _buildWhiteContainer([
              const ProfileDivider(),
              ProfileListItem(
                title: 'Pengaturan Akun',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'LinkAja Syariah',
                value: 'Tidak Aktif',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'Metode Pembayaran',
                onTap: () {},
                showArrow: true,
              ),
            ]),
            const SizedBox(height: 8),
            _buildWhiteContainer([
              ProfileListItem(
                title: 'Email',
                value: 'nioke8090@gmail.com',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'Pertanyaan Keamanan',
                value: 'Sudah Diatur',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'Pengaturan PIN',
                onTap: () {},
                showArrow: true,
              ),
            ]),
            _buildWhiteContainer([
              const ProfileDivider(),
              ProfileListItem(
                title: 'Bahasa',
                value: 'Indonesia',
                onTap: () {},
                showArrow: true,
              ),
            ]),
            const SizedBox(height: 8),
            _buildWhiteContainer([
              ProfileListItem(
                title: 'Ketentuan Layanan',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'Kebijakan Privasi',
                onTap: () {},
                showArrow: true,
              ),
              const ProfileDivider(),
              ProfileListItem(
                title: 'Pusat Bantuan',
                onTap: () {},
                showArrow: true,
              ),
            ]),
            const SizedBox(height: 8),
            _buildWhiteContainer([
              const LogoutButton(),
            ]),
            const SizedBox(height: 80), // Space for bottom navigation
          ],
        ),
      ),
    );
  }

  Widget _buildWhiteContainer(List<Widget> children) {
    return Container(
      color: Colors.white,
      child: Column(
        children: children,
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final String name;
  final String id;
  final String imageUrl;

  const ProfileHeader({
    Key? key,
    required this.name,
    required this.id,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                id,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
        ],
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final String title;
  final String? value;
  final VoidCallback onTap;
  final bool showArrow;

  const ProfileListItem({
    Key? key,
    required this.title,
    this.value,
    required this.onTap,
    this.showArrow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            if (value != null)
              Text(
                value!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            if (showArrow)
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color(0xFFEEEEEE),
      indent: 16,
      endIndent: 16,
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Keluar',
          style: TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
