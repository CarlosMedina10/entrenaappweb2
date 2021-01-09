import 'dart:html';

import 'package:entrenaapp/blocs/LandingPageBloc/landingpage_bloc.dart';


import 'package:community_material_icon/community_material_icon.dart';
import 'package:entrenaapp/src/ui/landingPage/CustomCard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';



import '../../widgets/RoundedButton.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Style/Style.dart';



class ConocenosPage extends StatefulWidget {
  final bool isOnConocenos;
   final List<Map<String, String>> isInit;
  ConocenosPage(this.isOnConocenos,this.isInit);
  @override
  _ConocenosPageState createState() => _ConocenosPageState();
}

class _ConocenosPageState extends State<ConocenosPage> with TickerProviderStateMixin {

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

   Widget _buildDocumentAttachmentWidget(
      BuildContext context, String titulo, fecha, int color,bool isMobile,isTablet) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: (isMobile) ? 33 : 35,
      color: Color.fromRGBO(255, 128, 0, 0.2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 3,
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Transform.rotate(
              angle: 3.14 / 180 * 45,
              child: Icon(CommunityMaterialIcons.medal,
                  color: (color == 1)
                      ? Color.fromRGBO(239, 184, 16, 1)
                      : Color.fromRGBO(192, 192, 192, 1)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: (isMobile || isTablet ) ? MediaQuery.of(context).size.width * 5/8 : MediaQuery.of(context).size.width * 2/8 ,
                child: Text(
                  '$titulo',
                  style: TextStyle(
                    fontSize: (isMobile) ? 12 : 14,
                    color: Colors.orange[800],
                    fontWeight: FontWeight.w600,
                  ),
                 
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "$fecha",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.orange[600],
                ),
              )
            ],
          )
        ],
      ),
    );
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
              child:  CustomCard( "R${position+1}.PNG",isMobile,isTablet,widget.isInit
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
if (isMobile || isTablet)
            {
              BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantMobileOrTablet(false,true,false,false));
            }
            if (!isMobile && !isTablet && widget.isOnConocenos)
            {
     BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(false, true, false,false));
            }

    var size = MediaQuery.of(context).size;
    
    return Container(
      color: Color(0xff0A183D),
      child: Column(
        children: [
          //Home Music for everyone
          (isMobile) ?
          Container(
          
              height: (size.height>500) ? size.height*3/8 : 200,
                  width:  size.width,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image(
                      image: AssetImage("assets/images/Conocenos.jpg"),
                    ),
                  ),
                ) : Container(),
          Container(
            height: (isMobile) ? (size.height>500) ? size.height*4/8 : 250 : (size.height>500) ? size.height : 500,
            width: size.width,
         
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                   width: (isMobile==false) ? (isTablet==false) ? size.width/2 : size.width*5/8 : size.width,
                  child: Column(
                    mainAxisAlignment: (isMobile) ? MainAxisAlignment.start : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                    
                        padding: EdgeInsets.only(left:size.width * 0.05,top: (isMobile) ? size.height*0.05 : 0),
                        alignment: Alignment.centerLeft,
                        width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CONOCE QUIÉN ",
                              style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                            ),
                            Text(
                              "ESTÁ DETRÁS DE",
                              style: TextStyle(
    color: Colors.white,
     fontSize: (isMobile) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                            ),
                            Text(
                              "ENTRENAAPP",
                          
                               style: TextStyle(
    color: Colors.white,
     fontSize: (isMobile) ? size.width/17.5 : size.width/22.76,
    fontWeight: FontWeight.w700,
  ) ,
                            ),
                            SizedBox(height:10),
                      Container(
                        width: size.width/4,
                        child: Divider(color:Colors.orange,thickness: 1.0,)),
                         
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                     
                         padding: EdgeInsets.only(left:size.width * 0.05,right: size.width * 0.03),
                          width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                          alignment: Alignment.center,
                          child: Wrap(
                            children: [
                              Text(
                                "Si eres curioso por naturaleza y quieres poner nombre y cara al encargado de conseguir tu mejor versión, ¡ponte cómodo y conócenos!",
                                style: TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16,
    
    letterSpacing: (isMobile) ? null : (isTablet) ? 0.5 : 1.0, 
  ),
                              ),
                            ],
                          )),
                //       Container(
                //         height: size.height*0.3,
                //          width: (isMobile==false) ? (isTablet==false) ? size.width / 2 : size.width*5/8 : size.width,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Container(
                //   width:(isMobile || isTablet) ? size.width*4/16 : size.width/6,
                //   alignment: Alignment.center,
                //   child: Image(
                //           image:  AssetImage("images/1.png"),
                //   ),
                // ),
                //              Container(
                //    width:(isMobile || isTablet) ? size.width*4/16 : size.width/6,
                //   alignment: Alignment.center,
                //   child: Image(
                //           image:  AssetImage("images/2.png"),
                //   ),
                // ),
                //           ],
                //         ),
                //       ),
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
                      image: (isTablet) ?  AssetImage("assets/images/Conocenos.jpg") : AssetImage("assets/images/Conocenos.jpg"),
                    ),
                  ),
                ) : Container(), 
              ],
            ),
          ),

          //Unlimited Access
          Container(
             padding:
                            const EdgeInsets.symmetric(horizontal: 32.0),
            height: 
            (isMobile || isTablet) ?
            (size.height>500) ? size.height*1.5 : 750 :
                 (size.height>500) ? size.height : 500 
            ,
            width: size.width,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                   
                    width: (isMobile || isTablet) ? size.width-64 :  size.width*3 / 5 ,
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start ,
                    mainAxisAlignment: (isMobile||isTablet) ? MainAxisAlignment.start : MainAxisAlignment.center,
                    children: [
                      (isMobile||isTablet) ? SizedBox(height:30) : SizedBox(height:0),
                      FittedBox(
                                              child: Text(
                                                "Hola, soy Carlos Medina...\n",
                                                maxLines: 1,
                                                style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16,
    fontWeight: FontWeight.w700,  
  ),
                                              ),
                      ),
                      Container(
                        
                
                  child: Text(
                    "Un apasionado del deporte repleto de energía desde que nací.",
                    style:  TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16.0, 
  
 
  ),
                  ),
                ) ,
         Container(
                        
                
                  child: Text(
                    "Mi primer contacto con el gimnasio fue a la temprana edad de 16 años, un mundo que me ha ayudado a ser una persona muy disciplinada en todo lo que hago. \nTras varios años de entrenamiento y progreso progresivo fui avanzando, hasta llegar a competir al más alto nivel como integrante de la selección Española de culturismo natural ganando el campeonato del mundo a mis 24 años. \nMi mayor motivación es aplicar la ciencia junto con más de una década de experiencia en el sector del fitness para mejorar la salud de las personas, siempre fiel a mis principios y de manera natural.",
                    style:  TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 : 16.0, 

    
  ),
                  ),
                ) ,
                SizedBox(
                    height: 12,
                  ),
                  Text(
                    "PALMARÉS DEPORTIVO",
                    style: TextStyle(
                      color: Color.fromRGBO(3, 9, 40, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: (isMobile) ? size.width/17.5 : size.width/35,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildDocumentAttachmentWidget(
                      context, "Campeón del mundo WNBB", '10/10/2018', 1,isMobile,isTablet),
                  _buildDocumentAttachmentWidget(
                      context, "Campeón del Open Warriors", '05/09/2019', 1,isMobile,isTablet),
                  _buildDocumentAttachmentWidget(
                      context, "Campeón de España AECN", '19/09/2019', 1,isMobile,isTablet),
                  _buildDocumentAttachmentWidget(
                      context, "Subcampeón del mundo WNBB", '02/10/2019', 2,isMobile,isTablet), 
                    (isMobile||isTablet)  ?  Container(
                   height:  (isMobile) ? (size.height<500) ? 150 : size.height*0.33 : (size.height<500) ? 200 :  size.height * 0.4,
                  width:  size.width ,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image(
                      image: AssetImage("assets/images/Conocenos2.jpg"),
                    ),
                  ),
                ) : Container(),
                    
                    ],
                  ),
                ),
             (isMobile||isTablet) ? Container() :  Container(
                  
                  width:  size.width*2 / 5-64 ,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32),
                    child: Image(
                      image: AssetImage("assets/images/Conocenos2.jpg"),
                    ),
                  ),
                )
              ],
            ),
          ),
      
          
        Container(
            alignment: Alignment.center,
            height: (size.height<500) ? 500 : size.height,
            width: size.width,
            color: Color(0xff0A183D),
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
    color: Colors.white,
    fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 :  size.width/22.76,   
    fontWeight: FontWeight.w600,
    letterSpacing: 0.75,
  ),
  
                            ),
                          ),
                         Text(
                            "ONE-TO-ONE",
                            style: TextStyle(
    color: Colors.white,
     fontSize: (isMobile) ? size.width/17.5 : (isTablet) ? size.width/17.5 :  size.width/22.76,    
    fontWeight: FontWeight.w600,
    letterSpacing: 0.75,
  ),
  
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                         
                     Container(
                        width: size.width/4,
                        child: Divider(color:Colors.orange,thickness: 1.0,)),
                         SizedBox(height:18),
                           Text(
                             "Para solicitar una plaza en mi equipo y disponer de un asesoramiento y seguimiento mas personal no dudes en ponerte en contacto conmigo. Pondré mis ganas y años de experiencia a tu servicio para que progreses de la forma mas eficiente.",
                             style:TextStyle(
    color: Colors.white,
    fontSize: (isMobile) ? 14 : (isTablet) ? 16 :  16,  
 
  ),
                           ),
                          
                          SizedBox(
                            height: 25,
                          ),
                          
                          RoundedButton(
                            color: Colors.white,
                            textColor: Color(0xff0A183D),
                            textTitle: 'Solicitar información',
                            isMobile: isMobile,
                            isTablet: isTablet,
                          ),
                        (isMobile) ? Row(
                          children: [
                            Container(
                  height: (size.height<500) ? 200 :  size.height/3,
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
                  height: (size.height<500) ? 200 :  size.height/3,
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
                        SizedBox(height:10),
                        Container(
                        width: size.width/4,
                        child: Divider(color:Colors.orange,thickness: 1.0,)),
                        SizedBox(height:10),
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

        
         
          //Footer
          Container(
            height: size.height * 0.2,
            width: size.width,
            color: Color(0xff0A183D),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                            onTap: () async{
                                 if (await canLaunch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit")) {
                             await launch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit");
                                   }
                            },
                            child: Text('Términos y condiciones',style: TextStyle(color:Colors.grey[50],decoration: TextDecoration.underline),maxLines: 1,)),   
                 SizedBox(height: 10,),
                Text(
                  "©2021 Una web creada por @carlos10medina",
                  style:  TextStyle(
      color: Colors.grey,
      fontSize: (isMobile) ? 12 : 14.0      
    ),
                ),
               
                     
              ],
            ))
        ],
      ),
    );
  }

//   Widget footerText(text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Text(
//         text,
//         style: ThemText.footerText,
//       ),
//     );
//   }
 }
