extension CnQuickDuration on num {
  /// Duration of n days
  Duration get day {
    final ho = (this - truncate()) * 24;
    final min = (ho - ho.truncate()) * 60;
    final sec = (min - min.truncate()) * 60;
    final milli = (sec - sec.truncate()) * 1000;
    final micro = (milli - milli.truncate()) * 1000;
    return Duration(
      days: truncate(),
      hours: ho.truncate(),
      minutes: min.truncate(),
      seconds: sec.truncate(),
      milliseconds: milli.truncate(),
      microseconds: micro.round(),
    );
  }

  /// Duration of n hours
  Duration get hour {
    final min = (this - truncate()) * 60;
    final sec = (min - min.truncate()) * 60;
    final milli = (sec - sec.truncate()) * 1000;
    final micro = (milli - milli.truncate()) * 1000;
    return Duration(
      hours: truncate(),
      minutes: min.truncate(),
      seconds: sec.truncate(),
      milliseconds: milli.truncate(),
      microseconds: micro.round(),
    );
  }

  /// Duration of n minutes
  Duration get minute {
    final sec = (this - truncate()) * 60;
    final milli = (sec - sec.truncate()) * 1000;
    final micro = (milli - milli.truncate()) * 1000;
    return Duration(
      minutes: truncate(),
      seconds: sec.truncate(),
      milliseconds: milli.truncate(),
      microseconds: micro.round(),
    );
  }

  /// Duration of n seconds
  Duration get second {
    final milli = (this - truncate()) * 1000;
    final micro = (milli - milli.truncate()) * 1000;
    return Duration(
      seconds: truncate(),
      milliseconds: milli.truncate(),
      microseconds: micro.round(),
    );
  }

  /// Duration of n milliseconds
  Duration get millisecond {
    final micro = (this - truncate()) * 1000;
    return Duration(
      milliseconds: truncate(),
      microseconds: micro.round(),
    );
  }

  /// Duration of n microseconds
  Duration get microsecond {
    return Duration(
      microseconds: round(),
    );
  }
}
