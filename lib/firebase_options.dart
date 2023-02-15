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
    apiKey: 'AIzaSyBaUq2rhL--ImZoaQyCgN7zwY6g8YrCods',
    appId: '1:22660598492:web:6316a5b82b06ad1e4fc219',
    messagingSenderId: '22660598492',
    projectId: 'curious-ifsp',
    authDomain: 'curious-ifsp.firebaseapp.com',
    databaseURL: 'https://curious-ifsp-default-rtdb.firebaseio.com',
    storageBucket: 'curious-ifsp.appspot.com',
    measurementId: 'G-9Q2B7416ME',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGbS1Eso0TXzlnbH-v3YpywpMUQCTBqb8',
    appId: '1:22660598492:android:0ab766ad98b53da54fc219',
    messagingSenderId: '22660598492',
    projectId: 'curious-ifsp',
    databaseURL: 'https://curious-ifsp-default-rtdb.firebaseio.com',
    storageBucket: 'curious-ifsp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaxYxZ3GfF0Q-zLXwwV1mB-LwEfBntrsE',
    appId: '1:22660598492:ios:0d26dfa254deff454fc219',
    messagingSenderId: '22660598492',
    projectId: 'curious-ifsp',
    databaseURL: 'https://curious-ifsp-default-rtdb.firebaseio.com',
    storageBucket: 'curious-ifsp.appspot.com',
    iosClientId: '22660598492-2ji5obpip5ar2noq5l2s28tcld47hp3k.apps.googleusercontent.com',
    iosBundleId: 'com.example.curiousIfsp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDaxYxZ3GfF0Q-zLXwwV1mB-LwEfBntrsE',
    appId: '1:22660598492:ios:0d26dfa254deff454fc219',
    messagingSenderId: '22660598492',
    projectId: 'curious-ifsp',
    databaseURL: 'https://curious-ifsp-default-rtdb.firebaseio.com',
    storageBucket: 'curious-ifsp.appspot.com',
    iosClientId: '22660598492-2ji5obpip5ar2noq5l2s28tcld47hp3k.apps.googleusercontent.com',
    iosBundleId: 'com.example.curiousIfsp',
  );
}