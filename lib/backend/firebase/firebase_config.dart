import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAF4Q5ys-RfbNDFZg4OmQxzQWiROJMIAdI",
            authDomain: "projetinfo-40210.firebaseapp.com",
            projectId: "projetinfo-40210",
            storageBucket: "projetinfo-40210.appspot.com",
            messagingSenderId: "519845511056",
            appId: "1:519845511056:web:c729005b8fe51de3b13d15"));
  } else {
    await Firebase.initializeApp();
  }
}
