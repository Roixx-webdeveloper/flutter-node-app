import 'package:flutter/material.dart';

class NotifyService {
  //Globalkey
  static late GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String message) {
    final snackbar = new SnackBar(content: Text(message));

    messengerKey.currentState!.showSnackBar(snackbar);
  }
}
