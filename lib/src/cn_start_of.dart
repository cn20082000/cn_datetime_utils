import 'cn_quick_duration.dart';
import 'cn_unit_date.dart';

extension CnStartOf on DateTime {
  DateTime get startOfMillisecond {
    return copyWith(
      microsecond: 0,
    );
  }

  DateTime get startOfSecond {
    return copyWith(
      millisecond: 0,
      microsecond: 0,
    );
  }

  DateTime get startOfMinute {
    return copyWith(
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  DateTime get startOfHour {
    return copyWith(
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  DateTime get startOfDay {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

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
