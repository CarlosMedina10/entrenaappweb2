import 'package:entrenaapp/checkout/stripe_checkout.dart';
import 'package:entrenaapp/src/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:entrenaapp/src/bloc/authentication_bloc/authentication_event.dart';

import 'package:entrenaapp/src/widgets/buyMeACoffe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';




class SorteoFinFC  extends StatelessWidget {
  final bool isPremium;
SorteoFinFC(this.isPremium);
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
bool isMobile = false;
bool isTablet = false;
switch(deviceType) {
  case DeviceScreenType.watch:
    isMobile=false;
    isTablet=false;
    break;
  case DeviceScreenType.desktop:
     isMobile=false;
     isTablet=false;
    break;
  case DeviceScreenType.tablet:
     isMobile=false;
     isTablet=true;
    break;
  case DeviceScreenType.mobile:
     isMobile=true;
     isTablet=false;
    break;
  case DeviceScreenType.Mobile:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Tablet:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Desktop:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Watch:
    // TODO: Handle this case.
    break;
}
 var size = MediaQuery.of(context).size;
    return Scaffold(
 backgroundColor: Colors.white,
         body: SingleChildScrollView(
                    child: Container(
              padding: EdgeInsets.symmetric(horizontal: (isMobile) ? 10 : (isTablet) ? 62.5 : 125,vertical: 10),   
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                         BlocProvider.of<AuthenticationBloc>(
                                                                              context)
                                                                          .add(LoggedOut());


                    }, icon:Icon(Icons.arrow_back,color: Color(0xff0A183D),)),
                  SizedBox(width:15),
                  InkWell(
                    onTap: (){
                      BlocProvider.of<AuthenticationBloc>(
                                                                              context)
                                                                          .add(LoggedOut());
                    },
                    child: Text('SALIR',style: TextStyle(color:Color(0xff0A183D),fontSize: 16,fontWeight: FontWeight.bold),))
                  ],
                ),
                Icon(Icons.verified,color: Colors.orange,size: (isMobile) ? 36 : (isTablet) ? 48 : 64,),
                SizedBox(height:20),
                Text('¡Enhorabuena!', style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? size.width/17.5 : size.width/22.76, fontWeight:FontWeight.bold  ),),
                SizedBox(height:10),
                Text((!isPremium) ? 'Ya tienes activado el premium mensual en tu cuenta y estás inscrito en el sorteo' : 'Ya estás inscrito en el sorteo',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                // SizedBox(height:10),
                // Text('Si quieres estar al tanto de todas las novedades de la aplicación y/o consultarnos tus dudas, te recomendamos que nos sigas en instagram o te unas a nuestra comunidad gratuita de telegram',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                // SizedBox(height:10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [InkWell(
                //     onTap: ()async{

                //        if (await canLaunch("https://t.me/joinchat/R1UgehcnmgHM3xL7l-VVog")) {
                //            await launch("https://t.me/joinchat/R1UgehcnmgHM3xL7l-VVog");}


                //     },
                //     child: Icon(FontAwesomeIcons.telegram,color: Colors.blue,size:(isMobile) ? 24 : (isTablet) ? 32 : 48 ,)),SizedBox(width: 20,),
                //     InkWell(
                //       onTap: () async{

                //          if (await canLaunch("https://www.instagram.com/entrenaapp/?hl=es")) {
                //            await launch("https://www.instagram.com/entrenaapp/?hl=es");}

                //       },
                //       child: Icon(FontAwesomeIcons.instagram,color: Colors.pink,size:(isMobile) ? 24 : (isTablet) ? 32 : 48 ))],),
                SizedBox(height:30),
                Text('¿Te gustaría ayudarnos?',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 16 : 18, fontWeight: FontWeight.bold ),),
                SizedBox(height:10),
                Text('Como sabes un proyecto de este tipo necesita del apoyo de gente como tú. Por ello, puedes ayudarnos simplemente dejándonos una reseña en las tiendas de aplicaciones. ¡Te lo agradecemos!',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                SizedBox(height:10),
                
            
                                                               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      InkWell(
                      onTap: () async{
                    if (await canLaunch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US")) {
                           await launch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US");}

                  },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
                           decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      BoxShadow(color: Color(0xff0A183D), spreadRadius: 2),
    ],
  ),
                                            child: Row(
                        children: [
                          Text('Google Play'),
                          SizedBox(width: 10,),
                          Icon(FontAwesomeIcons.googlePlay,color:Colors.green ,size:(isMobile) ? 16 : (isTablet) ? 24 : 32 ,),
                        ],
                      ),
                                          ),
                    ),
                    SizedBox(width: (isMobile) ? 20 : 30,),
                    
                    InkWell(
                      onTap: () async{
                         if (await canLaunch("https://apps.apple.com/us/app/entrenaapp/id1533801846")) {
                           await launch("https://apps.apple.com/us/app/entrenaapp/id1533801846");}
                      },
                      child: Container(
                                 padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
                           decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      BoxShadow(color: Color(0xff0A183D), spreadRadius: 2),
    ],
  ),
                        child: Row(
                                     children: [
                            Text('App Store'),
                            SizedBox(width: 10,),
                            Icon(FontAwesomeIcons.appStore,color: Colors.blue,size:(isMobile) ? 16 : (isTablet) ? 24 : 32 )
                          ],
                        ),
                      ),
                    ),],),
                                
             
                SizedBox(height:20),
                Text('Si además te gustaría que este proyecto siga creciendo día a día y pueda ayudar a mucha mas gente como tú, considera comprarnos un café. More coffe more and better work :)',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                SizedBox(height:10),
                BuyCoffeButton(),
                SizedBox(height:20),
                Container(
                width: (isMobile) ? size.width-20 : (isTablet) ? size.width-125 : size.width-250 ,
                alignment: Alignment.centerLeft,
                child: Text('Por último...',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 14 : 16, fontWeight: FontWeight.bold ),)),
                SizedBox(height:10),
                (!isMobile && !isTablet) ?
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recuerda que sólo ahora puedes conseguir el premium VITALICIO en la aplicación (con todas las funcionalidades actuales y las futuras que iremos añadiendo) por un precio ÚNICO.',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                        Text('**Este premium se asociara a la cuenta con la que has iniciado sesión.',
                                          style: TextStyle(
      color: Color(0xff0A183D),
      fontSize: (isMobile ? 10 : (isTablet) ? 12 : 16.0),
   
  ),),
                        ],
                      )),
                   SizedBox(width:5),
                                    GFButton(
    onPressed: ()  async{

      return redirectToCheckout(context);},
    color: Color(0xFFFF813F),
   
            
    boxShadow: 
              BoxShadow(
                color: Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1),
              )
            ,
       
     
    padding: EdgeInsets.symmetric(horizontal:16,vertical:4),
    text: "Comprar - 60€",
    icon: Icon(Icons.shopping_cart),
  ),
                  ],
                ) : 
                  Column(
                    
                  children: [
                    Container(
                   
                      child: Text('Recuerda que sólo ahora puedes conseguir el premium VITALICIO en la aplicación (con todas las funcionalidades actuales y las futuras que iremos añadiendo) por un precio ÚNICO.',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),)),
                    Text('**Este premium se asociara a la cuenta con la que has iniciado sesión.',
                                          style: TextStyle(
      color: Color(0xff0A183D),
      fontSize: (isMobile ? 10 : (isTablet) ? 12 : 16.0),
   
  ),),
                   SizedBox(height:5),
                                    GFButton(
    onPressed: ()  async{

      return redirectToCheckout(context);},
    color: Color(0xFFFF813F),
   
            
    boxShadow: 
              BoxShadow(
                color: Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1),
              )
            ,
       
     
    padding: EdgeInsets.symmetric(horizontal:16,vertical:4),
    text: "Comprar - 60€",
    icon: Icon(Icons.shopping_cart),
  ),
                  ],
                )
                ,
              ],
            ),
        )

      ),
         ),
    );
  }
}