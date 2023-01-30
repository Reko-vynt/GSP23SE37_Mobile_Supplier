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
    apiKey: 'AIzaSyBaUaNJe050MkvaSfL2LOw24AnXKN2Sl60',
    appId: '1:688134919204:web:8d4fd7ee3736a5d73974b1',
    messagingSenderId: '688134919204',
    projectId: 'esmp-4b85e',
    authDomain: 'esmp-4b85e.firebaseapp.com',
    storageBucket: 'esmp-4b85e.appspot.com',
    measurementId: 'G-PKZSYV6D3P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAdFESdWhaMMECsiEsdkl0NZjwuR-7Vz4',
    appId: '1:688134919204:android:ff5c6fbd360a6b9d3974b1',
    messagingSenderId: '688134919204',
    projectId: 'esmp-4b85e',
    storageBucket: 'esmp-4b85e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgAg9OUxEbMshFjbtAa78BvwE779-56bE',
    appId: '1:688134919204:ios:8a27b8c3de0f328b3974b1',
    messagingSenderId: '688134919204',
    projectId: 'esmp-4b85e',
    storageBucket: 'esmp-4b85e.appspot.com',
    androidClientId: '688134919204-ifvcbpd4dg9n7kell7bafd90utsfefjm.apps.googleusercontent.com',
    iosClientId: '688134919204-52pjf2v99q4svb4iuc47kulj9spid5lq.apps.googleusercontent.com',
    iosBundleId: 'com.example.gsp23se37MobileSupplier',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgAg9OUxEbMshFjbtAa78BvwE779-56bE',
    appId: '1:688134919204:ios:8a27b8c3de0f328b3974b1',
    messagingSenderId: '688134919204',
    projectId: 'esmp-4b85e',
    storageBucket: 'esmp-4b85e.appspot.com',
    androidClientId: '688134919204-ifvcbpd4dg9n7kell7bafd90utsfefjm.apps.googleusercontent.com',
    iosClientId: '688134919204-52pjf2v99q4svb4iuc47kulj9spid5lq.apps.googleusercontent.com',
    iosBundleId: 'com.example.gsp23se37MobileSupplier',
  );
}
