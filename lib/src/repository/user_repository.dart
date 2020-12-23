// Imports
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login_web/flutter_facebook_login_web.dart';
import 'package:google_sign_in/google_sign_in.dart';



class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // Constructor
  UserRepository({FirebaseAuth firebaseAuth, GoogleSignIn googleSignIn})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  String errorString;
  // SignInWithGoogle
  Future<User> signInWithGoogle() async {

    GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  Future<User> signInWithFb() async {
   
      final facebookSignIn = FacebookLoginWeb();
    FacebookLoginResult result = await facebookSignIn.logIn(['email',]);
    final AuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken.token);
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  
     
      


  
  }

Future<User> signInWithApple() async {
    // 1. perform the sign-in request
   final user = await FirebaseAuthOAuth()
          .openSignInFlow("apple.com", ["email"], {"locale": "en"});
        return user;
  }

  // SignInWithCredentials
  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  // SignUp - Registro
  Future<void> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  // SignOut
  Future<void> signOut() async {
    return Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
  }

  // Esta logueado?
  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  // Obtener usuario
  Future<String> getUser() async {
    return  _firebaseAuth.currentUser.email;
  }

  Future<String> getName() async {
    return _firebaseAuth.currentUser.displayName;
  }

  Future<String> getPhoto() async {
    return _firebaseAuth.currentUser.photoUrl;
  }

  Future<String> getUserID() async {
    return  _firebaseAuth.currentUser.uid;
  }

  Future<String> getToken() async {
    return await _firebaseAuth.currentUser.getIdToken();
  }

  Future<User> getFirebaseUser() async {
    return _firebaseAuth.currentUser;
  }

  sendPaswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (error) {
      throw error;
    }
  }
}
