import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBy3iAQompUAvFsYj9K9zxnb5TpGye2j6w",
            authDomain: "marriagematch-cba92.firebaseapp.com",
            projectId: "marriagematch-cba92",
            storageBucket: "marriagematch-cba92.appspot.com",
            messagingSenderId: "322829673101",
            appId: "1:322829673101:web:c463800885e3e6cd1838c4",
            measurementId: "G-YHEPZQJGWS"));
  } else {
    await Firebase.initializeApp();
  }
}
