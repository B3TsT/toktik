import 'package:intl/intl.dart';

class HumanFormts {
  static String humanReadbleNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }
}
