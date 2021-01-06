import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../bloc/login_bloc/bloc.dart';


class GoogleLoginButton extends StatelessWidget {
  final GoogleSignIn _googleSignIn;
  final bool isMobile;
  final bool isTablet;
  
  GoogleLoginButton(this._googleSignIn,this.isMobile,this.isTablet);
  @override
  Widget build(BuildContext context) {
    Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
    return RawMaterialButton(
      
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Iniciando sesión...'),
                CircularProgressIndicator(),
              ],
            )));
        BlocProvider.of<LoginBloc>(context).add(LoginWithGooglePressed());
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Container(
        height: isMobile ? 45 :  52.5 ,
        child: Center(
          child: Image(
            image: AssetImage(
              "graphics/google-logo.png",
              package: "flutter_auth_buttons",
            ),
             height: isMobile ? 20 : isTablet ? 25 : 30,
            width: isMobile ? 20 : isTablet ? 25 : 30,
          ),
        ),
      ),
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
    );
  }
}
