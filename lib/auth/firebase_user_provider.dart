import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NeobankDemo1FirebaseUser {
  NeobankDemo1FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NeobankDemo1FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NeobankDemo1FirebaseUser> neobankDemo1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NeobankDemo1FirebaseUser>(
            (user) => currentUser = NeobankDemo1FirebaseUser(user));
