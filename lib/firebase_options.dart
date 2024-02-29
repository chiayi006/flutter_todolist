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
    apiKey: 'AIzaSyDXMegaQ_4W-F8mZgkWuLPi9O2tkvReyQg',
    appId: '1:385584863257:web:197df9a193822b695c3288',
    messagingSenderId: '385584863257',
    projectId: 'ivy-todolist-project',
    authDomain: 'ivy-todolist-project.firebaseapp.com',
    storageBucket: 'ivy-todolist-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALGDnDisK_UD44ppN3M_6eupfn3VGGP7k',
    appId: '1:385584863257:android:adc3aae3ce8a906a5c3288',
    messagingSenderId: '385584863257',
    projectId: 'ivy-todolist-project',
    storageBucket: 'ivy-todolist-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3Ux6VmDkyoKh_Lvq5z5i_3Vnf2X9Av-4',
    appId: '1:385584863257:ios:c61771be8123a4515c3288',
    messagingSenderId: '385584863257',
    projectId: 'ivy-todolist-project',
    storageBucket: 'ivy-todolist-project.appspot.com',
    iosBundleId: 'com.example.flutterTodolist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3Ux6VmDkyoKh_Lvq5z5i_3Vnf2X9Av-4',
    appId: '1:385584863257:ios:1811bfd5fe18566d5c3288',
    messagingSenderId: '385584863257',
    projectId: 'ivy-todolist-project',
    storageBucket: 'ivy-todolist-project.appspot.com',
    iosBundleId: 'com.example.flutterTodolist.RunnerTests',
  );
}
