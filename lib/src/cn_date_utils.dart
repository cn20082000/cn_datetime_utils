extension CnDateUtils on DateTime {
  bool get isLeapYear {
    return (year % 4 == 0) && (year % 100 != 0);
  }
}
