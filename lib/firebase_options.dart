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
    apiKey: 'AIzaSyBXEKN-y2QvHOxNZYKaxdwxEBdhcUHKs30',
    appId: '1:191230875339:web:d48260a0e23a95adaaad4e',
    messagingSenderId: '191230875339',
    projectId: 'tap-review-cb5af',
    authDomain: 'tap-review-cb5af.firebaseapp.com',
    storageBucket: 'tap-review-cb5af.appspot.com',
    measurementId: 'G-QBN40V9GY3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmh1JM49O2_ahNQL9WvzGGZSZcYgPr-Zk',
    appId: '1:191230875339:android:18a3acc0b07a68c4aaad4e',
    messagingSenderId: '191230875339',
    projectId: 'tap-review-cb5af',
    storageBucket: 'tap-review-cb5af.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_n7NMxUCYsW0PtnkH57AAs0vbihtqz9s',
    appId: '1:191230875339:ios:8af786b71d28521eaaad4e',
    messagingSenderId: '191230875339',
    projectId: 'tap-review-cb5af',
    storageBucket: 'tap-review-cb5af.appspot.com',
    iosClientId: '191230875339-qcq4nffhkape1n39loks6k1ilvirdl1r.apps.googleusercontent.com',
    iosBundleId: 'com.example.tapReview',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_n7NMxUCYsW0PtnkH57AAs0vbihtqz9s',
    appId: '1:191230875339:ios:8af786b71d28521eaaad4e',
    messagingSenderId: '191230875339',
    projectId: 'tap-review-cb5af',
    storageBucket: 'tap-review-cb5af.appspot.com',
    iosClientId: '191230875339-qcq4nffhkape1n39loks6k1ilvirdl1r.apps.googleusercontent.com',
    iosBundleId: 'com.example.tapReview',
  );
}