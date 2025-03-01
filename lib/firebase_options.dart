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
    apiKey: 'AIzaSyCX9tk8h4pg-0XmD3n0YPrpTqqxyM-hl4k',
    appId: '1:524280748507:web:54cdfec04514b56ec9affe',
    messagingSenderId: '524280748507',
    projectId: 'qrprotect-fd52c',
    authDomain: 'qrprotect-fd52c.firebaseapp.com',
    storageBucket: 'qrprotect-fd52c.firebasestorage.app',
    measurementId: 'G-X3Q8RLYVEP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAybcb0eDToqn48YLo_e01-e92og6T5QM',
    appId: '1:524280748507:android:c6efcbe3ef0d16c6c9affe',
    messagingSenderId: '524280748507',
    projectId: 'qrprotect-fd52c',
    storageBucket: 'qrprotect-fd52c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKcSO3nXO8ehzVe7BNa6Dx0yDUVHnAQR8',
    appId: '1:524280748507:ios:2f1b784c303ce8f3c9affe',
    messagingSenderId: '524280748507',
    projectId: 'qrprotect-fd52c',
    storageBucket: 'qrprotect-fd52c.firebasestorage.app',
    iosBundleId: 'com.example.qrProctetWeb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKcSO3nXO8ehzVe7BNa6Dx0yDUVHnAQR8',
    appId: '1:524280748507:ios:2f1b784c303ce8f3c9affe',
    messagingSenderId: '524280748507',
    projectId: 'qrprotect-fd52c',
    storageBucket: 'qrprotect-fd52c.firebasestorage.app',
    iosBundleId: 'com.example.qrProctetWeb',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCX9tk8h4pg-0XmD3n0YPrpTqqxyM-hl4k',
    appId: '1:524280748507:web:efac6023aaf17ba8c9affe',
    messagingSenderId: '524280748507',
    projectId: 'qrprotect-fd52c',
    authDomain: 'qrprotect-fd52c.firebaseapp.com',
    storageBucket: 'qrprotect-fd52c.firebasestorage.app',
    measurementId: 'G-XKM22N81W1',
  );
}
