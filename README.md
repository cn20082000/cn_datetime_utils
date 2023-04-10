# Datetime Utils
A Flutter package add more power to default DateTime and Duration class.

## Features

- New unit "quarter".
- Number of days in month, quarter and year.
- Start and end of each unit.
- Initialize duration faster.
- New operator add(+), subtract(-) and compare(>, <, >=, <=) for DateTime.

## Getting started

Add this package to your dependency:
```yaml
dependencies:
  cn_date_time: ^0.1.0
```

Add import and have fun:
````dart
import 'package:cn_datetime_utils/cn_datetime_utils.dart';
````

## Usage

- To use NEW unit "quarter":
````dart
final now = DateTime.now();
final foo = now.quarter;
````

- To know the number of days of month:
````dart
final now = DateTime.now();
final foo = now.daysOfMonth;
````

- To get start or end of day:
````dart
final now = DateTime.now();
final foo = now.startOfDay;
final bar = now.endOfDay;
````

- To initialize duration:
````dart
// 2 minutes and 6 seconds
final foo = 2.1.minute;

// 3 days
final bar = 3.day;
````

- To use NEW operator:
```dart
final now = DateTime.now();
final foo = now + 3.minute;
if (foo >= now) {
  // Do something
}
```

