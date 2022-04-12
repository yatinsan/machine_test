import 'package:flutter/material.dart';

class UserDetailProvider extends ChangeNotifier {
  bool favorite = false;

  void toggleFavorite() {
    favorite = !favorite;
    notifyListeners();
  }
}
