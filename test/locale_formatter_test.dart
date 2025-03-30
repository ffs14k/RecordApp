import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  test('Number and Currency formatting for "en" locale', () {
    double amount = 1234.56;

    NumberFormat enFormatter = NumberFormat.simpleCurrency(locale: 'en');
    String formattedAmount = enFormatter.format(amount);

    expect(formattedAmount, equals('\$1,234.56'));
  });

  test('Number and Currency formatting for "en_US" locale', () {
    double amount = 1234.56;

    NumberFormat enUSFormatter = NumberFormat.simpleCurrency(locale: 'en_US');
    String formattedAmount = enUSFormatter.format(amount);

    expect(formattedAmount, equals('\$1,234.56'));
  });

  test('Number and Currency formatting for "es" locale', () {
    double amount = 1234.56;

    NumberFormat esFormatter = NumberFormat.simpleCurrency(locale: 'es');
    String formattedAmount = esFormatter.format(amount);

    expect(formattedAmount, equals('1.234,56 €'));
  });

  test('Number and Currency formatting for "es-ES" locale', () {
    double amount = 1234.56;

    NumberFormat esFormatter = NumberFormat.simpleCurrency(locale: 'es');
    String formattedAmount = esFormatter.format(amount);

    expect(formattedAmount, equals('1.234,56 €'));
  });
}
