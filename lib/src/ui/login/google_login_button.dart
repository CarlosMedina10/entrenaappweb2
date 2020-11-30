import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/login_bloc/bloc.dart';


class GoogleLoginButton extends StatelessWidget {
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
        BlocProvider.of<LoginBloc>(context).add(LoginWithGooglePressed());
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Container(
        height: 60,
        child: Center(
          child: Image(
            image: AssetImage(
              "graphics/google-logo.png",
              package: "flutter_auth_buttons",
            ),
            height: 30.0,
            width: 30.0,
          ),
        ),
      ),
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
    );
  }
}
