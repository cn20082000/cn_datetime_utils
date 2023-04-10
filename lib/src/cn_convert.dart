import 'cn_date_utils.dart';
import 'cn_unit_date.dart';

extension CnConvert on DateTime {
  /// Days of month [[28..31]]
  ///
  /// Return 0 if some error occur
  int get daysOfMonth {
    switch (month) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return 31;
      case 2:
        return isLeapYear ? 29 : 28;
      case 4:
      case 6:
      case 9:
      case 11:
        return 30;
      default:
        return 0;
    }
  }

  /// Days of quarter [[90..92]]
  ///
  /// Return 0 if some error occur
  int get daysOfQuarter {
    switch (quarter) {
      case 1:
        return isLeapYear ? 91 : 90;
      case 2:
        return 91;
      case 3:
      case 4:
        return 92;
      default:
        return 0;
    }
  }

  /// Days of year [[365..366]]
  int get daysOfYear {
    return isLeapYear ? 366 : 365;
  }
}
