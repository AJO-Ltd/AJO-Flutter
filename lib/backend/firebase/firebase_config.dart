import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAPqYa8mb5xB3nfkFjCEwrTVhW38MCWJsg",
            authDomain: "ajo-app-3eobyc.firebaseapp.com",
            projectId: "ajo-app-3eobyc",
            storageBucket: "ajo-app-3eobyc.appspot.com",
            messagingSenderId: "378936623049",
            appId: "1:378936623049:web:01725ecb8a5343bd117218"));
  } else {
    await Firebase.initializeApp();
  }
}
