import 'package:flutter_test/flutter_test.dart';
import 'package:jpy_bills_coins_calculator/calculator_model.dart';

void main() {
  CalculatorModel c;
  setUp(() {
    c = CalculatorModel();
  });
  group('Calculate', () {
    test("increment", () {
      c.increment10000();
      expect(c.sum(), 10000);
      c.increment5000();
      expect(c.sum(), 15000);
      c.increment1000();
      expect(c.sum(), 16000);
      c.increment100();
      expect(c.sum(), 16600);
      c.increment50();
      expect(c.sum(), 16650);
      c.increment10();
      expect(c.sum(), 16660);
      c.increment5();
      expect(c.sum(), 16665);
      c.increment1();
      expect(c.sum(), 16666);
      expect(c.get10000(), 1);
      expect(c.get5000(), 1);
      expect(c.get1000(), 1);
      expect(c.get500(), 1);
      expect(c.get100(), 1);
      expect(c.get50(), 1);
      expect(c.get10(), 1);
      expect(c.get5(), 1);
      expect(c.get1(), 1);
    });
    test("clear", () {
      c.increment10000();
      c.increment5000();
      c.increment1000();
      c.increment500();
      c.increment100();
      c.increment50();
      c.increment10();
      c.increment5();
      c.increment1();
      expect(c.sum(), 16666);
      c.clear();
      expect(c.sum(), 0);
    });
  });
}
