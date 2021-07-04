import 'package:entrenaapp/blocs/B_CARD_EJERCICIO/card_ejercicio_bloc.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:ui';
import '../widgets/Input_Usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flip_card/flip_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import './detalle_ejercicios.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CardEjercicio extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final int numeroEjercicio;
  final int numeroDia;
  final Patron patron;
  final int semanaEntrenamiento;

  CardEjercicio(this.principalRepository, this.numeroEjercicio, this.numeroDia,
      this.patron, this.semanaEntrenamiento);

  @override
  _CardEjercicioState createState() => _CardEjercicioState();
}

class _CardEjercicioState extends State<CardEjercicio> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  
   Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<String> _imagenes;
  bool isToggle = false;
  
  bool isInit1=false;
  bool isInit2=false;
  bool isInit3=false;
  String url1;
  String url2;
  String url3;
   onTap(){
 

  }
  _showError1(String message, BuildContext context,) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Card_Ejercicio.error".tr(),),
        content:
            Text(message),
        actions: <Widget>[
         
          TextButton(
            child: Text("_Card_Ejercicio.ok".tr(),),
            onPressed: () {
             
                  Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
  
  void initState() {
    super.initState();

//     if (widget.patron.configuracion.superserie == 3) {
//         final StorageReference storageReference1 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[0]}');
//  storageReference1.getDownloadURL().then((value) {
   
//    setState(() {
//      url1=value;
//    isInit1=true;
   
//  });
 
//  });

//    final StorageReference storageReference2 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[1]}');
//  storageReference2.getDownloadURL().then((value) {
   
//    setState(() {
//    url2=value;
//    isInit2=true;
   
//  });
 
//  });

//  final StorageReference storageReference3 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[2]}');
//  storageReference3.getDownloadURL().then((value) {
   
//    setState(() {
//      url3=value;
//    isInit3=true;
   
//  });
 
//  });
//     } else if  (widget.patron.configuracion.superserie == 2 || widget.patron.configuracion.serieAlterna== 2) {

//  final StorageReference storageReference1 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[0]}');
//  isInit3=true;
//   storageReference1.getDownloadURL().then((value) {
   
//    setState(() {
//    url1=value;
//    isInit1=true;
   
//  });
 
//  });

//    final StorageReference storageReference2 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[1]}');
//   storageReference2.getDownloadURL().then((value) {
   
//    setState(() {
//      url2=value;
//    isInit2=true;
   
//  });
 
//  });
//     } 
    // else {
     isInit2=true;
     isInit3=true;
    widget.principalRepository.isInit.forEach((element) {
       if (element.keys.contains(widget.patron.ejercicioSeleccionado.nombre)) {
       url1= element.values.first;
       isInit1=true;
      print('$url1');
       }
     });
     if (url1== null) {
if(widget.patron.ejercicioSeleccionado!=null && widget.patron.ejercicioSeleccionado.imagen!=null) {
     final Reference storageReference1 = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[0]}');
 storageReference1.getDownloadURL().then((value) async{
   Map<String,String> ejer = {'${widget.patron.ejercicioSeleccionado.nombre}' : value};
   widget.principalRepository.isInit.add(ejer);
   
    final SharedPreferences prefs = await _prefs;
       
    String imagenes = json.encode(widget.principalRepository.isInit);
    
      prefs.setString("imagenes", imagenes);
   
   
   
   if (mounted)
   setState(() {
   url1=value;
  isInit1=true;
   
 });
 
 }); }
    } 
    // } 
      

 
 
// no need of the file extension, the name will do fine.
 

    }
  @override
  Widget build(BuildContext context) {
 if(widget.principalRepository.tarjetasDeVuelta==0) {

if(cardKey.currentState!=null && !cardKey.currentState.isFront)
 cardKey.currentState.toggleCard();
 isToggle=false;
 }
    
    CardEjercicioBloc blocEjercicio =
        CardEjercicioBloc(widget.semanaEntrenamiento);
 
    int index;
    String repeticiones;
    int series;
    String rir;
    int tiempoDescanso;
    if (widget.semanaEntrenamiento == 0) {
      repeticiones = widget.patron.configuracion.repeticiones.semana1;
      series = widget.patron.configuracion.series.semana1;
      rir = widget.patron.configuracion.rir.semana1;
      tiempoDescanso = widget.patron.configuracion.tiempoDeDescanso.semana1;
    } else if (widget.semanaEntrenamiento == 1) {
      repeticiones = widget.patron.configuracion.repeticiones.semana2;
      series = widget.patron.configuracion.series.semana2;
      rir = widget.patron.configuracion.rir.semana2;
      tiempoDescanso = widget.patron.configuracion.tiempoDeDescanso.semana2;
    } else if (widget.semanaEntrenamiento == 2) {
      repeticiones = widget.patron.configuracion.repeticiones.semana3;
      series = widget.patron.configuracion.series.semana3;
      rir = widget.patron.configuracion.rir.semana3;
      tiempoDescanso = widget.patron.configuracion.tiempoDeDescanso.semana3;
    } else if (widget.semanaEntrenamiento == 3) {
      repeticiones = widget.patron.configuracion.repeticiones.semana4;
      series = widget.patron.configuracion.series.semana4;
      rir = widget.patron.configuracion.rir.semana4;
      tiempoDescanso = widget.patron.configuracion.tiempoDeDescanso.semana4;
    }

    return BlocProvider<CardEjercicioBloc>(
        create: (context) => blocEjercicio,
        child: BlocBuilder<CardEjercicioBloc, CardEjercicioState>(
            builder: (BuildContext context, CardEjercicioState state) {
          
        
          if (state is CardEjercicioS) {
            return 
            
             Card(
               elevation: 0.0,

               color: Color(0x00000000),

               child: FlipCard(
                 flipOnTouch: false,
                 direction: FlipDirection.HORIZONTAL,
                 speed: 500,
                 key: cardKey,
                 front: (isToggle)
                     ? PlayAnimation<double>(
                         tween: (190.0).tweenTo((MediaQuery.of(context)
                                 .size
                                 .height -
                             MediaQuery.of(context).size.height *
                                 0.25)), // <-- specify tween (from 50.0 to 200.0)
                         duration: 300.milliseconds,
                         builder: (context, child, value) {
                           return Container(
                             width: value,
                             height: value,
                             color: Color.fromRGBO(3, 9, 40, 1), 
                           );
                         },
                       )
                     : Container(
                         decoration: BoxDecoration(
                          
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           gradient: RadialGradient(
                             radius: 0.8,
                             colors: [
                               Colors.black,
                               Color.fromRGBO(3, 9, 40, 1),
                             ],
                           ),
                         ),
                         height: 190,
                         child: new Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             new Expanded(
                               flex: 8,
                               child: Container(
                                 height: 190,
                                 decoration: BoxDecoration(
                                   color: Colors.grey[50],
                                   border: Border.all(
                                       color: Color.fromRGBO(3, 9, 40, 1),  width: 1),
                                   borderRadius:
                                       BorderRadius.all(Radius.circular(20.0)),
                                 ),
                                 margin: EdgeInsets.all(5),
                                 padding:  EdgeInsets.symmetric(
                                     vertical: (widget.patron.comentario!='No') ? 0.0 : 4.0, horizontal: 6.0),
                                 child: new Column(
                                   children: <Widget>[
                                     Container(
                                       // height: 40,
                                       margin: EdgeInsets.all(5),
                                       padding: EdgeInsets.all(5),
                                       alignment: Alignment.center,
                                       decoration: BoxDecoration(
                                         color: Color.fromRGBO(3, 9, 40, 1), 
                                         borderRadius: BorderRadius.all(
                                             Radius.circular(10.0)),
                                       ),
                                       child: 
                                      
                                       new AutoSizeText(
                                         '${widget.patron.ejercicioSeleccionado.nombre}',
                                         maxLines: 2,
                                         minFontSize: 10,
                                         maxFontSize: 18,
                                         style: TextStyle(
                                             color: Colors.grey[50],
                                             fontSize: 16.0,
                                             fontWeight: FontWeight.w900),
                                       ),
                                     ),
                                     new Padding(
                                       padding:(widget.patron.comentario!='No') ?
                                           const EdgeInsets.only(top: 4.0 )
                                           : const EdgeInsets.only(top: 8.0 ),
                                       child: FittedBox(
                                         child: Column(
                                           children: <Widget>[
                                             new Text(
                                               "_Card_Ejercicio.rango_repeticiones".tr(args: [repeticiones]),
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                   color: Color.fromRGBO(3, 9, 40, 1), 
                                                   fontSize: 14.0,
                                                   fontWeight:
                                                       FontWeight.w700),
                                             ),
                                             new Text(
                                               "_Card_Ejercicio.numero_series".tr(args: [series.toString()]),
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                   color: Color.fromRGBO(3, 9, 40, 1), 
                                                   fontSize: 14.0,
                                                   fontWeight:
                                                       FontWeight.w700),
                                             ),
                                             Row(
                                               children: [
                                                 new Text(
                                                   '$rir',
                                                   textAlign: TextAlign.center,
                                                   style: TextStyle(
                                                       color: Color.fromRGBO(3, 9, 40, 1), 
                                                       fontSize: 14.0,
                                                       fontWeight:
                                                           FontWeight.w700),
                                                 ),
                                                 SizedBox(width: 5,),
                                                 InkWell(
                                                   onTap: onTap,
                                                   child: Icon(Icons.info,size: 16,)),
                                               ],
                                             ),
                                             new Text(
                                               (tiempoDescanso>=10) ? 
                      "_Card_Ejercicio.tiempo_descanso_seg".tr(args: [tiempoDescanso.toString()]) :"_Card_Ejercicio.tiempo_descanso_min".tr(args: [tiempoDescanso.toString()]),
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                   color: Color.fromRGBO(3, 9, 40, 1), 
                                                   fontSize: 14.0,
                                                   fontWeight:
                                                       FontWeight.w700),
                                             ),
                        
                                           ],
                                         ),
                                       ),
                                     ),
                                      (widget.patron.comentario!='No') ? SizedBox(height:2) : Container(),
                         (widget.patron.comentario!='No') ?
                                              Container(
                                               
                                                height: 46,
                                                child: new AutoSizeText(
                                                
                      "_Card_Ejercicio.comentario".tr(args: [widget.patron.comentario.toString()]),
                      maxFontSize: 12,
                      minFontSize: 6,
                      maxLines: 5,
                                                 textAlign: TextAlign.center,
                                                 style: TextStyle(
                                                     color: Color.fromRGBO(3, 9, 40, 1), 
                                                     fontSize: 12.0,
                                                     fontWeight:
                                                         FontWeight.w700),
                                             ),
                                              ) : Container()
                                   ],
                                 ),
                               ),
                             ),
                             Expanded(
                               flex: (MediaQuery.of(context).size.width < 500) ?  3 : 2,
                                                           child: new Container(
                                 height: 190.0,
                                 width: 100.0,
                                 child: Stack(
                                   children: <Widget>[
                                     // new Transform.translate(
                                     //   offset: (MediaQuery.of(context).size.width < 500) ? Offset(10.0, 0.0) : Offset(50, 0.0),
                                     //   child: new Container(
                                     //     height: 100.0,
                                     //     width: 100.0,
                                     //     decoration: BoxDecoration(
                                     //       gradient: RadialGradient(
                                     //         radius: 0.8,
                                     //         colors: [
                                     //           Colors.orange[700],
                                     //           Colors.orange,
                                     //           Colors.orange[50],
                                     //           Colors.deepOrange,
                                     //         ],
                                     //       ),
                                     //     ),
                                     //   ),
                                     // ),
                                     new Transform.translate(
                                       offset: (MediaQuery.of(context).size.width < 500) ? Offset(0.0, 10.0) : Offset(40, 10.0),
                                       child: new Card(
                                         elevation: 20.0,
                                         child: 
                                         
                                        //  (widget.patron.configuracion.superserie == 3) ?
                                        //  Container(
                                        //    height: 100.0,
                                        //    width: 100.0,
                                        //    child: Column(
                                        //      children: <Widget>[
                                        //        Container(
                                        //          height: 33.33,
                                        //          width: 100.0,
                                        //          decoration: new BoxDecoration(
                                        //              color: Colors.white,
                                        //              border: Border.all(
                                        //                  width: 1.0,
                                        //                  color: Colors.orange,
                                        //                  style: BorderStyle.solid),
                                        //              image: DecorationImage(
                                        //                  // image: AssetImage(
                                        //                  //   'assets/images/pressbanca.jpg',
                                        //                  //   // fit: BoxFit.contain,
                                        //                  // ),

                                        //                  image:  NetworkImage("$url1"),
                                        //                // fit: BoxFit.contain,
                                        //              )
                                                     
                                        //              ),
    
                                        //        ),
                                        //        Container(
                                        //          height: 33.33,
                                        //          width: 100.0,
                                        //          decoration: new BoxDecoration(
                                        //              color: Colors.white,
                                        //              border: Border.all(
                                        //                  width: 1.0,
                                        //                  color: Colors.orange,
                                        //                  style: BorderStyle.solid),
                                        //              image: DecorationImage(
                                        //                  // image: AssetImage(
                                        //                  //   'assets/images/pressbanca.jpg',
                                        //                  //   // fit: BoxFit.contain,
                                        //                  // ),

                                        //                  image: NetworkImage("$url2"),)
                                                     
                                        //              ),
    
                                        //        ),
                                        //        Container(
                                        //          height: 33.33,
                                        //          width: 100.0,
                                        //          decoration: new BoxDecoration(
                                        //              color: Colors.white,
                                        //              border: Border.all(
                                        //                  width: 1.0,
                                        //                  color: Colors.orange,
                                        //                  style: BorderStyle.solid),
                                        //              image: DecorationImage(
                                        //                  // image: AssetImage(
                                        //                  //   'assets/images/pressbanca.jpg',
                                        //                  //   // fit: BoxFit.contain,
                                        //                  // ),

                                        //                  image: NetworkImage("$url3"),)
                                                     
                                        //              ),
    
                                        //        ),
                                        //      ],
                                        //    ),
                                        //  ) :
                                         
                                        //   (widget.patron.configuracion.superserie == 2 || widget.patron.configuracion.serieAlterna== 2)  ? 
                                        //  Container(
                                        //    height: 100.0,
                                        //    width: 100.0,
                                        //    child: Column(
                                        //      children: <Widget>[
                                        //        Container(
                                        //          height: 50.0,
                                        //          width: 100.0,
                                        //          decoration: new BoxDecoration(
                                        //              color: Colors.white,
                                        //              border: Border.all(
                                        //                  width: 1.0,
                                        //                  color: Colors.orange,
                                        //                  style: BorderStyle.solid),
                                        //              image: DecorationImage(
                                        //                  // image: AssetImage(
                                        //                  //   'assets/images/pressbanca.jpg',
                                        //                  //   // fit: BoxFit.contain,
                                        //                  // ),

                                        //                  image: NetworkImage("$url1"),)
                                                     
                                        //              ),
    
                                        //        ),
                                        //        Container(
                                        //          height: 50.0,
                                        //          width: 100.0,
                                        //          decoration: new BoxDecoration(
                                        //              color: Colors.white,
                                        //              border: Border.all(
                                        //                  width: 1.0,
                                        //                  color: Colors.orange,
                                        //                  style: BorderStyle.solid),
                                        //              image: DecorationImage(
                                        //                  // image: AssetImage(
                                        //                  //   'assets/images/pressbanca.jpg',
                                        //                  //   // fit: BoxFit.contain,
                                        //                  // ),

                                        //                  image: NetworkImage("$url2"),)
                                                     
                                        //              ),
    
                                        //        ),
                                        //      ],
                                        //    ),
                                        //  ) :
                                         
                                         
                                       
                                         Container(
                                          
                                           height: 120,
                                           child: Column(
                                             children: <Widget>[
                                               Container(
                                                 
                                                 height: 70.0,
                                                 width: 100.0,
                                                  child:  
                                                    (isInit1 && isInit2 && isInit3) ? 
                                                
                                                Image.network(
                                                    
                 
                
                     '$url1',
               )  : Container(
                                            height: 70.0,
                                           width: 100.0,
                                           child: Center(child:CircularProgressIndicator())),
                                                 decoration: new BoxDecoration(
                                                    
                                                     border: Border.all(
                                                         width: 1.0,
                                                         color: Colors.orange,
                                                         style: BorderStyle.solid),
                                                     
                                                         // image: DecorationImage(
                                                         //       // image: AssetImage(
                                                         //       //   'assets/images/pressbanca.jpg',
                                                         //       //   // fit: BoxFit.contain,
                                                         //       // ),

                                                         //       image: NetworkImage("$url1"),)
                                                      
                                                         
                                                         
                                                     
                                                     ),
    
                                               ),
                                               Container(
                                           // padding: EdgeInsets.all(2),
                                            height: 30,
                                            width: 100,
                                            color: Colors.grey[50],
                                           // decoration: BoxDecoration(
                                           //   borderRadius:
                                           //       BorderRadius.circular(20),
                                           //   color: Colors.grey[200]
                                           // ),
                                           child: Center(
                                             child: new IconButton(
                                                 padding: EdgeInsets.all(4),
                                                 icon: Icon(
                                                 
                                                   FontAwesomeIcons.eye,
                                                   color: Color.fromRGBO(3, 9, 40, 1), 
                                                   size: 20,
                                                 ),
                                                 onPressed: () {

  

  

                                                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetalleEjercicios(widget.principalRepository,widget.numeroDia,widget.numeroEjercicio,widget.patron,widget.semanaEntrenamiento,url1:url1,url2:url2,url3:url3
                                                   ))
                                                   
                                                   
                                                   ) .then((value) {
                                                 setState(() {
                                                   widget.patron.ejercicioSeleccionado=widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[widget.numeroDia].patrones[widget.numeroEjercicio].ejercicioSeleccionado;
                                                   widget.principalRepository.isInit.forEach((element) { if (element.keys.contains(widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[widget.numeroDia].patrones[widget.numeroEjercicio].ejercicioSeleccionado.nombre)) {
       url1= element.values.first;
      
       }
     }); 
                                         
                                                  
                                                 });
                                               });
                                             
                                                   
                                                   
                                                   
                                                   
                                                   
                                                 }),
                                           )),
                                           Container(
                                               width: 100,
                                               height:20,color:Color.fromRGBO(3, 9, 40, 1),)
                                             ],
                                           ),
                                         ) 
                                        
                                       ),
                                     ),
                                   //  (!state.cargando && isInit1 && isInit2 && isInit3) ? 
//                                    Transform.translate(
//                                       offset: (MediaQuery.of(context).size.width < 500) ? Offset(0, 80) : Offset(0, 80), 
//                                       child: Container(
//                                           // padding: EdgeInsets.all(2),
//                                            height: 30,
//                                            width: 100,
//                                            color: Colors.grey[50],
//                                           // decoration: BoxDecoration(
//                                           //   borderRadius:
//                                           //       BorderRadius.circular(20),
//                                           //   color: Colors.grey[200]
//                                           // ),
//                                           child: Center(
//                                             child: new IconButton(
//                                                 padding: EdgeInsets.all(8),
//                                                 icon: Icon(
//                                                   FontAwesomeIcons.eye,
//                                                   color: Color.fromRGBO(3, 9, 40, 1), 
//                                                   size: 20,
//                                                 ),
//                                                 onPressed: () async{

//                                                widget.principalRepository.isInit.forEach((element) { if (element.keys.contains(widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[widget.numeroDia].patrones[widget.numeroEjercicio].ejercicioSeleccionado.nombre)) {
//        url1= element.values.first;
      
//        }
//      });      
//                                                    if (widget.principalRepository.puntosActuales<2 && !widget.principalRepository.isUserPro)
//                                                     Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => UpsellScreen(principalRepository: widget.principalRepository,)));
//                                                     else try {
//                                                     if (!widget.principalRepository.isUserPro) {
//    BlocProvider.of<CardEjercicioBloc>(
//                                                   context)
//                                               .add(CargarPaginaDetalle());
//   await widget.principalRepository.guardarPuntos(-2);
  

//   BlocProvider.of<CardEjercicioBloc>(
//                                                   context)
//                                               .add(TerminarDeCargar());
//   }
// //    final StorageReference storageReference = FirebaseStorage.instance.ref().child('fotosEjercicios/${widget.patron.ejercicioSeleccionado.imagen[0]}');
// // // no need of the file extension, the name will do fine.
// // var url = await storageReference.getDownloadURL();

//                                                   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => DetalleEjercicios(widget.principalRepository,widget.numeroDia,widget.numeroEjercicio,widget.patron,widget.semanaEntrenamiento,url1:url1,url2:url2,url3:url3
//                                                   )));} catch (error) {
//                                                      _showError('Ocurrio un error', context);
//                                                   }
                                                   
//                                                 }),
//                                           )),
//                                     ), 
                                     // : Container(),
                                     Transform.translate(
                                       offset: (MediaQuery.of(context).size.width < 500) ? Offset(27.0, 135) : Offset(67.0, 135), 
                                       child: Container(
                                           // padding: EdgeInsets.all(2),

                                           decoration: BoxDecoration(
                                             borderRadius:
                                                 BorderRadius.circular(20),
                                             color: Colors.grey[50]
                                           ),
                                           child: new IconButton(
                                               padding: EdgeInsets.all(8),
                                               icon: Icon(
                                                 Icons.edit,
                                                 color: Color.fromRGBO(3, 9, 40, 1), 
                                                 size: 30,
                                               ),
                                               onPressed: () {
                                                 cardKey.currentState.toggleCard();
                                                 widget.principalRepository.tarjetasDeVuelta=widget.principalRepository.tarjetasDeVuelta+1;
                                                   print( widget.principalRepository.tarjetasDeVuelta);
                                                 setState(() {
                                                   isToggle = true;
                                                 });
                                                  BlocProvider.of<CardEjercicioBloc>(
                                                 context)
                                             .add(Toggle(
                                                 true
                                                 ));
                                               })),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                 back:
                     //     !isToggle ? PlayAnimation<double>(
                     //   tween: ( 300.0).tweenTo(190), // <-- specify tween (from 50.0 to 200.0)
                     //   duration: 400.milliseconds, // <-- set a duration
                     //   builder: (context, child, value) { // <-- use builder function
                     //     return Container(
                     //       width: value, // <-- apply animated value obtained from builder function parameter
                     //       height: value, // <-- apply animated value obtained from builder function parameter
                     //       color: Color.fromRGBO(3, 9, 40, 1), 
                     //     );
                     //   },
                     // ) :
                     Container(
                         height:  !isToggle
                                 ? 0
                                 : MediaQuery.of(context).size.height -
                                     MediaQuery.of(context).size.height * 0.33,
                         padding: EdgeInsets.only(top:10,left:10,right:10,bottom:0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color.fromRGBO(3, 9, 40, 1), 
                         ),
                         child: Column(
                           children: <Widget>[
                             Container(
                               height:  MediaQuery.of(context).size.height -
                                       MediaQuery.of(context).size.height *
                                           0.45,
                               color: Colors.white,
                               child: new ListView(
                                 shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
           
                                 children: [
                                 for (index = 0; index <= 13; index++)

                                   //  //Detectamos si el map es nulo para inicializar esas variables
                                   // datoshistorialentrenamiento.datosUser[widget.nombre] == null ?

                                   // Inputusuario( datoshistorialentrenamiento.datosUser[widget.nombre] = {'Semana 1':null},index1,widget.nombre,datoshistorialentrenamiento.semana+1) :
                                   if (index == 13)
                               Container()
                                   else
                                     Inputusuario(
                                         widget.principalRepository,
                                         blocEjercicio,
                                         widget.numeroEjercicio,
                                         widget.numeroDia,
                                         index,
                                         state.semanaEntrenamiento)
                               ]),
                             ),
                             // SizedBox(height: 5),
                             Container(
                              height: MediaQuery.of(context).size.height*0.12-10,
                               // height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height * 0.925,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: <Widget>[
                                    Container(
                                     height: 50,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                       color:  Colors.grey[50],
                                     ),
                                     child: IconButton(
                                         icon: Icon(Icons.close,
                                             size: 30, color: Color.fromRGBO(3, 9, 40, 1)
                                             ),
                                         onPressed: () {
                                           cardKey.currentState.toggleCard();
                                            widget.principalRepository.tarjetasDeVuelta=widget.principalRepository.tarjetasDeVuelta-1;
                                            print( widget.principalRepository.tarjetasDeVuelta);
                                           // await Future.delayed(Duration(milliseconds: 300));
                                           setState(() {
                                             isToggle = false;
                                           });
                                            BlocProvider.of<CardEjercicioBloc>(
                                                 context)
                                             .add(Toggle(
                                                 false
                                                 ));
                                         }),
                                   ),
                                   SizedBox(width: 20),
                                   IconButton(
                                     icon: Icon(Icons.arrow_back),
                                     color: Colors.grey[50],
                                     onPressed: () {
                                       if (state.semanaEntrenamiento > 0)
                                         BlocProvider.of<CardEjercicioBloc>(
                                                 context)
                                             .add(CambioSemana(
                                                 state.semanaEntrenamiento - 1));
                                     },
                                   ),
                                   Container(
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(20),
                                         color: Colors.orange[200]),
                                     height: 35,
                                     child: FittedBox(
                                         child: Padding(
                                             padding: EdgeInsets.all(8),
                                             child: Text(
                                                 "_Card_Ejercicio.numero_semana".tr(args: [(state.semanaEntrenamiento+1).toString()]),
                                                 style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 20,
                                                     color: Colors.grey[900])))),
                                   ),
                                   IconButton(
                                     icon: Icon(Icons.arrow_forward),
                                     color: Colors.grey[50],
                                     onPressed: () {
                                       if (state.semanaEntrenamiento < 3)
                                         BlocProvider.of<CardEjercicioBloc>(
                                                 context)
                                             .add(CambioSemana(
                                                 state.semanaEntrenamiento + 1));
                                     },
                                   ),
                                   SizedBox(width: 20),
                                  
                                 ],
                               ),
                             )
                           ],
                         )),
               ),
               // ),
             );
          } else
            return Container();
        }));
  }
}
