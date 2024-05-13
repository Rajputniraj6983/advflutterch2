import 'package:flutter/cupertino.dart';

class Sliderprovider extends ChangeNotifier
{
  int slidingIndex = 0;

  void changeSlider(String value)
  {
    slidingIndex = int.parse(value);
    notifyListeners();
  }
}