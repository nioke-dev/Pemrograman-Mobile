import 'dart:async';
import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  final PageController _pageController = PageController();
  late Timer _timer;

  // Daftar URL atau asset gambar
  final List<String> _images = [
    "assets/images/slider1/1.png",
    "assets/images/slider1/2.png",
    "assets/images/slider1/3.png",
    "assets/images/slider1/4.png",
    "assets/images/slider1/5.png",
    "assets/images/slider1/6.png",
  ];

  late List<String> _loopedImages;
  int _currentPage = 1; // Start with the first real image

  @override
  void initState() {
    super.initState();
    _initializeLoopedImages();
    _startAutoSlide();
  }

  void _initializeLoopedImages() {
    _loopedImages = [
      _images.last, // Add last image as the first
      ..._images,
      _images.first, // Add first image as the last
    ];
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < _loopedImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 1; // Reset to the first real image
        _pageController
            .jumpToPage(_currentPage); // Directly jump to the first real image
        return; // Stop the timer to avoid auto slide while jumping
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9, // Sesuaikan rasio aspek sesuai kebutuhan
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
                // If we reach the last image (duplicate of the first),
                // jump to the first real image to prevent visual jump
                if (_currentPage == 0) {
                  _pageController.jumpToPage(1);
                }
              });
            },
            itemCount: _loopedImages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 8.0), // Jarak kiri dan kanan
                child: Image.asset(
                  _loopedImages[index],
                  fit: BoxFit
                      .contain, // Menggunakan BoxFit.contain untuk gambar tidak terpotong
                  width: double.infinity,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 1.0), // Jarak antara carousel dan indikator
        _buildIndicator(),
      ],
    );
  }

  Widget _buildIndicator() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(_images.length, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            width: _currentPage == index + 1 ? 12.0 : 8.0, // Ukuran indikator
            height: _currentPage == index + 1 ? 12.0 : 8.0,
            decoration: BoxDecoration(
              color: _currentPage == index + 1 ? Colors.blue : Colors.grey,
              shape: BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
