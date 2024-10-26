import 'package:flutter/foundation.dart';

class PageProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updatePage(int index) {
    if (_currentIndex != index) {
      _currentIndex = index;
      notifyListeners(); // Notify listeners to rebuild UI
    }
  }
}
