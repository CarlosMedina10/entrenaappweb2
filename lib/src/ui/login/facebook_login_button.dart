import 'package:entrenaapp/blocs/login_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FbLoginButton extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  FbLoginButton(this.isMobile,this.isTablet);
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
        BlocProvider.of<LoginBloc>(context).add(LoginWithFbPressed());
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Container(
         height: isMobile ? 45 :52.5 ,
        child: Center(
          child: Icon(
            FontAwesomeIcons.facebookSquare,
            color: Color.fromRGBO(59, 89, 152, 1),
            size: isMobile ? 20 : isTablet ? 26 : 32,
          ),
          // child: Image(
          //   image: AssetImage(
          //     "graphics/flogo-HexRBG-Wht-100.png",
          //     package: "flutter_auth_buttons",
          //   ),
          //   height: 24.0,
          //   width: 24.0,
          // ),
        ),
      ),
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
    );
  }
}
