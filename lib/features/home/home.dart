import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uts/features/history/history.dart';
import 'package:uts/features/home/widgets/action_square.dart';
import 'package:uts/features/home/widgets/balance_card.dart';
import 'package:uts/features/home/widgets/banner2.dart';
import 'package:uts/features/home/widgets/banner3.dart';
import 'package:uts/features/home/widgets/fitur_grid.dart';
import 'package:uts/features/home/widgets/promo.dart';
import 'package:uts/features/page_provider.dart';
import 'package:uts/features/home/widgets/header.dart';
import 'package:uts/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 249, 247),
      body: SafeArea(
        child: IndexedStack(
          index: pageProvider.currentIndex,
          children: [
            // Home Page content
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(top: 10),
                    child: const Header(),
                  ),
                  // Content for Home tab
                  const BalanceCard(),
                  const ActionSquare(),
                  FiturGrid(),
                  const Promo(),
                  const Banner2(),
                  const Banner3(),
                ],
              ),
            ),
            // Placeholder for History Page
            const HistoryPage(),
            const Center(child: Text('pay Page')),
            // Placeholder for Inbox Page
            const Center(child: Text('Inbox Page')),
            // Placeholder for Profile Page
            const ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          // BottomNavigationBar
          BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: pageProvider.currentIndex,
            onTap: (index) {
              // Exclude the index of the FAB
              pageProvider.updatePage(index); // Update selected tab
            },
            iconSize: 20,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            items: [
              const BottomNavigationBarItem(
                label: "Beranda",
                icon: FaIcon(FontAwesomeIcons.house),
              ),
              const BottomNavigationBarItem(
                label: "Riwayat",
                icon: FaIcon(FontAwesomeIcons.fileLines),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Icon(
                    Icons.qr_code,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                label: 'Bayar',
              ),
              const BottomNavigationBarItem(
                label: "Pesan",
                icon: FaIcon(FontAwesomeIcons.envelope),
              ),
              const BottomNavigationBarItem(
                label: "Profil",
                icon: FaIcon(FontAwesomeIcons.user),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
