extension CnDateUtils on DateTime {
  /// A year has an extra day in 29th February
  bool get isLeapYear {
    return (year % 4 == 0) && (year % 100 != 0);
  }
}
