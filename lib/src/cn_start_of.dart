import 'cn_quick_duration.dart';
import 'cn_unit_date.dart';

extension CnStartOf on DateTime {

  /// Start of this millisecond
  DateTime get startOfMillisecond {
    return copyWith(
      microsecond: 0,
    );
  }

  /// Start of this second
  DateTime get startOfSecond {
    return copyWith(
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this minute
  DateTime get startOfMinute {
    return copyWith(
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this hour
  DateTime get startOfHour {
    return copyWith(
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this day
  DateTime get startOfDay {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this week
  DateTime get startOfWeek {
    final monday = subtract((weekday - 1).day);
    return monday.copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this month
  DateTime get startOfMonth {
    return copyWith(
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this quarter
  DateTime get startOfQuarter {
    int mo = 1;
    switch (quarter) {
      case 2:
        mo = 4;
        break;
      case 3:
        mo = 7;
        break;
      case 4:
        mo = 10;
        break;
    }
    return copyWith(
      month: mo,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  /// Start of this year
  DateTime get startOfYear {
    return copyWith(
      month: 1,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }
}
