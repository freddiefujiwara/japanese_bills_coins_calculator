import 'package:flutter_test/flutter_test.dart';
import 'package:jpy_bills_coins_calculator/calculator_model.dart';

void main() {
  CalculatorModel c;
  setUp(() {
    c = CalculatorModel();
  });
  group('Calculate', () {
    test("increment", () {
      c.increment(Bill.tenThousands);
      expect(c.sum(), 10000);
      c.increment(Bill.fiveThousands);
      expect(c.sum(), 15000);
      c.increment(Bill.oneThousand);
      expect(c.sum(), 16000);
      c.increment(Bill.fiveHundreds);
      expect(c.sum(), 16500);
      c.increment(Bill.oneHundred);
      expect(c.sum(), 16600);
      c.increment(Bill.fifty);
      expect(c.sum(), 16650);
      c.increment(Bill.ten);
      expect(c.sum(), 16660);
      c.increment(Bill.five);
      expect(c.sum(), 16665);
      c.increment(Bill.one);
      expect(c.sum(), 16666);
      expect(c.number(Bill.tenThousands), 1);
      expect(c.number(Bill.fiveThousands), 1);
      expect(c.number(Bill.oneThousand), 1);
      expect(c.number(Bill.fiveHundreds), 1);
      expect(c.number(Bill.oneHundred), 1);
      expect(c.number(Bill.fifty), 1);
      expect(c.number(Bill.ten), 1);
      expect(c.number(Bill.five), 1);
      expect(c.number(Bill.one), 1);
    });
    test("clear", () {
      c.increment(Bill.tenThousands);
      c.increment(Bill.fiveThousands);
      c.increment(Bill.oneThousand);
      c.increment(Bill.fiveHundreds);
      c.increment(Bill.oneHundred);
      c.increment(Bill.fifty);
      c.increment(Bill.ten);
      c.increment(Bill.five);
      c.increment(Bill.one);
      expect(c.sum(), 16666);
      c.clear();
      expect(c.sum(), 0);
    });
  });
}
