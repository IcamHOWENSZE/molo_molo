import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MoloMoloFirebaseUser {
  MoloMoloFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MoloMoloFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MoloMoloFirebaseUser> moloMoloFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MoloMoloFirebaseUser>(
      (user) {
        currentUser = MoloMoloFirebaseUser(user);
        return currentUser!;
      },
    );
