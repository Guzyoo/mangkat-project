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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCt2TqeSf7ucy27Pz5ZwU2srX2h_nDgNso',
    appId: '1:670212465646:web:13b7029185c3db948ee4ff',
    messagingSenderId: '670212465646',
    projectId: 'mangkat-project-47ea6',
    authDomain: 'mangkat-project-47ea6.firebaseapp.com',
    storageBucket: 'mangkat-project-47ea6.appspot.com',
    measurementId: 'G-72HR6WCT49',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVv3a799mUu6ueiq_d6wdXs71bPOdTptE',
    appId: '1:670212465646:android:22cf9768eb52ca388ee4ff',
    messagingSenderId: '670212465646',
    projectId: 'mangkat-project-47ea6',
    storageBucket: 'mangkat-project-47ea6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjdS9nKr3RkWAMYzsQFNNMpdZ5gDXD2Qk',
    appId: '1:670212465646:ios:6f8afae8b59325f18ee4ff',
    messagingSenderId: '670212465646',
    projectId: 'mangkat-project-47ea6',
    storageBucket: 'mangkat-project-47ea6.appspot.com',
    iosBundleId: 'com.example.majalengkaAngkutan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjdS9nKr3RkWAMYzsQFNNMpdZ5gDXD2Qk',
    appId: '1:670212465646:ios:6f8afae8b59325f18ee4ff',
    messagingSenderId: '670212465646',
    projectId: 'mangkat-project-47ea6',
    storageBucket: 'mangkat-project-47ea6.appspot.com',
    iosBundleId: 'com.example.majalengkaAngkutan',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCt2TqeSf7ucy27Pz5ZwU2srX2h_nDgNso',
    appId: '1:670212465646:web:40567f1be1db5e348ee4ff',
    messagingSenderId: '670212465646',
    projectId: 'mangkat-project-47ea6',
    authDomain: 'mangkat-project-47ea6.firebaseapp.com',
    storageBucket: 'mangkat-project-47ea6.appspot.com',
    measurementId: 'G-GDLPBM80HS',
  );
}
