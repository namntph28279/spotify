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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBojexZ1ziDhMAaAxbI9mMRYM-vV_AO8pk',
    appId: '1:630759517423:web:df25378bb1083127e8bf1a',
    messagingSenderId: '630759517423',
    projectId: 'spotify-a744a',
    authDomain: 'spotify-a744a.firebaseapp.com',
    storageBucket: 'spotify-a744a.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDL7yA38I4x8iLPJ0c4xYkJ3EvUrJl-CI0',
    appId: '1:630759517423:android:6da0aee93d316c48e8bf1a',
    messagingSenderId: '630759517423',
    projectId: 'spotify-a744a',
    storageBucket: 'com.example.spotify',
  );

}
