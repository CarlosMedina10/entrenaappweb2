
import 'package:entrenaapp/blocs/B_MESCOCICLO/mesociclo_bloc_bloc.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/Diadeentrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/widgets/Card_Ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';

class DiaDeEntrenamiento extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final int numeroDia;
  final DiaEntrenamiento diaEntrenamiento;
  final int semanaEntrenamiento;
  final bool entrenamientoCompletado;
  final bool semanaCompletada;
  final bool mesocicloCompletado;

  DiaDeEntrenamiento(
      this.principalRepository,
      this.numeroDia,
      this.diaEntrenamiento,
      this.semanaEntrenamiento,
      this.entrenamientoCompletado,
      this.semanaCompletada,
      this.mesocicloCompletado);

  @override
  _DiaDeEntrenamientoState createState() => _DiaDeEntrenamientoState();
}

class _DiaDeEntrenamientoState extends State<DiaDeEntrenamiento> {
  bool isInit = false;
  Color colorb = Colors.orange;
  Color colorf = Colors.black;
  bool dialVisible = true;

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  _onStartScroll(ScrollMetrics metrics) {
    setDialVisible(false);
  }

  _onEndScroll(ScrollMetrics metrics) {
    setDialVisible(true);
  }

  @override
  Widget build(BuildContext context) {
    //   _renderBg() {
    //   return Container(
    //     decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
    //   );
    // }
    return new WillPopScope(
        onWillPop: () async {
          if (widget.principalRepository.tarjetasDeVuelta == 0) {
            
            BlocProvider.of<MesocicloBlocBloc>(context).add(
                UserQuiereVolveraElegirEntrenamiento(widget.semanaEntrenamiento,
                    widget.principalRepository.actualizarBBDD));
          } else {
            setState(() {
              widget.principalRepository.tarjetasDeVuelta = 0;
            });
          }

          return false;
        },
        child: Scaffold(
          
          backgroundColor: Colors.grey[50],
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon( Icons.arrow_back),
              color: Colors.grey[100],
              onPressed: () {
               
                BlocProvider.of<MesocicloBlocBloc>(context).add(
                    UserQuiereVolveraElegirEntrenamiento(
                        widget.semanaEntrenamiento,
                        widget.principalRepository.actualizarBBDD));
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: new Text(
              "_Dia_Entrenamiento.volver".tr(),
              style: TextStyle(color: Colors.grey[100]),
            ),
          ),
          body: new Stack(
            children: <Widget>[
              // Positioned(
              //    top:1000,
              //    width: MediaQuery.of(context).size.width,

              //       child:   Container(height: 100,color: Colors.red,)

              //  ),
              new Transform.translate(
                offset: new Offset(0.0, 85),
                child:
//             ListView(
// //                 children: listaejercicios.map((de) {
// //                   return CardEjercicio(mesociclonumero,diaentrenamiento,listaejercicios.indexOf(de),de, semanaentrenamiento);
// //                 }).toList(),
                    Container(
                  //Este height dependera del tamaño del dispositivo
                  // height: MediaQuery.of(context).size.height -
                  //     MediaQuery.of(context).size.height * 0.1050 -
                  //     175,

                  child: NotificationListener<ScrollNotification>(
                    // ignore: missing_return
                    onNotification: (scrollNotification) {
                      if (scrollNotification is ScrollStartNotification) {
                        _onStartScroll(scrollNotification.metrics);
                      } else if (scrollNotification
                          is ScrollEndNotification) {
                        _onEndScroll(scrollNotification.metrics);
                      }
                    },
                    child: ListView(
                      cacheExtent: 4000,
                      padding: const EdgeInsets.only(bottom: 0),
                      scrollDirection: Axis.vertical,
                      // primary: true,
                      children: widget.diaEntrenamiento.patrones.map(
                        (patron) {
                          return (widget.diaEntrenamiento.patrones
                                      .indexOf(patron) !=
                                  widget.diaEntrenamiento.patrones.length -
                                      1)
                              ? CardEjercicio(
                                  widget.principalRepository,
                                  widget.diaEntrenamiento.patrones
                                      .indexOf(patron),
                                  widget.numeroDia,
                                  patron,
                                  widget.semanaEntrenamiento)
                              : Column(
                                  children: <Widget>[
                                    CardEjercicio(
                                        widget.principalRepository,
                                        widget.diaEntrenamiento.patrones
                                            .indexOf(patron),
                                        widget.numeroDia,
                                        patron,
                                        widget.semanaEntrenamiento),
                                    SizedBox(height: 50),
                                    FittedBox(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text(
                                                  "_Dia_Entrenamiento.he_completado_mi"
                                                      .tr(),
                                                  style: new TextStyle(
                                                      color: Color.fromRGBO(
                                                          3, 9, 40, 1),
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '${widget.diaEntrenamiento.nombreentrenamiento}',
                                                  style: new TextStyle(
                                                      color: Color.fromRGBO(
                                                          3, 9, 40, 1),
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 15),
                                                new Container(
                                                  width:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.35,
                                                  child: new Image.asset(
                                                      'assets/images/LogoEntrenaAppFondoNegro.png'),
                                                ),
                                              ],
                                            ),
                                            Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      Color.fromRGBO(
                                                          3, 9, 40, 1),
                                                ),
                                                child: Checkbox(
                                                    activeColor:
                                                        Colors.orange,
                                                    value: widget
                                                        .entrenamientoCompletado,
                                                    onChanged:
                                                        (bool value) {
                                                      BlocProvider.of<
                                                                  MesocicloBlocBloc>(
                                                              context)
                                                          .add(UserHaMarcadadoCheckBox(
                                                              widget
                                                                  .numeroDia,
                                                              widget
                                                                  .semanaEntrenamiento,
                                                              widget
                                                                  .diaEntrenamiento,
                                                              value));
                                                    })),
                                            FlatButton(
                                              color: Colors.orange[400],
                                              onPressed: () {
                                            
                                                BlocProvider.of<
                                                            PaginaprincipalBloc>(
                                                        context)
                                                    .add(UserHaAcabadoDeVisualizar(
                                                        widget
                                                            .entrenamientoCompletado,
                                                        widget
                                                            .semanaCompletada,
                                                        widget
                                                            .mesocicloCompletado,
                                                        widget
                                                            .principalRepository
                                                            .actualizarBBDD));
                                                widget.principalRepository
                                                    .actualizarBBDD = false;
                                              },
                                              child: FittedBox(
                                                  child: Text(
                                                "_Dia_Entrenamiento.he_acabado"
                                                    .tr(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      3, 9, 40, 1),
                                                ),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 120),
                                  ],
                                );
                        },
                      ).toList(),
                    ),
                  ),
                ),
              ),

              new Transform.translate(
                offset: Offset(0.0, -56.0),
                child: new Container(
                  child: new ClipPath(
                    clipper: (MediaQuery.of(context).orientation ==
                            Orientation.landscape)
                        ? MyClipperLandscape()
                        : MyClipper(),
                    child: new Stack(
                      children: [
                        (MediaQuery.of(context).orientation ==
                                    Orientation.landscape ||
                                MediaQuery.of(context).size.width > 700)
                            ? Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  'assets/images/Fondo4.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )
                            : Image.asset(
                                'assets/images/Fondo4.jpg',
                                fit: BoxFit.fill,
                              ),
                        new Opacity(
                          opacity: 0.2,
                          child: new Container(
                            color: Color.fromRGBO(3, 9, 40, 1),
                          ),
                        ),
                        new Transform.translate(
                          offset: Offset(0.0, 43.0),
                          child: new ListTile(
                            leading: new CircleAvatar(
                              radius: 28,
                              child: new Container(
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  image: new DecorationImage(
                                      alignment: Alignment.topCenter,
                                      fit: BoxFit.fill,
                                      image:  (widget.principalRepository
                                                          .sexo ==
                                                      'Hombre' ||
                                                  widget.principalRepository
                                                          .sexo ==
                                                      'Men')
                                              ? AssetImage(
                                                  'assets/images/hombre.png')
                                              : AssetImage(
                                                  'assets/images/mujer.png')),
                                ),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: new Text(
                                '${widget.diaEntrenamiento.nombreentrenamiento}',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Container(
                              height: MediaQuery.of(context).size.height *
                                  0.075,
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new AutoSizeText(
                                    "_Dia_Entrenamiento.bienvenido".tr(),
                                    style: new TextStyle(
                                      color: Colors.grey[100],
                                      fontSize: 16.0,
                                      // fontWeight: FontWeight.bold
                                    ),
                                    maxFontSize: 16,
                                    minFontSize: 8,
                                    maxLines: 1,
                                  ),
                                  //  SizedBox(height: 2,),
                                 
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, 130);
    p.lineTo(0.0, 150);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class MyClipperLandscape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();

    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height / 3);
    p.lineTo(0.0, size.height / 2.5);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
