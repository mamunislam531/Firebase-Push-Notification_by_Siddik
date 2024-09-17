import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:push_notification/controller/api/notification.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  FirebaseMessaging messaging = FirebaseMessaging.instance;


  @override
  State<HomeView> createState() => _HomeViewState();

}

class _HomeViewState extends State<HomeView> {
  String? token = '';
  void T()async{
    token =
        await FirebaseMessaging.instance.getToken() ;
    print(token);
  }
  @override
  void initState() {
    T();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Push Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {


                 await NotificationApi().triggerNotification(
                      fcmToken: token ?? '', title: "Flutter", body: "50%");
                },
                child: Text("Push"))
          ],
        ),
      ),
    );
  }
}
