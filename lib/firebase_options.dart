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
    apiKey: 'AIzaSyDK4YJ07zUVGpP3s-ISeaydUQ1qaImKtyU',
    appId: '1:356233728825:web:4249e166270bd4c4674ee8',
    messagingSenderId: '356233728825',
    projectId: 'audio-player-cfbab',
    authDomain: 'audio-player-cfbab.firebaseapp.com',
    storageBucket: 'audio-player-cfbab.appspot.com',
    measurementId: 'G-Q6B2PKBRGX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASXyI5mSCNL88RBEz5x2jAoMluZMLi78Q',
    appId: '1:356233728825:android:e7131443f0440f4b674ee8',
    messagingSenderId: '356233728825',
    projectId: 'audio-player-cfbab',
    storageBucket: 'audio-player-cfbab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSWAbd2zGz-kZnUNaMuCM6yK7oWk8TLcc',
    appId: '1:356233728825:ios:7947973717e6fbb2674ee8',
    messagingSenderId: '356233728825',
    projectId: 'audio-player-cfbab',
    storageBucket: 'audio-player-cfbab.appspot.com',
    iosBundleId: 'com.example.musicPlayerApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSWAbd2zGz-kZnUNaMuCM6yK7oWk8TLcc',
    appId: '1:356233728825:ios:7947973717e6fbb2674ee8',
    messagingSenderId: '356233728825',
    projectId: 'audio-player-cfbab',
    storageBucket: 'audio-player-cfbab.appspot.com',
    iosBundleId: 'com.example.musicPlayerApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDK4YJ07zUVGpP3s-ISeaydUQ1qaImKtyU',
    appId: '1:356233728825:web:6c944d572e7c5eb1674ee8',
    messagingSenderId: '356233728825',
    projectId: 'audio-player-cfbab',
    authDomain: 'audio-player-cfbab.firebaseapp.com',
    storageBucket: 'audio-player-cfbab.appspot.com',
    measurementId: 'G-QJ702BX5J0',
  );
}
