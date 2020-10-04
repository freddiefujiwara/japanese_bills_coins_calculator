import 'dart:math';

import 'package:flutter/cupertino.dart';

enum Bill {
  one,
  five,
  ten,
  fifty,
  oneHundred,
  fiveHundreds,
  oneThousand,
  fiveThousands,
  tenThousands,
}

class CalculatorModel extends ChangeNotifier {
  List<int> _bills = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  CalculatorModel() {
    this.clear();
  }
  void clear() {
    Bill.values.forEach((b) => this._bills[b.index] = 0);
    notifyListeners();
  }

  void increment(Bill b) {
    this._bills[b.index]++;
    notifyListeners();
  }

  int number(Bill b) {
    return this._bills[b.index];
  }

  int sum() {
    double sum = 0.0;
    Bill.values.forEach((b) {
      sum += b.index % 2 == 0
          ? this._bills[b.index] * pow(10, b.index / 2)
          : this._bills[b.index] * pow(10, (b.index + 1) / 2) / 2;
    });
    return sum.round();
  }
}
