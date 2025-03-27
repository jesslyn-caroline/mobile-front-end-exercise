import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AccountProvider with ChangeNotifier {
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  bool isUsername = true;
  bool isPassword = true;

  void login() {
    if (passwordC.text.isEmpty) isPassword = false;
    else {isPassword = true;}

    if (usernameC.text.isEmpty) isUsername = false;
    else isUsername = true;

    if (isPassword && isUsername) {
      usernameC.clear();
      passwordC.clear();
    }
    
    notifyListeners();
  }
}