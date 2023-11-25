import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvtWeicE3aYkgsDuUWV9v7kl7MujA0o_Y",
            authDomain: "scientech-app.firebaseapp.com",
            projectId: "scientech-app",
            storageBucket: "scientech-app.appspot.com",
            messagingSenderId: "821930569175",
            appId: "1:821930569175:web:1824c2b02b8ea7700e6f92"));
  } else {
    await Firebase.initializeApp();
  }
}
