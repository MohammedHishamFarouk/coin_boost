import 'package:flutter/material.dart';

class EarningsProvider extends ChangeNotifier {
  int earnings = 0;
  String mobileNumber = '';

  void totalEarnings(int value) {
    earnings = value;
    notifyListeners();
  }

  setNumber(String value) {
    mobileNumber = value;
    if (mobileNumber.length >= 7) notifyListeners();
  }
}
