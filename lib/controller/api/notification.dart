import 'dart:convert';

import 'package:http/http.dart' as http;

class NotificationApi {
  triggerNotification(
      {required String fcmToken,
        required String title,
        required String body}) async {
    var kye =
        "AIzaSyZ-1u...0GBYzPu7Udno5aA";
    try {
      // ignore: unused_local_variable
      final http.Response response = await http.post(
        Uri.parse("https://fcm.googleapis.com/fcm/send"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "key=$kye"
        },
        body: jsonEncode(
          {
            "to": fcmToken,
            "notification": {
              "title": title,
              "body": body,
            },
          },
        ),
      );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
