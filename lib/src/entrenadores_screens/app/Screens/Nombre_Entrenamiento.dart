import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/Animations/FadeAnimation.dart';
import 'package:entrenaapp/blocs/B_CREACION_ENTRENAMIENTO/creacionentrenamiento_bloc.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NombreNuevoEntrenamiento extends StatefulWidget {
  final CreacionRepository creacionRepository;
  final bool isTrainer;
  NombreNuevoEntrenamiento(this.creacionRepository, this.isTrainer);

  @override
  NombreNuevoEntrenamientoState createState() =>
      NombreNuevoEntrenamientoState();
}

class NombreNuevoEntrenamientoState extends State<NombreNuevoEntrenamiento>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;
  String nombreEntrenamiento;
  String userID;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _widthAnimation =
        Tween<double>(begin: 80.0, end: 300.0).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });

    _positionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _scale2Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 00));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              if (userID != null)
                widget.creacionRepository.userID = userID;
              else
                widget.creacionRepository.userID = null;
              BlocProvider.of<CreacionentrenamientoBloc>(context)
                  .add(HeSeleccionadoNombre(
                nombreEntrenamiento,
              ));

              //  BlocProvider.of<PaginaprincipalBloc>(context)
              //     .add(UserQuiereConfigurar());
              // Aqui ira la animacion
              // BlocProvider.of<PaginaprincipalBloc>(context)
              //     .add(Animacion());
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    _error(BuildContext context) {
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            content: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "_Creacion_Entrenamiento.debes_asignar_un_nombre".tr()),
                    Icon(Icons.error)
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.red,
          ),
        );
    }

    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<CreacionentrenamientoBloc>(context)
              .add(QuieroVolverAConfiguracion());
          return false;
        },
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  BlocProvider.of<CreacionentrenamientoBloc>(context)
                      .add(QuieroVolverAConfiguracion());
                },
              ),
              title: Text("_Creacion_Entrenamiento.volver".tr()),
            ),
            backgroundColor: Color.fromRGBO(3, 9, 23, 1),
            body: Builder(
              builder: (context2) => Container(
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -50,
                      left: 0,
                      child: FadeAnimation(
                          1,
                          Container(
                            width: width,
                            height: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/one.png'),
                                    fit: BoxFit.cover)),
                          )),
                    ),
                    Positioned(
                      top: -100,
                      left: 0,
                      child: FadeAnimation(
                          1.3,
                          Container(
                            width: width,
                            height: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/one.png'),
                                    fit: BoxFit.cover)),
                          )),
                    ),
                    Positioned(
                      top: -150,
                      left: 0,
                      child: FadeAnimation(
                          1.6,
                          Container(
                            width: width,
                            height: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/one.png'),
                                    fit: BoxFit.cover)),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Text(
                                "_Creacion_Entrenamiento.comienza_asignando_un_nombre"
                                    .tr(),
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.7),
                                    height: 1.4,
                                    fontSize: 20),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            // textInputAction: TextInputAction.newline,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,

                            style: TextStyle(
                                color: Colors.grey[50], fontSize: 18),
                            onChanged: (text) {
                              nombreEntrenamiento = text;
                            },
                            decoration: InputDecoration(
                              icon: Icon(Icons.fitness_center,
                                  color: Colors.orange),
                              labelText:
                                  "_Creacion_Entrenamiento.añade_un_nombre"
                                      .tr(),
                            ),
                          ),
                          (widget.isTrainer == true)
                              ? SizedBox(
                                  height: 10,
                                )
                              : Container(),
                          (widget.isTrainer == true)
                              ? TextFormField(
                                  onChanged: (value) {
                                    userID = value;
                                  },
                                  decoration: InputDecoration(
                                      contentPadding:
                                          new EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 0),
                                      labelText: (MediaQuery.of(context)
                                                  .size
                                                  .height >
                                              740)
                                          ? ''
                                          : 'UserID',
                                      border: InputBorder.none,
                                      fillColor: Color(0xfff3f3f4),
                                      filled: true),
                                  keyboardType: TextInputType.emailAddress,
                                  autovalidate: false,
                                  autocorrect: false,
                                  validator: (value) {
                                    if (value.isEmpty)
                                      return "_Creacion_Entrenamiento.introduce_tiempo_de_descanso"
                                          .tr();
                                    if (int.tryParse(value) == null)
                                      return "_Creacion_Entrenamiento.introduce_numero_entero"
                                          .tr();
                                  },
                                )
                              : Container(),
                          SizedBox(
                            height: 100,
                          ),
                          FadeAnimation(
                              2,
                              AnimatedBuilder(
                                animation: _scaleController,
                                builder: (context, child) =>
                                    Transform.scale(
                                        scale: _scaleAnimation.value,
                                        child: Center(
                                          child: AnimatedBuilder(
                                            animation: _widthController,
                                            builder: (context, child) =>
                                                Container(
                                              width: _widthAnimation.value,
                                              height: 80,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50),
                                                  color: Colors.orange
                                                      .withOpacity(.5)),
                                              child: InkWell(
                                                onTap: () {
                                                  if (nombreEntrenamiento ==
                                                      null)
                                                    _error(context);
                                                  else {
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            new FocusNode());
                                                    _scaleController
                                                        .forward();
                                                  }
                                                },
                                                child: Stack(
                                                    children: <Widget>[
                                                      AnimatedBuilder(
                                                        animation:
                                                            _positionController,
                                                        builder: (context,
                                                                child) =>
                                                            Positioned(
                                                          left:
                                                              _positionAnimation
                                                                  .value,
                                                          child:
                                                              AnimatedBuilder(
                                                            animation:
                                                                _scale2Controller,
                                                            builder: (context, child) => Transform.scale(
                                                                scale: _scale2Animation.value,
                                                                child: Container(
                                                                    width: 60,
                                                                    height: 60,
                                                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xffe46b10)),
                                                                    child: hideIcon == false
                                                                        ? Icon(
                                                                            Icons.arrow_forward,
                                                                            color: Color.fromRGBO(3, 9, 23, 1),
                                                                          )
                                                                        : Container()
                                                                    // Navigator.of(context).pushReplacementNamed(VideoSplashScreen.routename)
                                                                    // VideoSplashScreen(),
                                                                    )),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        )),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
