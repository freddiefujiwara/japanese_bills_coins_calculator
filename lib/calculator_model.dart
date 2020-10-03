import 'package:flutter/cupertino.dart';

class CalculatorModel extends ChangeNotifier {
  int _10000;
  int _5000;
  int _1000;
  int _500;
  int _100;
  int _50;
  int _10;
  int _5;
  int _1;
  CalculatorModel() {
    this.clear();
  }
  void clear() {
    this._10000 = 0;
    this._5000 = 0;
    this._1000 = 0;
    this._500 = 0;
    this._100 = 0;
    this._50 = 0;
    this._10 = 0;
    this._5 = 0;
    this._1 = 0;
    notifyListeners();
  }

  void increment10000() {
    this._10000++;
    notifyListeners();
  }

  void increment5000() {
    this._5000++;
    notifyListeners();
  }

  void increment1000() {
    this._1000++;
    notifyListeners();
  }

  void increment500() {
    this._500++;
    notifyListeners();
  }

  void increment100() {
    this._100++;
    notifyListeners();
  }

  void increment50() {
    this._50++;
    notifyListeners();
  }

  void increment10() {
    this._10++;
    notifyListeners();
  }

  void increment5() {
    this._5++;
    notifyListeners();
  }

  void increment1() {
    this._1++;
    notifyListeners();
  }

  int get10000() => this._10000;
  int get5000() => this._5000;
  int get1000() => this._1000;
  int get500() => this._500;
  int get100() => this._100;
  int get50() => this._50;
  int get10() => this._10;
  int get5() => this._5;
  int get1() => this._1;
  int sum() =>
      this._10000 * 10000 +
      this._5000 * 5000 +
      this._1000 * 1000 +
      this._500 * 500 +
      this._100 * 100 +
      this._50 * 50 +
      this._10 * 10 +
      this._5 * 5 +
      this._1;
}
