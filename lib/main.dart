



import 'package:entrenaapp/src/ui/landingPage/HomePage.dart';
import 'package:entrenaapp/src/ui/landingPage/SucessPayment.dart';

import 'package:entrenaapp/src/screens/home_screen.dart';
import 'package:entrenaapp/src/ui/usuarioDentro/sorteo.dart';

import './src/ui/usuarioDentro/comprobando.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:responsive_builder/responsive_builder.dart';
import './src/bloc/authentication_bloc/bloc.dart';

import './src/repository/user_repository.dart';
import 'src/screens/home_screen.dart';


GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
   
  ],
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  
   ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 1025, tablet: 550, watch: 200),
  );
  


  Database db = database();
    final UserRepository userRepository = UserRepository(db);

  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(userRepository)
        ..add(AppStarted()),
      child: App(userRepository),
    )
  );
 

  
}

class App extends StatelessWidget {
  final UserRepository _userRepository;
  

  App(this._userRepository,);
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'EntrenaApp',
     routes: {
        
        '/success': (_) => Success(_userRepository),
      },
      home:

      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return Center(child:CircularProgressIndicator(),);
          }
          if (state is Authenticated) {
            return  Comprobando(_userRepository);
            // return Sorteo(_userRepository);
          }
          if (state is Unauthenticated) {
            // return LoginScreen(userRepository: _userRepository,);
            return HomePage(_userRepository,_googleSignIn);
          }
          return Container();
        },
      ),
    );
    
  }
}
