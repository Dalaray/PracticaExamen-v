import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-YrNoxu8Yj1jPEP8QCXSHizXmxpCHwT0",
            authDomain: "practicaexamen-2229b.firebaseapp.com",
            projectId: "practicaexamen-2229b",
            storageBucket: "practicaexamen-2229b.appspot.com",
            messagingSenderId: "500689361453",
            appId: "1:500689361453:web:865b7c25ef8745bdbf36a4",
            measurementId: "G-C197B9S034"));
  } else {
    await Firebase.initializeApp();
  }
}
