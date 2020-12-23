

import '../../../blocs/bloc/landingpage_bloc.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sliding_card/sliding_card.dart';
import '../../widgets/RoundedButton.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Style/Style.dart';

import 'package:url_launcher/url_launcher.dart';





class LandingPage extends StatefulWidget {
  final bool isOnPrincipal;
  LandingPage(this.isOnPrincipal);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin {
SlidingCardController controller ;
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
  controller = SlidingCardController();
    scrollController = new ScrollController();
    scrollController2 = new ScrollController();
    
  }
  Widget _buildFrontWidget(String text, bool isMobile,isTablet) {
    return Container(
       width: (isMobile||isTablet) ? MediaQuery.of(context).size.width*0.7 :  MediaQuery.of(context).size.width*0.5,
      padding: EdgeInsets.all(15),
        color: Color(0xff0A183D),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
               width: (isMobile||isTablet) ? MediaQuery.of(context).size.width*0.4 :  MediaQuery.of(context).size.width*0.2,
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
    margin: EdgeInsets.symmetric(horizontal:(isMobile||isTablet) ? 0 : MediaQuery.of(context).size.width*0.0125),
     width:(isMobile||isTablet) ?  MediaQuery.of(context).size.width*0.85 : MediaQuery.of(context).size.width*0.5,
      padding: EdgeInsets.all(12),
        color: Color(0xff1c3546),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: (isMobile||isTablet) ? MediaQuery.of(context).size.width*0.7 :  MediaQuery.of(context).size.width*0.4,
              child: Text(text,
                  style: TextStyle(
                      color: Colors.white,
                     
                      fontSize:(isMobile) ? 12 : 14,
                     )),
            ),
            
          
            
          ],
        ));
  }
  Widget customFlexible(String text, String subText, var icon) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffF24854),
              radius: 32.0,
              child: Icon(icon, color: Colors.white, size: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              text,
              style: ThemText.createText,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              subText,
              style: ThemText.howitworkDec,
            ),
          ],
        ),
      ),
    );
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
        ) :     Text(
                              "** Desliza para ver mas",
                              style: TextStyle(
    color: Color(0xff0A183D),
     fontSize: (isMobile) ? 12 : (isTablet) ? 14 : 16,
   
  ),)
      ],
    );
  }

  Widget customCircleAvtar( img,bool isMobile, isTablet) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage(img),
        ),
       
        
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
          print(position);
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: customCard('images/${position+1}-min.jpg' ,isMobile,isTablet,text:'${listaNombres[position]}'),
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
          print(position);
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child:  customCard( "images/R${position+1}.PNG",isMobile,isTablet
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
            
                height: (size.height>500) ? size.height*3/8 : 187.5,
                    width:  size.width,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Image(
                        image: AssetImage("images/DisenoFondo2.png"),
                      ),
                    ),
                  ) : Container(),
            Container(
              height: (isMobile) ? (size.height>500) ? size.height*5/8 : 312.5 : (size.height>500) ? size.height : 500,
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
                            image:  AssetImage("images/1.png"),
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
                            image:  AssetImage("images/2.png"),
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
                        image: (isTablet) ?  AssetImage("images/DisenoFondo.png") : AssetImage("images/DisenoFondo2.png"),
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
                         height:  (isMobile) ? (size.height<500) ? 200 : size.height*0.4 : (size.height<500) ? 300 :  size.height * 0.6,
                        width: (isMobile||isTablet) ? size.width : size.width / 2 ,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(
                            image: AssetImage("images/ImagenApp.png"),
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
                            image:  AssetImage("images/3.png"),
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
                            image:  AssetImage("images/4.png"),
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
                    height: (size.height<500) ? 166.66 :  size.height/3,
                    width:size.width/3,
                    alignment: Alignment.center,
                    child: Image(
                                image:  AssetImage("images/MostMuscular.jpg"),
                    ),
                  ),
                  SizedBox(
                    width:size.width/12
                  ),
                   Container(
                    height: (size.height<500) ? 166.66 :  size.height/3,
                    width:size.width/3,
                    alignment: Alignment.center,
                    child: Image(
                                image:  AssetImage("images/B99A0068.JPG"),
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
                            image:  AssetImage("images/MostMuscular.jpg"),
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
              height: 

              (isMobile||isTablet) ? 
              (numeroTarjetas==4) ?
              (size.height<500) ? 1150 : size.height*2.3 :
               (numeroTarjetas==3) ?
              (size.height<500) ? 1050 : size.height*2.1
              : 
             (numeroTarjetas==2) ?
              (size.height<500) ? 950 : size.height*1.9
              : 
              (numeroTarjetas==1) ?
              (size.height<500) ? 850 : size.height*1.7
              : 
              (size.height<500) ? 750 : size.height*1.5
              : 
              (card1 && card2 && card3 && card4) ?
              (size.height<600) ? 600 : size.height*1.2 :
              (size.height<500) ? 500 : size.height,
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
                          mainAxisAlignment: (isMobile || isTablet) ? MainAxisAlignment.start : MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: (isMobile || isTablet) ? 25 : 0),
                            Container(
                              alignment: Alignment.center,
                              width: (isTablet || isMobile) ? size.width : size.width/2,
                              child: Text(
                                "PREGUNTAS FRECUENTES",
                                style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 :  size.width/22.76,   
    fontWeight: FontWeight.w700,
    letterSpacing: 0.75,
  ),
  
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
                               "En EntrenaAPP tratamos de darte respuesta de las principales preguntas que suelen surgir para que no te quedes con ninguna duda y que tu experiencia con nosotros sea perfecta.",
                               style:TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 :  16,  
    
  ),
                             ),
                            
                            SizedBox(
                              height: 25,
                            ),
                            
                            Center(
                              child: RoundedButton(
                                color: Color(0xff0A183D),
                                textTitle: 'Ver más',
                                isMobile: isMobile,
                                isTablet: isTablet,
                              ),
                            ),
                             SizedBox(
                              height:(isMobile || isTablet) ?  25 : 0,
                            ),
                          (isMobile || isTablet) ? 
                         Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
        ExpansionCard(
        
          onExpansionChanged: (_){
               
                setState(() {
                  if (card1 ==false) 
                  {
                     card1=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }
                 
                  else 
                    {
                     card1=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }
                });
              },
          trailing: (card1==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
           margin: EdgeInsets.all(0),
            
            title: Container(

              child: _buildFrontWidget("¿Dónde debo realizar el entrenamiento?",isMobile,isTablet)
            ),
            children: <Widget>[
              
              _buildInnerBottomWidget("En un gimnasio que tenga un equipamiento razonable. No tiene porque tener toda la maquinaria ya que, en cada patrón de movimiento, vas a poder elegir los ejercicios que mejor se adapten a ti, pero son programas específicos de entrenamiento con pesas para modificar la composición corporal.",isMobile,isTablet)
            ],
          ),
          ExpansionCard(
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
               
                setState(() {
                  if (card2 ==false) 
                    {
                     card2=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card2=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
              trailing: (card2==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿En cuánto tiempo se empiezan a notar los resultados?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("La progresión de cargas es semanal, por lo que, a nivel numérico y objetivo, empiezas a ver resultados desde la primera semana. En cuanto a peso en la báscula, ya sea el objetivo incrementar o disminuir, también mejoras desde la primera semana.A nivel visual, el mayor impacto es al comparar las fotos de ciclo en ciclo en fotos (aprox 16-20 semanas).",isMobile,isTablet)
              ],
            ),
           ExpansionCard(
           
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
                 setState(() {
                  if (card3 ==false) 
                   {
                     card3=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card3=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
            trailing: (card3==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿Para quién es este tipo de entrenamiento?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("Este tipo de entrenamiento va dirigido a aquellas personas que llevan mínimo un año trabajando una rutina de entrenamiento en gimnasio. Conocen diferentes tipos de ejercicios, pero quieren seguir aprendiendo por sí mismos. Además, tienen la capacidad de corregir ejercicios y posturas a través de videos. En definitiva, para todo aquel que desee saber cómo sacar el máximo partido a su cuerpo.",isMobile,isTablet)
              ],
            ),
               ExpansionCard(
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
               
                setState(() {
                  if (card4 ==false) 
                    {
                     card4=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card4=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
          trailing: (card4==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿Cómo puedo saber qué entrenamiento es el que más me conviene?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("El entrenamiento dependerá siempre de las necesidades, objetivos y disponibilidad de cada usuario. Para descubrirlo, realizaremos un cuestionario previo que nos indicará cual es el entrenamiento recomendando.",isMobile,isTablet)
              ],
            ),
  ],
)
                           : Container (),
                          ],
                        ),
                      ),
                    ),
                  ),
               (!isMobile && !isTablet) ? 
                      Expanded(
                        flex:1,
                                              child: 
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
        ExpansionCard(
        
          onExpansionChanged: (_){
               
                setState(() {
                  if (card1 ==false) 
                  {
                     card1=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }
                 
                  else 
                    {
                     card1=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }
                });
              },
          trailing: (card1==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
           margin: EdgeInsets.all(0),
            
            title: Container(

              child: _buildFrontWidget("¿Dónde debo realizar el entrenamiento?",isMobile,isTablet)
            ),
            children: <Widget>[
              
              _buildInnerBottomWidget("En un gimnasio que tenga un equipamiento razonable. No tiene porque tener toda la maquinaria ya que, en cada patrón de movimiento, vas a poder elegir los ejercicios que mejor se adapten a ti, pero son programas específicos de entrenamiento con pesas para modificar la composición corporal.",isMobile,isTablet)
            ],
          ),
          ExpansionCard(
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
               
                setState(() {
                  if (card2 ==false) 
                    {
                     card2=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card2=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
              trailing: (card2==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿En cuánto tiempo se empiezan a notar los resultados?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("La progresión de cargas es semanal, por lo que, a nivel numérico y objetivo, empiezas a ver resultados desde la primera semana. En cuanto a peso en la báscula, ya sea el objetivo incrementar o disminuir, también mejoras desde la primera semana.A nivel visual, el mayor impacto es al comparar las fotos de ciclo en ciclo en fotos (aprox 16-20 semanas).",isMobile,isTablet)
              ],
            ),
           ExpansionCard(
           
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
                 setState(() {
                  if (card3 ==false) 
                   {
                     card3=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card3=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
            trailing: (card3==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿Para quién es este tipo de entrenamiento?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("Este tipo de entrenamiento va dirigido a aquellas personas que llevan mínimo un año trabajando una rutina de entrenamiento en gimnasio. Conocen diferentes tipos de ejercicios, pero quieren seguir aprendiendo por sí mismos. Además, tienen la capacidad de corregir ejercicios y posturas a través de videos. En definitiva, para todo aquel que desee saber cómo sacar el máximo partido a su cuerpo.",isMobile,isTablet)
              ],
            ),
               ExpansionCard(
            margin: EdgeInsets.all(0),
              onExpansionChanged: (_){
               
                setState(() {
                  if (card4 ==false) 
                    {
                     card4=true;
                     numeroTarjetas=numeroTarjetas+1;
                  }

                  else 
                    {
                     card4=false;
                     numeroTarjetas=numeroTarjetas-1;
                  }

                });
              },
          trailing: (card4==true) ? Icon(Icons.close,color:Color(0xff0A183D)) : Icon(Icons.add,color:Color(0xff0A183D)),
              title: Container(
                child: _buildFrontWidget("¿Cómo puedo saber qué entrenamiento es el que más me conviene?",isMobile,isTablet)
              ),
              children: <Widget>[
                
                _buildInnerBottomWidget("El entrenamiento dependerá siempre de las necesidades, objetivos y disponibilidad de cada usuario. Para descubrirlo, realizaremos un cuestionario previo que nos indicará cual es el entrenamiento recomendando.",isMobile,isTablet)
              ],
            ),
  ],
))
                                            
                       : Container()
  
                  
                ],
              ),
            ),
            //Footer
            Container(
              height: size.height * 0.60,
              width: size.width,
              color: Color(0xff0A183D),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Questions? Call 000-800-040-1843",
                        style: ThemText.footerText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("FAQ"),
                            footerText("Investor Relations"),
                            footerText("Privacy"),
                            footerText("Speed Test"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Help Centre"),
                            footerText("Jobs"),
                            footerText("Cookie Preferences"),
                            footerText("Legal Notices"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Account"),
                            footerText("Ways to Watch"),
                            footerText("Corporate Information"),
                            footerText("EntrenaAPP Originals"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Media Centre"),
                            footerText("Terms of Use"),
                            footerText("Contact Us"),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "EntrenaAPP India",
                        style: ThemText.footerText,
                      ),
                    ),
                    Center(
                      child: Text(
                        "© Created By Tushar Nikam",
                        style: ThemText.footerText,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget footerText(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: ThemText.footerText,
      ),
    );
  }
}
