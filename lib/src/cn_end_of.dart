import 'cn_convert.dart';
import 'cn_quick_duration.dart';
import 'cn_unit_date.dart';

extension CnEndOf on DateTime {
  DateTime get endOfMillisecond {
    return copyWith(
      microsecond: 999,
    );
  }

  DateTime get endOfSecond {
    return copyWith(
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfMinute {
    return copyWith(
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfHour {
    return copyWith(
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfDay {
    return copyWith(
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfWeek {
    final sunday = add((7 - weekday).day);
    return sunday.copyWith(
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfMonth {
    return copyWith(
      day: daysOfMonth,
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfQuarter {
    int mo = 3;
    switch (quarter) {
      case 2:
        mo = 6;
        break;
      case 3:
        mo = 9;
        break;
      case 4:
        mo = 12;
        break;
    }
    return copyWith(
      month: mo,
      day: copyWith(month: mo).daysOfMonth,
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  DateTime get endOfYear {
    return copyWith(
      month: 12,
      day: 31,
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }
}
