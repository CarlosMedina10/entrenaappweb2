


import 'package:entrenaappweb/blocs/CardBloc/card_bloc.dart';
import 'package:entrenaappweb/blocs/LandingPageBloc/landingpage_bloc.dart';
import 'package:entrenaappweb/src/ui/landingPage/CustomCard.dart';



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../widgets/RoundedButton.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Style/Style.dart';

import 'package:url_launcher/url_launcher.dart';





class LandingPage extends StatefulWidget {
  final bool isOnPrincipal;
  final List<Map<String, String>> isInit;
  LandingPage(this.isOnPrincipal,this.isInit);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin {

  bool card1 =false;
  bool card2 = false;
  bool card3=false;
  bool card4=false;
  int numeroTarjetas=0;
  var cardIndex = 0;
  var cardIndex2 = 0;
  ScrollController scrollController;
  ScrollController scrollController2;


  AnimationController animationController;
  AnimationController animationController2;
  ColorTween colorTween;
  ColorTween colorTween2;
  CurvedAnimation curvedAnimation;
  CurvedAnimation curvedAnimation2;

  @override
  void initState() {
    super.initState();
  
    scrollController = new ScrollController();
    scrollController2 = new ScrollController();
    
  }
  Widget _buildFrontWidget(BuildContext context,String text, bool isMobile,isTablet,CardState state,int numeroTarjeta) {
    return Container(
       width: MediaQuery.of(context).size.width*0.85 ,
         padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 16, vertical: isMobile ? 8 : 16),
        color: Color(0xff0A183D),
        alignment: Alignment.center,
        child: Row(
         
          children: <Widget>[
           (state is TarjetaDeVuelta && state.numeroTarjeta==numeroTarjeta  ) ?   InkWell(
                onTap: (){
                   BlocProvider.of<CardBloc>(
                                                                          context)
                                                                      .add(DarVuelta(numeroTarjeta, false));
                },
               child: Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 32,)) : InkWell(
             onTap: (){
                    BlocProvider.of<CardBloc>(
                                                                          context)
                                                                      .add(DarVuelta(numeroTarjeta, true));
             },
             child: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 32 ,)),
            SizedBox(width:8),
            Container(
           
               width:   MediaQuery.of(context).size.width*0.85-80,
              child: Text(text,
                  style: TextStyle(
                      color: Colors.white,
                     fontSize:(isMobile) ? 12 : 14,
                     )),
            ),
            
          
            
          ],
        ));
  }

  

  Widget _buildInnerBottomWidget(String text, bool isMobile,isTablet) {
   return Container(
  
     width: MediaQuery.of(context).size.width*0.85,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 16, vertical: isMobile ? 8 : 16),
        color: Color(0xff1c3546),
        alignment: Alignment.center,
        child: Row(
          
          children: <Widget>[
            Container(
           
              width: MediaQuery.of(context).size.width*0.85-45 ,
              child: Text(text,
                  style: TextStyle(
                      color: Colors.white,
                     
                      fontSize:(isMobile) ? 12 : 14,
                     )),
            ),
            
          
            
          ],
        ));
  }


  Widget customCheckBox(String text, bool value,){
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         (isTablet || isMobile) ? Icon(Icons.check,color: Colors.orange,) : Checkbox(
              activeColor: Colors.orange, value: value, onChanged: (value) {}),
          SizedBox(
            width: 16.0,
          ),
          Container(
           
            width: (isMobile|| isTablet) ? MediaQuery.of(context).size.width*0.65 : MediaQuery.of(context).size.width*0.3,
            child: Text(
                text,
                style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? MediaQuery.of(context).size.width/35 : (isTablet) ? MediaQuery.of(context).size.width/60 : MediaQuery.of(context).size.width/76, 
    fontWeight: FontWeight.w600
  ),
                
                maxLines: 1,
              ),
          ),
        ],
      ),
    );
  }

  Widget customCard( img, bool isMobile,isTablet,{text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
         
          decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(16.0), color: Colors.teal),
          height: 
            (text!=null) ?
          (isMobile) ? 173 : (isTablet) ? (MediaQuery.of(context).size.height<500) ? 173 : MediaQuery.of(context).size.height/2.875 :  (MediaQuery.of(context).size.height<500) ? 228 :  MediaQuery.of(context).size.height/2.19 :
           (isMobile) ? 200 : (isTablet) ? (MediaQuery.of(context).size.height<500) ? 205 : MediaQuery.of(context).size.height/2.38  :  (MediaQuery.of(context).size.height<500) ? 266 : MediaQuery.of(context).size.height/1.877
          ,
          
          width:
          (text!=null) ?
           (isMobile) ? 173 : (isTablet) ?(MediaQuery.of(context).size.height<500) ? 173 : MediaQuery.of(context).size.height/2.875 : (MediaQuery.of(context).size.height<500) ? 228 : MediaQuery.of(context).size.height/2.19:
           (isMobile) ? MediaQuery.of(context).size.width-64 : (isTablet) ? (MediaQuery.of(context).size.height<500) ? 285 : MediaQuery.of(context).size.height/1.75 :  (MediaQuery.of(context).size.height<500) ? 362 : MediaQuery.of(context).size.height/1.38 ,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
     (text!=null) ?  Text(
          text,
          style: ThemText.cardText,
        ) :  (isMobile) ?  Text(
                              "** Desliza para ver mas",
                              style: TextStyle(
    color: Color(0xff0A183D),
     fontSize: (isMobile) ? 12 : (isTablet) ? 14 : 16,
   
  ),) : Container(height:1)
      ],
    );
  }

  
