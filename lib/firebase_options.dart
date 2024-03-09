// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAQhcij_tU-1Oa-h5nqXqOBtM-Cw6xdHz0',
    appId: '1:951367047454:web:7c32769c2242d9f377910f',
    messagingSenderId: '951367047454',
    projectId: 'crudop-41cbf',
    authDomain: 'crudop-41cbf.firebaseapp.com',
    storageBucket: 'crudop-41cbf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgv5CD8T0UEp5qDK9v6yf1gah2M2fjT3Q',
    appId: '1:951367047454:android:552baaa1175496e377910f',
    messagingSenderId: '951367047454',
    projectId: 'crudop-41cbf',
    storageBucket: 'crudop-41cbf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBtZ7ZDi6r9Z2oTvw-a2eJJQsBWuK_3ZE',
    appId: '1:951367047454:ios:13afad9cd6c6137177910f',
    messagingSenderId: '951367047454',
    projectId: 'crudop-41cbf',
    storageBucket: 'crudop-41cbf.appspot.com',
    iosBundleId: 'com.example.flutterApplication3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBtZ7ZDi6r9Z2oTvw-a2eJJQsBWuK_3ZE',
    appId: '1:951367047454:ios:5638c0c005ed5ad077910f',
    messagingSenderId: '951367047454',
    projectId: 'crudop-41cbf',
    storageBucket: 'crudop-41cbf.appspot.com',
    iosBundleId: 'com.example.flutterApplication3.RunnerTests',
  );
}
