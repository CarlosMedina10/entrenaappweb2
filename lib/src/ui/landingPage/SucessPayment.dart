
import 'package:entrenaapp/src/repository/user_repository.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';




class Success  extends StatefulWidget {
 final UserRepository userRepository;
 final String sessionId;
Success(this.userRepository,this.sessionId);
  @override
  _SuccesState createState() => _SuccesState();
}

class _SuccesState extends State<Success> {
  String userID;
 
 @override
  void initState() {
      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
      _prefs.then((value) {

         print(widget.sessionId + 'hola'); 
 
       userID= value.getString('userID');
    widget.userRepository.userPremiumStripe(userID, widget.sessionId);
    widget.userRepository.darPremiumGratuito(userID,isYear:true);
      });


    super.initState();
  }
  
  
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
                       Navigator.pop(context);


                    }, icon:Icon(Icons.arrow_back,color: Color(0xff0A183D),)),
                  SizedBox(width:15),
                  InkWell(
                    onTap: (){
                       Navigator.pop(context);
            //           Navigator.of(context).push(
            // MaterialPageRoute(builder: (context){
             
            //   return 
            //   HomePage(widget.userRepository,);}));
                    },
                    child: Text('SALIR',style: TextStyle(color:Color(0xff0A183D),fontSize: 16,fontWeight: FontWeight.bold),))
                  ],
                ),
                Icon(Icons.verified,color: Colors.orange,size: (isMobile) ? 36 : (isTablet) ? 48 : 64,),
                SizedBox(height:20),
                Text('¡Enhorabuena!', style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? size.width/17.5 : size.width/22.76, fontWeight:FontWeight.bold  ),),
                SizedBox(height:10),
                Text('Ya tienes activado el premium para siempre en tu cuenta',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                SizedBox(height:10),
                Text('Si quieres estar al tanto de todas las novedades de la aplicación y/o consultarnos tus dudas, te recomendamos que nos sigas en instagram o te unas a nuestra comunidad gratuita de telegram',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [InkWell(
                    onTap: ()async{

                       if (await canLaunch("https://t.me/joinchat/R1UgehcnmgHM3xL7l-VVog")) {
                           await launch("https://t.me/joinchat/R1UgehcnmgHM3xL7l-VVog");}


                    },
                    child: Icon(FontAwesomeIcons.telegram,color: Colors.blue,size:(isMobile) ? 24 : (isTablet) ? 32 : 48 ,)),SizedBox(width: 20,),
                    InkWell(
                      onTap: () async{

                         if (await canLaunch("https://www.instagram.com/entrenaapp/?hl=es")) {
                           await launch("https://www.instagram.com/entrenaapp/?hl=es");}

                      },
                      child: Icon(FontAwesomeIcons.instagram,color: Colors.pink,size:(isMobile) ? 24 : (isTablet) ? 32 : 48 ))],),
                // SizedBox(height:30),
                // Text('¿Te gustaría ayudarnos?',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 16 : 18, fontWeight: FontWeight.bold ),),
                // SizedBox(height:10),
                // Text('Como sabes un proyecto de este tipo necesita del apoyo de gente como tú. Por ello, puedes ayudarnos simplemente dejándonos una reseña en las tiendas de aplicaciones. ¡Te lo agradecemos!',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                // SizedBox(height:10),
                // InkWell(
                //   onTap: () async{
                //     if (await canLaunch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US")) {
                //            await launch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US");}

                //   },
                //                 child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [Row(
                //       children: [
                //         Text('Google Play'),
                //         SizedBox(width: 10,),
                //         Icon(FontAwesomeIcons.googlePlay,color:Colors.green ,size:(isMobile) ? 16 : (isTablet) ? 24 : 32 ,),
                //       ],
                //     ),
                //     SizedBox(width: (isMobile) ? 20 : 30,),
                    
                //     InkWell(
                //       onTap: () async{
                //          if (await canLaunch("https://apps.apple.com/us/app/entrenaapp/id1533801846")) {
                //            await launch("https://apps.apple.com/us/app/entrenaapp/id1533801846");}
                //       },
                //       child: Row(
                //                  children: [
                //           Text('App Store'),
                //           SizedBox(width: 10,),
                //           Icon(FontAwesomeIcons.appStore,color: Colors.blue,size:(isMobile) ? 16 : (isTablet) ? 24 : 32 )
                //         ],
                //       ),
                //     ),],),
                // ),
                // SizedBox(height:20),
                // Text('Si además te gustaría que este proyecto siga creciendo día a día y pueda ayudar a mucha mas gente como tú, considera comprarnos un café. More coffe more and better work :)',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
                // SizedBox(height:10),
                // BuyCoffeButton(),
                // SizedBox(height:20),
                // Container(
                // width: (isMobile) ? size.width-20 : (isTablet) ? size.width-125 : size.width-250 ,
                // alignment: Alignment.centerLeft,
                // child: Text('Por último...',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 14 : 16, fontWeight: FontWeight.bold ),)),
                // SizedBox(height:10),
                // Text('Me gustaría ofrecerte algo único y que solamente va a estar disponible esta semana. Queremos ofrecerte el premium VITALICIO en la aplicación (con todas las funcionalidades actuales y las futuras que iremos añadiendo) por un precio ÚNICO.',style: TextStyle(color:Color(0xff0A183D),fontSize:(isMobile || isTablet) ? 12 : 16,  ),),
              ],
            ),
        )

      ),
         ),
    );
  }
}