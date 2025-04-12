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
    apiKey: 'AIzaSyBwyqJUsOgMBCwUDhW0mF3R7jh7NgrV0Z0',
    appId: '1:504671226774:web:006e1aa19d85069714abb7',
    messagingSenderId: '504671226774',
    projectId: 'fruitsapp-fb422',
    authDomain: 'fruitsapp-fb422.firebaseapp.com',
    storageBucket: 'fruitsapp-fb422.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRmcThFVHfndRI4kKZFNPf4IepgGjONCo',
    appId: '1:504671226774:android:ad4d384ff52470c214abb7',
    messagingSenderId: '504671226774',
    projectId: 'fruitsapp-fb422',
    storageBucket: 'fruitsapp-fb422.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZ5albTeWtT3mtBn2tTb4T-ukxXQ845rE',
    appId: '1:504671226774:ios:fce6fcba54be936414abb7',
    messagingSenderId: '504671226774',
    projectId: 'fruitsapp-fb422',
    storageBucket: 'fruitsapp-fb422.firebasestorage.app',
    androidClientId: '504671226774-q92vu2k11fpk7qmvk52bkfnfo234rvii.apps.googleusercontent.com',
    iosClientId: '504671226774-b4arp652ifqj2itvgevpk70gnlc8ovik.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitDashboard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZ5albTeWtT3mtBn2tTb4T-ukxXQ845rE',
    appId: '1:504671226774:ios:fce6fcba54be936414abb7',
    messagingSenderId: '504671226774',
    projectId: 'fruitsapp-fb422',
    storageBucket: 'fruitsapp-fb422.firebasestorage.app',
    androidClientId: '504671226774-q92vu2k11fpk7qmvk52bkfnfo234rvii.apps.googleusercontent.com',
    iosClientId: '504671226774-b4arp652ifqj2itvgevpk70gnlc8ovik.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitDashboard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBwyqJUsOgMBCwUDhW0mF3R7jh7NgrV0Z0',
    appId: '1:504671226774:web:d326c0c77ebaa1b514abb7',
    messagingSenderId: '504671226774',
    projectId: 'fruitsapp-fb422',
    authDomain: 'fruitsapp-fb422.firebaseapp.com',
    storageBucket: 'fruitsapp-fb422.firebasestorage.app',
  );
}
