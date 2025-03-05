import 'package:flutter/material.dart';

class EarningsProvider extends ChangeNotifier {
  int _totalEarnings = 0;
  String mobileNumber = '';

  void totalEarnings(int value) {
    _totalEarnings = value;
    notifyListeners();
  }

  setNumber(String value) {
    mobileNumber = value;
    if (mobileNumber.length >= 7) notifyListeners();
  }
}
