import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'models/user.dart';

//Cuando ocurre un error al registrarse
class SingUpFailure implements Exception {}

//Cuando ocurre un error en el login
class LogInWithEmailAndPasswordFailure implements Exception {}

//Error con el login de google
class LogInWithGoogleFailure implements Exception {}

//Error al cerrar sesion
class LogOutFailure implements Exception {}

class AuthenticationRepository {
  /* final firebase_auth.FirebaseAuth _firebaseAuth; */
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  AuthenticationRepository(
      {firebase_auth.FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignIn})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      return firebaseUser == null ? User.empty : firebaseUser.toUser;
    });
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(email: email, id: uid, name: displayName, photo: photoURL);
  }
}
