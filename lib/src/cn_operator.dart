extension CnDateTimeOperator on DateTime {

  /// Returns a new DateTime instance with duration added to this.
  DateTime operator+(Duration duration) {
    return add(duration);
  }

  /// Returns a new DateTime instance with duration subtracted to this.
  DateTime operator-(Duration duration) {
    return add(-duration);
  }

  /// Return true if this date greater than other
  bool operator>(DateTime other) {
    return microsecondsSinceEpoch > other.microsecondsSinceEpoch;
  }

  /// Return true if this date smaller than other
  bool operator<(DateTime other) {
    return microsecondsSinceEpoch < other.microsecondsSinceEpoch;
  }

  /// Return true if this date equal or greater than other
  bool operator>=(DateTime other) {
    return microsecondsSinceEpoch >= other.microsecondsSinceEpoch;
  }

  /// Return true if this date equal or smaller than other
  bool operator<=(DateTime other) {
    return microsecondsSinceEpoch <= other.microsecondsSinceEpoch;
  }
}