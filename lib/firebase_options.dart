// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD0mlez70oofGL-V1iEoo_PB9sIjiXOtxU',
    appId: '1:267282319997:web:aca84bee160bd74f217f14',
    messagingSenderId: '267282319997',
    projectId: 'push-notification-29bf0',
    authDomain: 'push-notification-29bf0.firebaseapp.com',
    storageBucket: 'push-notification-29bf0.appspot.com',
    measurementId: 'G-K86D15PDMC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1Ed-V8VUSH9ae1xfF56_7zS4ygIlngEU',
    appId: '1:267282319997:android:f0fa078c0c278883217f14',
    messagingSenderId: '267282319997',
    projectId: 'push-notification-29bf0',
    storageBucket: 'push-notification-29bf0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyJTXV-f4SZAi6fU4ZS3v8bO4jhW8vk3w',
    appId: '1:267282319997:ios:6210798891163328217f14',
    messagingSenderId: '267282319997',
    projectId: 'push-notification-29bf0',
    storageBucket: 'push-notification-29bf0.appspot.com',
    iosBundleId: 'com.example.pushNotification',
  );

}