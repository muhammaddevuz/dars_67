import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  Future<void> signIn(String newEmail, String newPassword) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: newEmail, password: newPassword);
  }

  Future<void> signUp(String newEmail, String newPassword) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: newEmail, password: newPassword);
  }
}
