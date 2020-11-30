
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// Tres estados:
// No inicializado -> splash screen
// Autenticado -> Home
// No autenticado -> Login

class Uninitialized extends AuthenticationState{
  @override
  String toString() => 'No inicializado';
}

class Authenticated extends AuthenticationState {
  final String userID;
  final idToken;
  final String displayName;
  final String imgUrl;
  final String email;
  final FirebaseUser firebaseUser;
  

  const Authenticated(this.userID,this.idToken,this.displayName,this.imgUrl,this.email,this.firebaseUser);

  @override
  List<Object> get props => [displayName,imgUrl,email,firebaseUser];

  @override
  String toString() => 'Autenticado - displayName :$displayName';
}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'No autenticado';
}