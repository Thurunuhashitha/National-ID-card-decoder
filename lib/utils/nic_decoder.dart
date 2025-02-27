import 'package:intl/intl.dart';

class NICDecoder {
  static Map<String, String> decode(String nic) {
    String format = nic.length == 10 ? 'Old Format' : 'New Format';
    int year = nic.length == 10 ? int.parse('19${nic.substring(0, 2)}') : int.parse(nic.substring(0, 4));
    int dayOfYear = int.parse(nic.substring(nic.length == 10 ? 2 : 4, nic.length == 10 ? 5 : 7));

    String gender = dayOfYear > 500 ? 'Female' : 'Male';
    if (dayOfYear > 500) dayOfYear -= 500;

    DateTime dob = DateTime(year, 1, 1).add(Duration(days: dayOfYear - 1));
    String formattedDOB = DateFormat('yyyy-MM-dd').format(dob);
    String weekday = DateFormat('EEEE').format(dob);
    int age = DateTime.now().year - year;

    return {
      'format': format,
      'dob': formattedDOB,
      'weekday': weekday,
      'age': age.toString(),
      'gender': gender,
    };
  }
}
