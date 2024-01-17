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
    apiKey: 'AIzaSyBLOyNkuK9-geLKx_3uIEVxGiSIdR_9Xe0',
    appId: '1:700241742568:web:e207976abae0aaf174d75d',
    messagingSenderId: '700241742568',
    projectId: 'my-preorder-app',
    authDomain: 'my-preorder-app.firebaseapp.com',
    storageBucket: 'my-preorder-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9dlyq9YLtj_ko41LPrTLBydhxS5EGMxk',
    appId: '1:700241742568:android:f08bf86cfcf219ac74d75d',
    messagingSenderId: '700241742568',
    projectId: 'my-preorder-app',
    storageBucket: 'my-preorder-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNN8TTFrSwYyGTS20IhBXxnr31M_Cq_40',
    appId: '1:700241742568:ios:c71d45262cdf78ee74d75d',
    messagingSenderId: '700241742568',
    projectId: 'my-preorder-app',
    storageBucket: 'my-preorder-app.appspot.com',
    iosBundleId: 'com.example.preorder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNN8TTFrSwYyGTS20IhBXxnr31M_Cq_40',
    appId: '1:700241742568:ios:2ab2b2e659cad0b874d75d',
    messagingSenderId: '700241742568',
    projectId: 'my-preorder-app',
    storageBucket: 'my-preorder-app.appspot.com',
    iosBundleId: 'com.example.preorder.RunnerTests',
  );
}