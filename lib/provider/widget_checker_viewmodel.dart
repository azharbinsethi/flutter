import 'package:flutter/material.dart';

class IconButtonProvider extends ChangeNotifier {
  // Use Set<String> for faster lookups and to prevent duplicates
  final List<String> _isfavourite = [];
  List<String> get isfavourite => _isfavourite;

  void toggleFavorite(String name) {
    if (_isfavourite.contains(name)) {
      _isfavourite.remove(name);
    } else {
      _isfavourite.add(name);
    }
    notifyListeners();
  }
}
