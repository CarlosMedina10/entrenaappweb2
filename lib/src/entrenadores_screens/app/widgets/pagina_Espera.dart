import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class PaginaEspera extends StatelessWidget {
 final bool isFromAuth;
  PaginaEspera({this.isFromAuth=false});

  @override
  Widget build(BuildContext context) {

    
    return 
    new GestureDetector(
      onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
      }, child:
    new Scaffold(
      backgroundColor: (!isFromAuth) ? Color.fromRGBO(3, 9, 40, 1) : Colors.white,
      body: (!isFromAuth) ?   Column(
        children: <Widget>[
        new Container(
          height:MediaQuery.of(context).size.height-MediaQuery.of(context).size.height*0.65,
          padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.15),
          child: Center(child: new Image.asset('assets/images/LogoEntrenaAppFondoNegro.png')),),
        Container(
           
            padding: EdgeInsets.all(20),
       height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height*0.75,
            child: 
            
            FittedBox(
                            child: Center(
                child: Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    
    Text(
      "Be",
      style: TextStyle(fontSize: 50.0,color:Colors.grey[300] ),
    ),
    SizedBox(width: 20.0),
    RotateAnimatedTextKit(
       totalRepeatCount: 0,
        onTap: () {
    
        },
        isRepeatingAnimation: true,
        text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
        textStyle: TextStyle(fontSize: 60.0, fontFamily: "Horizon_Italic",color:Colors.grey[300]),
        textAlign: TextAlign.start,
        alignment: AlignmentDirectional.topStart // or Alignment.topLeft
      ),
  ],
)
                
                // FadeAnimatedTextKit(
                  
                
                //     textAlign: TextAlign.center,
                //     onTap: () {
                //       print("Tap Event");
                //     },
                //     text: [
                //       "Hazlo",
                //       "Hazlo de la forma correcta",
                //       "¡Hazlo con EntrenaAPP!",
                    
                //     ],
                //     textStyle: TextStyle(
                //         fontSize: 70.0,
                //         fontFamily: "Horizon",
                //         fontWeight: FontWeight.bold,
                //         color: Colors.orange,
                        
                //         decorationStyle: TextDecorationStyle.solid),
                //   ),
              ),
            ),
          ) ,
          Container(
            height:MediaQuery.of(context).size.height-MediaQuery.of(context).size.height*0.85,
            child: Center(child: CircularProgressIndicator(),)),
            Container(
          height:MediaQuery.of(context).size.height-MediaQuery.of(context).size.height*0.75,
          padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.35),
          child: Center(child: new Image.asset('assets/images/LogoCarlos10MedinaFondoNegro.png')),),
         
        ],
      ): Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text("_Pagina_Espera.bienvenido".tr(),style: TextStyle(color: Color.fromRGBO(3, 9, 40, 1),fontSize:30),),
        SizedBox(height:50),
         Text("_Pagina_Espera.cargando_datos".tr(),style: TextStyle(color:Colors.orange,fontSize:16),),
         SizedBox(height:10),
         Center(child: CircularProgressIndicator(),),
        ],
      ), 
    ));
  }
}
