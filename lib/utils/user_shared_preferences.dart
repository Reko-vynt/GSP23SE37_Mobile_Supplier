import 'dart:developer';

import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharePre {
  UserSharePre._();
  static Future<bool> saveUser(User user) async {
    bool result = true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      prefs.setString("userID", user.userID);
      prefs.setString("token", user.token!);
    } catch (e) {
      log(e.toString());
      result = false;
    }
    return result;
  }

  static Future<User?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt("userID");
    if (userId == null) {
      return null;
    } else {
      return User(userID: userId.toString());
    }
  }

  static void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("userID");
    prefs.remove("token");
    // await FirebaseAuth.instance.signOut();
  }
}
