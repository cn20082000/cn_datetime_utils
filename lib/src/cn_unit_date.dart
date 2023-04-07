extension CnUnitDate on DateTime {
  /// The quarter [[1..4]]
  ///
  /// Return 0 if some error occur
  int get quarter {
    if (month > 0) {
      if (month <= 3) {
        return 1;
      } else if (month <= 6) {
        return 2;
      } else if (month <= 9) {
        return 3;
      } else if (month <= 12) {
        return 4;
      }
    }
    return 0;
  }
}
