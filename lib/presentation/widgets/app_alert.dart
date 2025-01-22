import 'package:fluttertoast/fluttertoast.dart';
import 'package:hunty/theme/theme.dart';

void showAlert(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: kColorYellow,
      textColor: kColorBlack,
      fontSize: 16.0
  );
}
