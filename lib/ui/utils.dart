import 'package:intl/intl.dart';

class Val{
  static String ValidateTitle(String val) {
    return (val != null && val != "")? null : "Title cannot be empty";
  }

  static String GetExpiryStr(String expires) {
    var e = DateUtils.convertToDate(expires);
    var td = new DateTime.now();

    Duration dif = e.difference(td);
    int dd = dif.inDays + 1;
    return (dd > 0) ? dd.toString(): "0";
  }

  static bool StrToBool(String str) {
    return (int.parse(str) > 0) ? true: false;
  }

  static bool IntToBool(int val) {
    return (val > 0 ) ? true: false;
  }

  static String BoolToStr(bool val) {
    return (val == true ) ?  "1":"0";
  }

  static int BoolToInt(bool val) {
    return (val == true) ? 1:0;
  }

}

class DateteUtils {
  static String convertToDateFull(String input) {
    try
        {
          var d = new DateFormat("yyyy-MM-dd").parseStrict(input)
        }
  }
}