 
 import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class BuyCoffeButton extends StatelessWidget {
  


// Future<void> setmesocicloactual() {
//        final url = 'https://entrenaapp2-12fbe.firebaseio.com/2NBOPGRvW9WuSDuS0OglklVvJ8O2/nombreUsuario.json';
//       //  ?auth=$authToken

//          return http.get(url).then((response){
//         print(response.body);
//        });}


  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: () async {
        var urlString = 'https://www.buymeacoffee.com/carlos10medina';
        if (await canLaunch(urlString)) {
          await launch(urlString);
        } else {
          throw "BuyMeACoffeWidget - Something went wrong!";
        }
      },
      child: Container(
        width: 217,
        padding: EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
        height: 51.0,
        decoration: BoxDecoration(
          color: Color(0xFFFF813F),
          border: Border.all(color: Colors.transparent, width: 1.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(190, 190, 190, 0.5),
              blurRadius: 2.0,
              offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1),
            )
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              "https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg",
              width: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Container(
                width: 217.0-65,
                child: Text(
                 'Buy me a coffe',
                  style:  TextStyle(
                          fontFamily: "Cookie",
                          color:
                              Colors.white ,
                          fontSize: 28.0,
                          letterSpacing: 0.6,
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
 
 
 
