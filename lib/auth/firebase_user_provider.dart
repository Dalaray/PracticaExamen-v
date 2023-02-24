import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PracticaExamenVFirebaseUser {
  PracticaExamenVFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PracticaExamenVFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PracticaExamenVFirebaseUser> practicaExamenVFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PracticaExamenVFirebaseUser>(
      (user) {
        currentUser = PracticaExamenVFirebaseUser(user);
        return currentUser!;
      },
    );
