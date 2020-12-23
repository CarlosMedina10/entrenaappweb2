import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class RoundedButton extends StatelessWidget {
  
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['carlos10zrg@hotmail.com'],

    subject: 'Asesoramiento personalizado',
    body: 'Hola Carlos, me gustaria recibir información sobre tu forma de trabajar y tarifas. Un Saludo.',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

// Future<void> setmesocicloactual() {
//        final url = 'https://entrenaapp2-12fbe.firebaseio.com/2NBOPGRvW9WuSDuS0OglklVvJ8O2/nombreUsuario.json';
//       //  ?auth=$authToken

//          return http.get(url).then((response){
//         print(response.body);
//        });}
  RoundedButton({this.textTitle, this.color,this.isMobile,this.isTablet,this.textColor=Colors.white});

  final Color color,textColor;
  final String textTitle;
  final bool isMobile,isTablet;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
      child: MaterialButton(
        height: (size.height<500) ? 45 : size.height * 0.09,
        minWidth: size.width * 0.15,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(26.0),
        // ),
        onPressed: () async{
           launchMailto();
         
        },
        color: color,
        child: Text(textTitle.toUpperCase(),
          style: TextStyle(
    color: textColor,
    fontSize: (isMobile) ? 12 : (isTablet) ? 14 : 16.0,
  ),
        ),
      ),
    );
  }
}
