import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../bloc/login_bloc/bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class AppleLoginButton extends StatelessWidget {
   final bool isMobile;
  final bool isTablet;
  AppleLoginButton(this.isMobile,this.isTablet);
  @override
  Widget build(BuildContext context) {
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
        BlocProvider.of<LoginBloc>(context).add(LoginWithApplePressed());
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Container(
        height: isMobile ? 45 : 52.5 ,
        child: Center(
          child: Icon(
            FontAwesomeIcons.apple,
            size: isMobile ? 20 : isTablet ? 26 : 32,
          ),
          // child: Image(
          //   image: AssetImage(
          //     "graphics/apple_logo_black.png",
          //     package: "flutter_auth_buttons",
          //   ),
          //   height: 34.0,
          //   width: 34.0,
          // ),
        ),
      ),
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
    );
  }
}
