// Imports
import 'dart:async';
import 'dart:convert';
import 'package:firebase/firebase.dart' hide User,GoogleAuthProvider,FacebookAuthProvider;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_login_web/flutter_facebook_login_web.dart';
import 'package:google_sign_in/google_sign_in.dart';



class UserRepository {
  
  Database firebaseDatabase;

  // Constructor
  UserRepository(this.firebaseDatabase);
     
 final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
 GoogleSignIn _googleSignIn;
 final FacebookLoginWeb facebookSignIn = FacebookLoginWeb();
 final FirebaseAuthOAuth _firebaseAuthOAuth = FirebaseAuthOAuth();
  String errorString;
 dynamic haParticipado;


darPremiumGratuito(String userID) async{
   String url =
            "https://api.revenuecat.com/v1/subscribers/$userID/entitlements/suscripcion_mensual/promotional";
     
      try{  await http.post(url,
      body: json.encode({
        "duration":"monthly"

      }),
              headers: {
    "Content-Type": "application/json",
    "Authorization": "Bearer sk_LOnONfxsicGXLXdXBzMyzzueGmQBV"
  }); 
  print('se enviaaaaaa');
  } catch (error){
    throw error;
  
  }
       
        
        }

inscribirseEnElSorteo(String nombreUsuario){
 print('se ha pulsadooooooo');
     DatabaseReference ref1 = firebaseDatabase.ref('zzzzzzzzzzsorteo');
     DatabaseReference ref2 = firebaseDatabase.ref(getUserID());
     Map<String,String> inscripcion = {'nombreUsuario':nombreUsuario,'idUsuario':getUserID()};
     ref1.push(inscripcion);
     ref2.update({'userPro': true,'haParticipadoSorteoFC':true});
     
     }

 Future  comprobandoInscripcion() async{

     
     DatabaseReference ref = firebaseDatabase.ref(getUserID());
    
   
 ref.child('haParticipadoSorteoFC').onValue.listen((e) {
    DataSnapshot result = e.snapshot;
    print(result.toString());
    print(result.exists());
    print(result.toJson());
  haParticipado=result.val();
  print(haParticipado);
    // Do something with datasnapshot
  });
     
     }

















  // SignInWithGoogle
  Future<User> signInWithGoogle() async {

   _googleSignIn = GoogleSignIn(
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
   
    
    FacebookLoginResult result = await facebookSignIn.logIn(['email',]);
    final AuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken.token);
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  
     
      


  
  }

Future<User> signInWithApple() async {
    // 1. perform the sign-in request
   final user = await _firebaseAuthOAuth
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
    return ([_firebaseAuth.signOut(), _googleSignIn.signOut(),facebookSignIn.logOut()]);
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

  String getUserID() {
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
