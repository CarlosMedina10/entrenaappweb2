import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:firebase_auth/firebase_auth.dart';
import '../../bloc/authentication_bloc/bloc.dart';
import '../../repository/user_repository.dart';
import 'package:meta/meta.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  

  AuthenticationBloc( this._userRepository,) : super(Uninitialized());
    
 

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
     
      yield* _mapAppStartedToState();
    }
    if (event is LoggedIn) {
      yield* _mapLoggedInToState();
    }
    if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      final isSignedIn = await _userRepository.isSignedIn();
      if (isSignedIn) {
         String nombre= await _userRepository.getName();
    String imgUrl = await _userRepository.getPhoto();
    String email = await _userRepository.getUser();
    String userID= await _userRepository.getUserID();
    FirebaseUser firebaseUser = await _userRepository.getFirebaseUser();
    

    var idToken2= await _userRepository.getToken();
    String idToken= idToken2.token;
  

        yield  Authenticated(userID,idToken,nombre,imgUrl,email,firebaseUser);
        
      }
      else {
        yield 
         Unauthenticated();
       
      }
    } catch (_) {
      print('error occur');
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    String nombre= await _userRepository.getName();
    String imgUrl = await _userRepository.getPhoto();
    String email = await _userRepository.getUser();
   String userID = await _userRepository.getUserID();
   FirebaseUser firebaseUser = await _userRepository.getFirebaseUser();
    
    

    var idToken2 = await _userRepository.getToken();
    String idToken= idToken2.token;
   

    yield Authenticated(userID,idToken,nombre,imgUrl,email,firebaseUser);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Unauthenticated();
    // if()
    _userRepository.signOut();

  }
}