Widget _buildFotos(bool isMobile, isTablet) {
  List<String> listaNombres = ['Juan','Richard','Kilian','Adrian','Jonathan','Adrian','Carlos','Jandro'];
    return Container(

     alignment: Alignment.topCenter,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 8,
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
         
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard('${position+1}-min.jpg' ,isMobile,isTablet,widget.isInit,text:'${listaNombres[position]}'),
            ),
            onHorizontalDragEnd: (details) {
              animationController = AnimationController(
                  vsync: this, duration: Duration(milliseconds: 500));
              curvedAnimation = CurvedAnimation(
                  parent: animationController, curve: Curves.fastOutSlowIn);
              // animationController.addListener(() {
              //   setState(() {
              //     currentColor = colorTween.evaluate(curvedAnimation);
              //   });
              // });

              if (details.velocity.pixelsPerSecond.dx > 0) {
                if (cardIndex > 0) {
                  cardIndex--;
                  // colorTween = ColorTween(begin:currentColor,end:appColors[cardIndex]);
                }
              } else {
                if (cardIndex < 7) {
                  cardIndex++;
                  // colorTween = ColorTween(begin: currentColor,
                  //     end: appColors[cardIndex]);
                }
              }
              setState(() {
                scrollController.animateTo((cardIndex) * 256.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              });

              // colorTween.animate(curvedAnimation);

              animationController.forward();
            },
          );
        },
      ),
    );
  }
  Widget _buildFotos2(bool isMobile,isTablet) {
 
    return Container(

      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        controller: scrollController2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
         
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child:  customCard( "assets/images/R${position+1}.PNG",isMobile,isTablet
                 ),
            ),
            onHorizontalDragEnd: (details) {
              animationController2 = AnimationController(
                  vsync: this, duration: Duration(milliseconds: 500));
              curvedAnimation2 = CurvedAnimation(
                  parent: animationController2, curve: Curves.fastOutSlowIn);
              // animationController.addListener(() {
              //   setState(() {
              //     currentColor = colorTween.evaluate(curvedAnimation);
              //   });
              // });

              if (details.velocity.pixelsPerSecond.dx > 0) {
                if (cardIndex > 0) {
                  cardIndex--;
                  // colorTween = ColorTween(begin:currentColor,end:appColors[cardIndex]);
                }
              } else {
                if (cardIndex < 7) {
                  cardIndex++;
                  // colorTween = ColorTween(begin: currentColor,
                  //     end: appColors[cardIndex]);
                }
              }
              setState(() {
               (isMobile) ? scrollController2.animateTo((cardIndex) *  (MediaQuery.of(context).size.width-64),
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn)
           :  scrollController2.animateTo((cardIndex) * 256.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              });

              // colorTween.animate(curvedAnimation);

              animationController2.forward();
            },
          );
        },
      ),
    );
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
    print(size.height);
    print(size.width);

       if (isMobile || isTablet)
            {
              BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantMobileOrTablet(true,false,false,false));
            }
            if (!isMobile && !isTablet && widget.isOnPrincipal)
            {
     BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(true, false, false,false));
            }
    return SingleChildScrollView(
      child: 
      
      
      Container(
        color: Color(0xff0A183D),
        child: Column(
          children: [
            //Home Music for everyone
            (isMobile) ?
            Container(
            
                height: (size.height>500) ? size.height*2.8/8 : 175,
                    width:  size.width,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Image(
                        image: AssetImage("assets/images/DisenoFondo2.jpg"),
                      ),
                    ),
                  ) : Container(),
            Container(
              height: (isMobile) ? (size.height>500) ? size.height*5.2/8 : 325 : (size.height>500) ? size.height : 500,
              width: size.width,
           
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                     width: (isMobile==false) ? (isTablet==false) ? size.width/2 : size.width*5/8 : size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                      
                          padding: EdgeInsets.only(left:size.width * 0.05),
                          alignment: Alignment.centerLeft,
                          width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                              
                                children: [
                                  Text(
                                    "Entrena ",
                                    style: TextStyle(
    color: Colors.white,
      fontSize: (isMobile || isTablet) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                                  ),
                                  Text(
                                    "con",
                                    style: TextStyle(
    color: Colors.white,
      fontSize: (isMobile || isTablet) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                                  ),
                                ],
                              ),
                              Text(
                                "EntrenaAPP",
                            
                                 style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile || isTablet) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                              ),
                              SizedBox(height:10),
                        Container(
                          width: size.width/8,
                          child: Divider(color:Colors.orange,thickness: 1.0,)),
                            ],
                          ),
                        ),
                        SizedBox(height: (isMobile) ? 5 : 10),
                        Container(
                       
                           padding: EdgeInsets.only(left:size.width * 0.05,right: size.width * 0.03),
                            width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                            alignment: Alignment.center,
                            child: Wrap(
                              children: [
                                Text(
                                  "La única plataforma de entrenamiento que de forma gratuita te lo va a poner todo más fácil. Tan solo tienes que preocuparte por disfrutar de un entrenamiento 100% adaptado a ti y tus objetivos. Pero EntrenaAPP no es solo una aplicación de entrenamiento personalizado, también dispones de un equipo humano para ayudarte a solucionar todas las dudas que puedas tener.",
                                  style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16,

    letterSpacing: (isMobile) ? null : (isTablet) ? 0.5 : 1.0, 
  ),
                                ),
                              ],
                            )),
                            SizedBox(height:size.height*0.025),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                                  "¡DESCARGALA YA!",
                              
                                   style: TextStyle(
    color: Colors.white,
    fontSize:  size.width/30,
    fontWeight: FontWeight.w700,
  ) ,),
                        ),
                        Container(
                       
                         
                           width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async{
                                    if (await canLaunch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US")) {
                         await launch("https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es&gl=US");
                               }
                                },
                                                              child: Container(
                    width:(isMobile ) ? 100 : (isTablet ) ? 150 : 150,
                    alignment: Alignment.center,
                    child: Image(
                            image:  AssetImage("assets/images/1.png"),
                    ),
                  ),
                              ),
                               InkWell(
                                  onTap: () async{
                                    if (await canLaunch("https://apps.apple.com/us/app/entrenaapp/id1533801846")) {
                         await launch("https://apps.apple.com/us/app/entrenaapp/id1533801846");
                               }
                                },
                                                                child: Container(
                     width:(isMobile ) ? 100 : (isTablet ) ? 150 : 160,
                    alignment: Alignment.center,
                    child: Image(
                            image:  AssetImage("assets/images/2.png"),
                    ),
                  ),
                               ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
               (!isMobile) ?
                  Container(
                    width:  (isTablet==false) ? size.width / 2 : size.width*3/8,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Image(
                        image: (isTablet) ?  AssetImage("assets/images/DisenoFondo.jpg") : AssetImage("assets/images/DisenoFondo2.jpg"),
                      ),
                    ),
                  ) : Container(), 
                ],
              ),
            ),

            //Unlimited Access
            Container(

              height: (size.height>500) ? size.height : 500,
              width: size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                           
                            width:  size.width  ,
                          alignment: Alignment.center,
                          child: Text(
                                  "RUTINA DE ENTRENAMIENTO",
                              
                                   style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,),),
                      
                        Container(
                            width:  size.width  ,
                          alignment: Alignment.center,
                          child: Text(
                                  "100 % personalizada",
                              
                                   style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,),),
  SizedBox(height: (isMobile) ? 20 : isTablet ? 25 : 40),
                  Row(
                    children: [
                      Container(
                       
                        alignment: Alignment.center,
                          width: (isMobile || isTablet) ? size.width :  size.width / 2 ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          
                             Container(
                         height:  (isMobile) ? (size.height<500) ? 200 : size.height*0.4 : (size.height<500) ? 275 :  size.height * 0.55,
                        width: (isMobile||isTablet) ? size.width : size.width / 2 ,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(
                            image: AssetImage("assets/images/ImagenApp.jpg"),
                          ),
                        ),
                      ) ,
                           (isMobile || isTablet) ? Container(
                        width:  size.width,
                        child: Wrap(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "Todos nuestros entrenamientos son específicos y personalizados para cada usuario en función de sus características y objetivos personales. Y no solo eso, sino que un sistema autorregulable modificará tu entrenamiento mensual en función de tu progreso y recuperación. ¡Pruébalo!",
                                style:  TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16,
    wordSpacing: (isMobile) ? null : (isTablet) ? 1 : 1.75,
    letterSpacing: (isMobile) ? null : (isTablet) ? 1 : 1.75,
 
  ),
                              ),
                            ),
                          ],
                        ),
                      ) : Container()
                          ],
                        ),
                      ),
                     (isMobile || isTablet) ? Container() : Container(
                        width: (isMobile==false) ? size.width / 2 : size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    "Todos nuestros entrenamientos son específicos y personalizados para cada usuario en función de sus características y objetivos personales. Y no solo eso, sino que un sistema autorregulable modificará tu entrenamiento mensual en función de tu progreso y recuperación. ¡Pruébalo!",
                                    style: ThemText.describtionTex,
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 22.0,
                            // ),
                            // RoundedButton(
                            //   color: Color(0xffF24854),
                            //   textTitle: "try it now",
                            // ),
                          ],
                        ),
                      ) 
                    ],
                  ),
                ],
              ),
            ),
        (!isMobile && !isTablet) ? 
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: (size.height<500) ? 500 : size.height,
                  width: size.width*0.5,
                  color: Color(0xff0A183D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                 EdgeInsets.only(left: size.width/45),
                            child: Wrap(
                              children: [
                                Text(
                                  
                                  "Plan gratuito",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
    color: Colors.white,
    fontSize: size.width/60,   
    fontWeight: FontWeight.w600,
  
  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                    width:size.width/6,
                    alignment: Alignment.center,
                    child: Image(
                            image:  AssetImage("assets/images/3.png"),
                    ),
                  ),
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xff1B2949),
                  child: Container(
                    alignment: Alignment.center,
                    height: (size.height<500) ? 300 : MediaQuery.of(context).size.height * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customCheckBox('Entrenamiento a tu nivel,objetivos y material', true,),
                          customCheckBox('Acceso a la comunidad', true,),
                          customCheckBox('Registro de progresos en la agenda **', true,),
                          customCheckBox('Visualización de estadisticas **', true,),
                          customCheckBox('Página de detalle de ejercicios **', true,),
                          customCheckBox('Selección de ejercicios por patrones de mvto **', true,),
                          customCheckBox('Crear tu entrenamiento desde 0 **', true,),
                          SizedBox(height:10),
                          Text('** Gastando puntos',style: TextStyle(color:Colors.white),)
                         
                        ],
                      ),
                    ),
                  ),
                  ),
                  ),
                      Padding(
                        padding:
                                 EdgeInsets.only(left: size.width/45),
                        child: Wrap(
                          children: [
                            Text(
                              "Más de 4000 usuarios.",
                              style: TextStyle(
    color: Colors.orange,
     fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                 
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: (size.height<500) ? 500 : size.height,
                  width: size.width*0.5,
                  color: Color(0xff0A183D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: size.width/45),
                            child: Wrap(
                              children: [
                                Text(
                                  
                                  "Subscripción mensual desde 2.49€/mes",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
    color: Colors.white,
    fontSize: size.width/60,   
    fontWeight: FontWeight.w600,
  
  ),
                                ),
                              ],
                            ),
                          ),
                        Container(
                    width:size.width/6,
                    alignment: Alignment.center,
                    child: Image(
                            image:  AssetImage("assets/images/4.png"),
                    ),
                  ),
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xff1B2949),
                  child: Container(
                    alignment: Alignment.center,
                    height: (size.height<500) ? 300 : MediaQuery.of(context).size.height * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customCheckBox('Funcionamiento sin conexión a internet', true,),
                          customCheckBox('Gestión de la fatiga', true,),
                          customCheckBox('Reuniones para resolver dudas', true,),
                          customCheckBox('Sin gasto de puntos', true,),
                          customCheckBox('Sin publicidad', true,),
                         
                        ],
                      ),
                    ),
                  ),
                  ),
                  ),
                      Padding(
                        padding:
                                 EdgeInsets.only(left: size.width/45),
                        child: Wrap(
                          children: [
                            Text(
                              "Prueba gratis las dos primeras semanas",
                              style: TextStyle(
    color: Colors.orange,
    fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                 
                    ],
                  ),
                ),
              ],
            ) :
            
            
            
            
            
            
            
            
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: (size.height<500) ? 252 : size.height*0.5,
                  width: size.width,
                  color: Color(0xff0A183D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                 EdgeInsets.only(left: size.width/45),
                            child: Wrap(
                              children: [
                                Text(
                                  
                                  "Plan gratuito",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? 16 : (isTablet) ? 18 : size.width/70,   
    fontWeight: FontWeight.w600,
  
  ),
                                ),
                              ],
                            ),
                          ),
                         
                     
              SizedBox(width:20),
                     Text(
                              "** Con gasto de puntos",
                              style: TextStyle(
    color: Colors.white,
     fontSize: (isMobile) ? 12 : (isTablet) ? 14 : 16,
   
  ),)
                      
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xff1B2949),
                  child: Container(
                     
                    height: (size.height<500) ? 200 : size.height * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customCheckBox('Entrenamiento a tu nivel,objetivos y material', true,),
                          customCheckBox('Acceso a la comunidad', true),
                          customCheckBox('Registro de progresos en la agenda **', true,),
                          customCheckBox('Visualización de estadisticas **', true),
                          customCheckBox('Página de detalle de ejercicios **', true,),
                          customCheckBox('Selección de ejercicios por patrones de mvto **', true),
                          customCheckBox('Crear tu entrenamiento desde 0 **', true,),
                          SizedBox(height:8),
                          Container(
                            width: size.width-42-size.width/45,
                            alignment: Alignment.center,
                            child: Text(
                                "Más de 4000 usuarios.",
                                style: TextStyle(
    color: Colors.orange,
     fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),
                              ),
                          ),
                          
                         
                        ],
                      ),
                    ),
                  ),
                  ),
                  ),
                    
                     
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: (size.height<500) ? 252 : size.height*0.5,
                  width: size.width,
                  color: Color(0xff0A183D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: size.width/45),
                            child: Wrap(
                              children: [
                                Text(
                                  
                                  "Subscripción mensual desde 2.49€/mes",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
    color: Colors.white,
         fontSize: (isMobile) ? 16 : (isTablet) ? 18 : size.width/70, 
    fontWeight: FontWeight.w600,
  
  ),
                                ),
                              ],
                            ),
                          ),
                       
                    
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xff1B2949),
                  child: Container(
                    
                    height: (size.height<500) ? 200 : size.height * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          customCheckBox('Funcionamiento sin conexión a internet', true,),
                          customCheckBox('Gestión de la fatiga', true,),
                          customCheckBox('Reuniones para resolver dudas', true,),
                          customCheckBox('Sin gasto de puntos', true,),
                          customCheckBox('Sin publicidad', true,),
                          SizedBox(height:8),
                                  Container(
                                width: size.width-42-size.width/45,
                                alignment: Alignment.center,
                                child: Text(
                                    "Prueba las dos primeras semanas gratis",
                                    style: TextStyle(
    color: Colors.orange,
     fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),
                                  ),
                              ),
                              
                          
                         
                        ],
                      ),
                    ),
                  ),
                  ),
                  ),
                     
                 
                    ],
                  ),
                ),
              ],
            )
            
            
            
            ,
          Container(
              alignment: Alignment.center,
              height: (size.height<500) ? 500 : size.height,
              width: size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width/2,
                              child: Text(
                                "PREPARACIÓN PROFESIONAL",
                                style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 :  size.width/22.76,   
    fontWeight: FontWeight.w700,
    letterSpacing: 0.75,
  ),
  
                              ),
                            ),
                           Text(
                              "ONE-TO-ONE",
                              style: TextStyle(
    color: Color(0xff0A183D),
     fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 :  size.width/22.76,  
    fontWeight: FontWeight.w700,
    letterSpacing: 0.75,
  ),
  
                            ),
                            SizedBox(
                              height: 18.0,
                            ),
                           
                        Container(
                          width: size.width/8,
                          child: Divider(color:Colors.orange,thickness: 1.0,)),
                           SizedBox(height:18),
                             Text(
                               "Para solicitar una plaza en mi equipo y disponer de un asesoramiento y seguimiento mas personal no dudes en ponerte en contacto conmigo. Pondré mis ganas y años de experiencia a tu servicio para que progreses de la forma mas eficiente.",
                               style:TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 :  16,  
    
  ),
                             ),
                            
                            SizedBox(
                              height: 25,
                            ),
                            
                            RoundedButton(
                              color: Color(0xff0A183D),
                              textTitle: 'Solicitar información',
                              isMobile: isMobile,
                              isTablet: isTablet,
                            ),
                          (isMobile) ? Row(
                            children: [
                              Container(
                    height: (size.height<500) ? 160 :  size.height/3.125,
                    width:size.width/3,
                    alignment: Alignment.center,
                    child: Image(
                                image:  AssetImage("assets/images/MostMuscular.jpg"),
                    ),
                  ),
                  SizedBox(
                    width:size.width/12
                  ),
                   Container(
                    height: (size.height<500) ? 160 :  size.height/3.125,
                    width:size.width/3,
                    alignment: Alignment.center,
                    child: Image(
                                image:  AssetImage("assets/images/B99A0068.jpg"),
                    ),
                  ),
                            ],
                          ) : Container (),
                          ],
                        ),
                      ),
                    ),
                  ),
               (!isMobile) ? Container(
                    width:size.width/3,
                    alignment: Alignment.center,
                    child: Image(
                            image:  AssetImage("assets/images/MostMuscular.jpg"),
                    ),
                  ) : Container (),
                      
                  
                ],
              ),
            ),
            //How it works
            // Container(
            //   height: size.height * 0.86,
            //   width: size.width,
            //   color: Color(0xff0A183D),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Container(
            //           width: size.width * 0.46,
            //           child: Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //             child: Text(
            //               "How it works",
            //               style: ThemText.whititleText,
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 48.0,
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             customFlexible(
            //               "Create an account",
            //               "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
            //               Icons.person_pin,
            //             ),
            //             customFlexible(
            //               "Choose a plan",
            //               "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
            //               Icons.queue_play_next,
            //             ),
            //             customFlexible(
            //               "Download Music",
            //               "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
            //               Icons.library_music,
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            //Our Concept
            Container(
              height: 
              (isMobile) ? 
               (size.height<500) ? 600 : size.height * 1.20 :
               (isTablet) ? 
                (size.height<500) ? 600 : size.height * 1.20 :
              (size.height<500) ? 800 : size.height * 1.60,
              width: size.width,
              color: Colors.white,
              child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:  1,
                      
                      child: Container(
                          child: Column(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Algunos casos de éxito",
                            style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 : size.width/22.76, 
    fontWeight: FontWeight.w700, 
  ),
                          ),
                          SizedBox(height:20),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "“Los clientes satisfechos son la mejor publicidad para una empresa”",
                              style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16.0,
    letterSpacing: 2.75,
  ),
                            ),
                          )
                        ],
                      )),
                    ),
                    Expanded(
                      flex:  4,
                      child: 
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height:(isMobile) ? (size.height<500) ? 240 : size.height*0.48 : (isTablet) ? (size.height<500) ? 240 : size.height*0.48 : (size.height<500) ? 320 : size.height*0.64,
                              child: _buildFotos(isMobile,isTablet)),
                            SizedBox(height:0),
                            Container(
                               height:(isMobile) ? (size.height<500) ? 240 : size.height*0.48 : (isTablet) ? (size.height<500) ? 240 : size.height*0.48 : (size.height<500) ? 320 : size.height*0.64,
                              child: _buildFotos2(isMobile, isTablet)),
                      
                          ],
                          
                        ),
                      )
                      // Container(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       Flexible(
                      //           flex: 1,
                      //           child:
                      //               customCard('Soul Music', 'images/pic2.jfif')),
                      //       Flexible(
                      //           flex: 1,
                      //           child: customCard(
                      //               'Live Concerts', 'images/pic3.jfif')),
                      //       Flexible(
                      //           flex: 1,
                      //           child: customCard('Dj Sets', 'images/pic4.jfif')),
                      //       Flexible(
                      //           flex: 1,
                      //           child: customCard(
                      //               'Live Streems', 'images/pic5.jfif')),
                      //     ],
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),
            ),

          
            Container(
              alignment: Alignment.center,
              height: (size.height<500) ? 800 : size.height*1.6,

            //   (isMobile||isTablet) ? 
            //   (numeroTarjetas==4) ?
            //   (size.height<500) ? 1150 : size.height*2.3 :
            //    (numeroTarjetas==3) ?
            //   (size.height<500) ? 1050 : size.height*2.1
            //   : 
            //  (numeroTarjetas==2) ?
            //   (size.height<500) ? 950 : size.height*1.9
            //   : 
            //   (numeroTarjetas==1) ?
            //   (size.height<500) ? 850 : size.height*1.7
            //   : 
            //   (size.height<500) ? 750 : size.height*1.5
            //   : 
            //   (card1 && card2 && card3 && card4) ?
            //   (size.height<600) ? 600 : size.height*1.2 :
            //   (size.height<500) ? 500 : size.height,
              width: size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36.0),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: (isMobile || (isTablet && size.height>580)) ? 25 : 5),
                            Container(
                              alignment: Alignment.center,
                              width:  size.width ,
                              child: Text(
                                "PREGUNTAS FRECUENTES",
                                style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? (size.height<580) ? size.width/22.76 : size.width/17.5 :  size.width/22.76,   
    fontWeight: FontWeight.w700,
    letterSpacing: 0.75,
  ),
  
                              ),
                            ),
                           
  
                            
                            SizedBox(
                              height: (isMobile) ? 12 : (isTablet && size.height<580) ? 16 : 18.0,
                            ),
                           
                        Center(
                          child: Container(
                          
                            width: size.width/4,
                            child: Divider(color:Colors.orange,thickness: 1.0,)),
                        ),
                           SizedBox(height:18),
                             Text(
                               "En EntrenaAPP tratamos de darte respuesta de las principales preguntas que suelen surgir para que no te quedes con ninguna duda y que tu experiencia con nosotros sea perfecta.",
                               style:TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 :  16,  
    
  ),
                             ),
                            
                            SizedBox(
                              height: (isMobile) ? 15 : (isTablet && size.height<580) ? 20 : 25,
                            ),
                            
                            // Center(
                            //   child: RoundedButton(
                            //     color: Color(0xff0A183D),
                            //     textTitle: 'Ver más',
                            //     isMobile: isMobile,
                            //     isTablet: isTablet,
                            //   ),
                            // ),
                             SizedBox(
                              height: 25 ,
                            ),
                    BlocProvider<CardBloc>(create: (context) => CardBloc(),
     
     
     
     
      child:BlocBuilder<CardBloc,CardState>(
           
            // // ignore: missing_return
            // buildWhen: (previousState, state) =>
            //  // ignore: unnecessary_statements
            //  ( state is IsMobileOrTablet ||  (state is IsDesktop && !state.isOnContactanos)), 
             
    // return true/false to determine whether or not
    // to rebuild the widget with state
  
          
          builder:(BuildContext context, CardState state){
  
          return     
          Container(
            
          height: (size.height<500) ? 600 :size.height*1.2,
            child: ListView(
              
              children: [
                Center(child: _buildFrontWidget( context,"¿Dónde debo realizar el entrenamiento?",isMobile,isTablet,state,1)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==1) ? Center(child: _buildInnerBottomWidget("En cualquier lugar (gimnasio o en tu casa por ejemplo) que tenga un equipamiento razonable. No tienes porque tener toda la maquinaria ya que, en cada patrón de movimiento, vas a poder elegir los ejercicios que mejor se adapten a ti y al material que dispones para que puedas disponer de un programa específico de entrenamiento para mejorar la composición corporal.",isMobile,isTablet)) : Container(height: 1,),
               
               
               Center(child: _buildFrontWidget( context,"¿En cuánto tiempo se empiezan a notar los resultados?",isMobile,isTablet,state,2)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==2) ? Center(child: _buildInnerBottomWidget("La progresión de cargas es semanal, por lo que, a nivel numérico y objetivo, empiezas a ver resultados desde la primera semana. En cuanto a peso en la báscula,perimetros corporales y plieges cutáneos, ya sea el objetivo incrementar o disminuir,con una buena alimentación también mejoras desde la primera semana.A nivel visual ya es mas complicado decir fechas ya que es algo relativo,dependera mucho del nivel de partida y de lo bien que se haga el entrenamiento y alimentación. Aun asi,en plazos de 16-20 semanas de entrenamiento haciendo bien las cosas deberiamos ver cambios por lo general.",isMobile,isTablet)) : Container(height: 1,),
               
               Center(child: _buildFrontWidget( context,"¿Para quién es este tipo de entrenamiento?",isMobile,isTablet,state,3)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==3) ? Center(child: _buildInnerBottomWidget("Este tipo de entrenamiento va dirigido a aquellas personas que quieren obtener una mejora física, independientemente de cual sea su nivel, ya que de detectar ese nivel se encargara la aplicación y a partir de ahí, comenzará su progresión específica. Te aseguro que no hay dos entrenamientos iguales.",isMobile,isTablet)) : Container(height: 1,),

               Center(child: _buildFrontWidget( context,"¿Cómo puedo saber qué entrenamiento es el que más me conviene?",isMobile,isTablet,state,4)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==4) ? Center(child: _buildInnerBottomWidget("El entrenamiento dependerá siempre de las necesidades, objetivos y disponibilidad de cada usuario. Para descubrirlo, realizaremos un cuestionario previo que nos indicará cual es el entrenamiento inicial recomendando y, a partir de ahí, estableceremos una progresión, tanto semana a semana dentro del mesociclo de entrenamiento, con mes a mes.",isMobile,isTablet)) : Container(height: 1,),
               
               Center(child: _buildFrontWidget( context,"¿Que pasa cuando acabo un mesociclo entrenamiento si he entrado en la fase de formación?",isMobile,isTablet,state,5)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==5) ? Center(child: _buildInnerBottomWidget("En este caso la aplicación ya tiene tu programación de 2 o 3 meses preparada hasta que asientes unas buenas bases, simplemente tendras que pulsar sobre el botón de crear un nuevo entrenamiento de la página principal,rellenar el formulario y ya tendras tu entrenamiento (mas demandante que el anterior).",isMobile,isTablet)) : Container(height: 1,),
                Center(child: _buildFrontWidget( context,"¿Que pasa cuando acabo un mesociclo entrenamiento si ya he pasado la fase de formación?",isMobile,isTablet,state,6)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==6) ? Center(child: _buildInnerBottomWidget("En el caso de que apruebes nuestro examen o de que ya hayas completado 2 o 3 meses con nuestra aplicación ya podemos considerar que estas preparado para entrenar con valores de MEV,MAV,MRV recomendados y programar en base a estos parametros, el feedback que le des a la aplicación y tus preferencias cada mes. Nosotros recomendamos mantener la base del entrenamiento unos meses y si acaso cambiar algunos ejercicios accesorios para poder tener una trazabilidad adecuada y poder saber si estamos progresando, cosa que es imposible si cambiamos constantemente de ejercicios (esto puedes hacer seleccionando en el cuestionario la opción de \"Seleccionar tu mismo los ejercicios en base a una estructura prefijada por un profesional\", buscando la estructura que tenias anteriormente y configurándola adecuadamente. Además recomendamos usar la opcion de gestión de la fatiga para hilar mas fino en los valores de MEV,MAV y MRV de tu mesociclo (esta opción es premium).",isMobile,isTablet)) : Container(height: 1,),
                Center(child: _buildFrontWidget( context,"¿En base a qué parémetros se programa la intensidad?",isMobile,isTablet,state,7)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==7) ? Center(child: _buildInnerBottomWidget("Programamos en base al RIR (repeticiones en recámara)",isMobile,isTablet)) : Container(height: 1,),
                Center(child: _buildFrontWidget( context,"¿Puedo llevar todo apuntado directamente en la aplicación o necesito seguir usando el papel y boli?",isMobile,isTablet,state,8)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==8) ? Center(child: _buildInnerBottomWidget("Cada ejercicio tiene su agenda en la que cada semana, para cada una de las series efectivas puedes apuntar la carga que has usado y las repeticiones que has realizado. Además, existe una página de detalle de cada ejercicio, donde puedes ver la ejecución, usar un cronómetro para los tiempos de descanso etc.",isMobile,isTablet)) : Container(height: 1,),
                Center(child: _buildFrontWidget( context,"¿Cuando acabo un mesociclo de entrenamiento se quedan guardados los datos?",isMobile,isTablet,state,9)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==9) ? Center(child: _buildInnerBottomWidget("Si, estos se guardan en la sección de historial.",isMobile,isTablet)) : Container(height: 1,),
               Center(child: _buildFrontWidget( context,"Oye, ¿y eso de que hay un equipo humano detrás?",isMobile,isTablet,state,10)),
               (state is TarjetaDeVuelta && state.numeroTarjeta==10) ? Center(child: _buildInnerBottomWidget("Más allá de la preparación ONE-TO-ONE, en la cual puedes tener contacto directo con Carlos, usándo solo la aplicación también puedes resolver tus dudas en la comunidad gratuita que tenemos, y además en el 2021 vamos a poner en marcha la sección de reuniones con un directo semanal para que puedas consultar en directo las dudas que tengas con tu preparación a Carlos y además aprender de las dudas que plantean otros usuarios.",isMobile,isTablet)) : Container(height: 1,),
              ],
            ),
          );
        

         
    
    }),)      
        
                        
                          ],
                        ),
                      ),
                    ),
                  ),
              
    
                  
                ],
              ),
            ),
            //Footer
         
         Container(
              height: size.height * 0.15,
              width: size.width,
              color: Color(0xff0A183D),
              child: Center(
                  child: Text(
                    "©2021 Una web creada por @carlos10medina",
                    style:  TextStyle(
        color: Colors.grey,
        fontSize: (isMobile) ? 12 : 14.0      
    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

}
