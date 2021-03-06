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
    apiKey: 'AIzaSyCY-CIPaM1cLgEpIIB6iL5NhyHM0MNWkPw',
    appId: '1:725630552894:web:2f22667509bb1afaf07a6f',
    messagingSenderId: '725630552894',
    projectId: 'colaborativa-dda97',
    authDomain: 'colaborativa-dda97.firebaseapp.com',
    databaseURL: 'https://colaborativa-dda97-default-rtdb.firebaseio.com',
    storageBucket: 'colaborativa-dda97.appspot.com',
    measurementId: 'G-06VSDMDCX9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCoGX3T6b1v8JaxYF5Nty09Jm8QPLAKfi0',
    appId: '1:725630552894:android:c15949271d09bda4f07a6f',
    messagingSenderId: '725630552894',
    projectId: 'colaborativa-dda97',
    databaseURL: 'https://colaborativa-dda97-default-rtdb.firebaseio.com',
    storageBucket: 'colaborativa-dda97.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAD2xMnJ-WxWOz1cj3PTYNC0IFYPhuea5A',
    appId: '1:725630552894:ios:3704e6353f3b7624f07a6f',
    messagingSenderId: '725630552894',
    projectId: 'colaborativa-dda97',
    databaseURL: 'https://colaborativa-dda97-default-rtdb.firebaseio.com',
    storageBucket: 'colaborativa-dda97.appspot.com',
    iosClientId: '725630552894-smlip0cqhk06pvsf808lhj2ilehirl29.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAD2xMnJ-WxWOz1cj3PTYNC0IFYPhuea5A',
    appId: '1:725630552894:ios:3704e6353f3b7624f07a6f',
    messagingSenderId: '725630552894',
    projectId: 'colaborativa-dda97',
    databaseURL: 'https://colaborativa-dda97-default-rtdb.firebaseio.com',
    storageBucket: 'colaborativa-dda97.appspot.com',
    iosClientId: '725630552894-smlip0cqhk06pvsf808lhj2ilehirl29.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
