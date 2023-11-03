extension DateTimeManager on DateTime {
  int calculateDifference() {
    print('date : $this');

    DateTime now = DateTime.now();

    print('now $now');

    DateTime birthdate;

    if (DateTime(now.year, month, day).isBefore(now)) {
      birthdate = DateTime(now.year + 1, month, day);
    } else {
      birthdate = DateTime(now.year, month, day);
    }

    print('final $birthdate');

    int value = birthdate.difference(now).inDays;

    print('resut $value');

    return value;
  }
}

extension DayFormatter on int {
  String formatDate(String name) {

    print('name $name | days $this') ;

    String result = '';

    if (this == 1) {
      result = 'فردا تولد $name است';
    } else if ( this == 364) {
      result = 'امروز تولد $name است';
    }else if (this == 365){
      result = 'دیروز تولد $name بود' ;
    }
    else
    if (this >= 30 && this <= 360) {
      int months = (this / 30).toInt();
      int days = (this % 30).toInt();
      if (days > 0) {
        result = '$months ماه و $days روز تا تولد $name';
      } else {
        result = '$months ماه تا تولد $name';
      }
    } else {
      result = '$this روز تا تولد $name';
    }

    return result ;
  }
}
