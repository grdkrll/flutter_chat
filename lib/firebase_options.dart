// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDHot81kjKT4_u_tuTupQyYUH0UqVwF67o',
    appId: '1:116972632818:web:ba3381688f5811d296ee6b',
    messagingSenderId: '116972632818',
    projectId: 'schoolproject-e69d0',
    authDomain: 'schoolproject-e69d0.firebaseapp.com',
    databaseURL: 'https://schoolproject-e69d0-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'schoolproject-e69d0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHVP_EcN7M9dOhcuCupP6WcnFDHkO16fU',
    appId: '1:116972632818:android:7f887e6f36e76ce796ee6b',
    messagingSenderId: '116972632818',
    projectId: 'schoolproject-e69d0',
    databaseURL: 'https://schoolproject-e69d0-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'schoolproject-e69d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5sJrcil1GMJ05HQnLObGLzJJXQtDtUoc',
    appId: '1:116972632818:ios:e7ef017f7708901596ee6b',
    messagingSenderId: '116972632818',
    projectId: 'schoolproject-e69d0',
    databaseURL: 'https://schoolproject-e69d0-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'schoolproject-e69d0.appspot.com',
    iosClientId: '116972632818-s7pelfsc2edcd08vitjuoecok6gkserp.apps.googleusercontent.com',
    iosBundleId: 'com.spacemessage.app',
  );
}
