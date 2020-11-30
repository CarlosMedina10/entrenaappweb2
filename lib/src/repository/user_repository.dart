// Imports
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
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
  Future<FirebaseUser> signInWithGoogle() async {

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
    return _firebaseAuth.currentUser();
  }

  Future<FirebaseUser> signInWithFb() async {
   
      final facebookSignIn = FacebookLoginWeb();
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

  //   switch (result.status) {
  //     // case FacebookLoginStatus.loggedIn:
  //     //   final FacebookAccessToken accessToken = result.accessToken;
  //     //   _showMessage('''
  //     //    Logged in!
         
  //     //    Token: ${accessToken.token}
  //     //    User id: ${accessToken.userId}
  //     //    ''');

  //     //   facebookSignIn.testApi();
  //     //   break;
  //     // case FacebookLoginStatus.cancelledByUser:
  //     //   _showMessage('Login cancelled by the user.');
  //     //   break;
  //     // case FacebookLoginStatus.error:
  //     //   _showMessage('Something went wrong with the login process.\n'
  //     //       'Here\'s the error Facebook gave us: ${result.errorMessage}');
  //     //   break;
    
  // }
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
    final currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }

  // Obtener usuario
  Future<String> getUser() async {
    return (await _firebaseAuth.currentUser()).email;
  }

  Future<String> getName() async {
    return (await _firebaseAuth.currentUser()).displayName;
  }

  Future<String> getPhoto() async {
    return (await _firebaseAuth.currentUser()).photoUrl;
  }

  Future<String> getUserID() async {
    return (await _firebaseAuth.currentUser()).uid;
  }

  Future<IdTokenResult> getToken() async {
    return (await _firebaseAuth.currentUser()).getIdToken();
  }

  Future<FirebaseUser> getFirebaseUser() async {
    return (await _firebaseAuth.currentUser());
  }

  sendPaswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (error) {
      throw error;
    }
  }
}
