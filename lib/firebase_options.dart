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
    apiKey: 'AIzaSyDo-9npzGOBXM5UAF_nSEOfnex4la97vhE',
    appId: '1:11903989111:web:28d76151a2e79650ec5d72',
    messagingSenderId: '11903989111',
    projectId: 'discussion-rsvp-livre-or',
    authDomain: 'discussion-rsvp-livre-or.firebaseapp.com',
    storageBucket: 'discussion-rsvp-livre-or.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCyqJvlLbWHcRPBu3lYubPJX0PA11cXxc',
    appId: '1:11903989111:android:484bb347f6e55e96ec5d72',
    messagingSenderId: '11903989111',
    projectId: 'discussion-rsvp-livre-or',
    storageBucket: 'discussion-rsvp-livre-or.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCA-bfIkme0JMVbWxjn72iH9ksCogAJYVA',
    appId: '1:11903989111:ios:93166d449f08d38fec5d72',
    messagingSenderId: '11903989111',
    projectId: 'discussion-rsvp-livre-or',
    storageBucket: 'discussion-rsvp-livre-or.appspot.com',
    iosBundleId: 'com.example.diss',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCA-bfIkme0JMVbWxjn72iH9ksCogAJYVA',
    appId: '1:11903989111:ios:afab264fe322e4a3ec5d72',
    messagingSenderId: '11903989111',
    projectId: 'discussion-rsvp-livre-or',
    storageBucket: 'discussion-rsvp-livre-or.appspot.com',
    iosBundleId: 'com.example.diss.RunnerTests',
  );
}