
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_DETALLE_EJERCICIO/detalle_ejercicio_bloc.dart';
import 'package:entrenaapp/models/Ejercicio.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/widgets/autosize_text.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class DetalleEjercicios extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final int numeroEjercicio;
  final int numeroDia;
  final Patron patron;
  final int semanaEntrenamiento;

  var url1;
  var url2;
  var url3;
  DetalleEjercicios(this.principalRepository, this.numeroDia,
      this.numeroEjercicio, this.patron, this.semanaEntrenamiento,
      {this.url1, this.url2, this.url3});
  @override
  _DetalleEjerciciosState createState() => _DetalleEjerciciosState();
}

class _DetalleEjerciciosState extends State<DetalleEjercicios> {
  var url1;
  String cargaSerien;
  String repeticionesSerien;
  String ejercicioSeleccionado;
  Ejercicio nuevoEjercicio;
  String comentario;
  int serieActual = 1;
  bool parar = false;
  List<bool> isCompleted = [];
  String repeticiones;
  int series;
  String rir;
  int tiempoDescanso;
  bool cambiarEjercicios = false;
  String musculosTrabajadosp1;
  String musculosTrabajadosp2;
  String musculosTrabajadosp3;
  String musculosTrabajadoss1;
  String musculosTrabajadoss2;
  String musculosTrabajadoss3;
  String musculosTrabajadoss4;
  String musculosTrabajadoss5;
  String musculosTrabajadoss6;

  DateTime alert;

  // Future<AudioPlayer> playLocalAsset() async {
  //   AudioCache cache = new AudioCache();
  //   //At the next line, DO NOT pass the entire reference such as assets/yes.mp3. This will not work.
  //   //Just pass the file name only.
  //   return await cache.play("finalSound.mp3");
  // }

  String formatDuration(Duration d) {
    String f(int n) {
      return n.toString().padLeft(2, '0');
    }

    // We want to round up the remaining time to the nearest second
    d += Duration(microseconds: 999999);
    return "${f(d.inMinutes)}:${f(d.inSeconds % 60)}";
  }

  actualizarImagen() {
    
    final Reference storageReference1 = FirebaseStorage.instance.ref().child(
        'fotosEjercicios/${widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento[widget.numeroDia].patrones[widget.numeroEjercicio].ejercicioSeleccionado.imagen[0]}');
    storageReference1.getDownloadURL().then((value) {
      Map<String, String> ejer = {
        '${widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento[widget.numeroDia].patrones[widget.numeroEjercicio].ejercicioSeleccionado.nombre}':
            value
      };
      widget.principalRepository.isInit.add(ejer);
      print('$value');
      if (mounted)
        setState(() {
          url1 = value;
        });
    });
  }

  List<Widget> _returnitems() {
    final List<Widget> items = [];
    bool contain=false;
widget.patron.ejercicios.forEach((element) {
  if (element.nombreEs==widget.patron.ejercicioSeleccionado.nombreEs)
  contain=true;
});
if (contain==false)
widget.patron.ejercicios.add(widget.patron.ejercicioSeleccionado);
    items.add(

        // (state !=  (mesocicloentrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones[mesocicloentrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones.indexOf(patron)].ejercicioSeleccionado.nombre)) ?
        // Center(child: CircularProgressIndicator()) :

        Container(
      // margin: EdgeInsets.symmetric(vertical: 2),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      // decoration: BoxDecoration(
      //     color: Colors.grey[800],
      //     borderRadius: BorderRadius.circular(20)),
      child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[100],
          ),
          child: Builder(
              builder: (context) => DropdownButton<String>(
                    // hint: Text('HOLA'),
                    // itemHeight: 20,
                    isExpanded: true,
                    // isDense: true,

                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(3, 9, 40, 1),
                    ),
                    iconSize: 24,
                    elevation: 8,

                    style: TextStyle(

                        // backgroundColor: Colors.red,
                        color: Color.fromRGBO(3, 9, 40, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),

                    // style: TextStyle(backgroundColor: Theme.of(context).accentColor),
                    items: widget.patron.ejercicios.map((Ejercicio ejercicio) {
                      return DropdownMenuItem<String>(
                          value: ejercicio.nombre,
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            height: 50,

                            // decoration: BoxDecoration(border:Border.all(width:2,color:Colors.grey[800])),
                            child: FittedBox(
                              child: Text(
                                '${ejercicio.nombre}',
                                textAlign: TextAlign.center,
                                // style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          ));
                    }).toList(),

                    onChanged: (String valorseleccionado) {
                      setState(() {
                        ejercicioSeleccionado = valorseleccionado;
                      });
                    },

                    value: ejercicioSeleccionado,
                  ))),
    ));

    return items;
  }

  _showError1(String message, BuildContext context, bool isComentario) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Detalle_Ejercicio.error".tr()),
        content: Text(message),
        actions: <Widget>[
          TextButton(
           child: Text("_Detalle_Ejercicio.ok".tr()),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _showDialogEditComentario(
    BuildContext context,
  ) {
    Alert(
        closeFunction: () {},
        context: context,
        title: "_Detalle_Ejercicio.añade_un_nuevo_comentario".tr(),
        content: TextField(
          textInputAction: TextInputAction.newline,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          onChanged: (text) {
            comentario = text;
          },
          decoration: InputDecoration(
            icon: Icon(Icons.fitness_center),
            labelText: "_Detalle_Ejercicio.añade_comentario".tr(),
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () async {
              BlocProvider.of<DetalleEjercicioBloc>(context).add(
                  HeAcabadoDeActualizarComentario(
                      widget.numeroDia,
                      widget.numeroEjercicio,
                      widget.semanaEntrenamiento,
                      comentario));
              Navigator.of(context).pop();
            },
            child: Text(
              "_Detalle_Ejercicio.guardar_cambios".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  void _showDialogAdd(BuildContext context, int serie) {
    Alert(
        closeFunction: () {
                  
         Navigator.pop(context);
       
          (!parar)
              ? BlocProvider.of<DetalleEjercicioBloc>(context)
                  .add(HeCancelado(serie + 1, parar: parar))
              : BlocProvider.of<DetalleEjercicioBloc>(context)
                  .add(HeCancelado(serie + 2, parar: parar));
        },
        context: context,
        title:"_Detalle_Ejercicio.introduce_carga_y_repeticiones".tr(args: [(serie+1).toString()]),
        content: Column(
          children: <Widget>[
            TextField(
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              // controller: _controller1,
              onChanged: (text) {
                cargaSerien = text;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.fitness_center),
                labelText: "_Detalle_Ejercicio.carga_serie".tr(args: [(serie+1).toString()]),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              // controller: _controller2,
              onChanged: (text) {
                repeticionesSerien = text;
              },

              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: "_Detalle_Ejercicio.repeticiones_serie".tr(args: [(serie+1).toString()]),
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () async {
              BlocProvider.of<DetalleEjercicioBloc>(context).add(
                  HeAcabadoDeActualizar(
                      widget.numeroDia,
                      widget.numeroEjercicio,
                      widget.semanaEntrenamiento,
                      serie,
                      cargaSerien,
                      repeticionesSerien,
                      parar: parar));
              setState(() {
                isCompleted[serie] = true;
              });
              Navigator.of(context).pop();
            },
            child: Text(
              "_Detalle_Ejercicio.guardar".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  @override
  void initState() {
    super.initState();

    ejercicioSeleccionado = widget.patron.ejercicioSeleccionado.nombre;
    url1 = widget.url1;
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
    List<bool> generarLista() {
      int i;
      List<bool> isCompleted = [];
      for (i = 0; i < series; i++) isCompleted.add(false);

      return isCompleted;
    }

    isCompleted = generarLista();

    alert = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
   

    Widget _buildWidgetNombreEjercicio(MediaQueryData mediaQuery) {
      return SizedBox(
        height: mediaQuery.size.height / 2.1,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      height: (widget.patron.configuracion.superserie != null ||
                              widget.patron.configuracion.serieAlterna != null)
                          ? 90
                          : 80,
                      width: mediaQuery.size.width - 64,
                      child: AutoSizeText(
                        "${widget.patron.ejercicioSeleccionado.nombre}",
                        style: TextStyle(
                          color: Color.fromRGBO(3, 9, 40, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: "CoralPen",
                          fontSize: 40.0,
                        ),
                        maxFontSize: 50,
                        minFontSize: 20,
                      ),
                    ),
                    top: (widget.patron.configuracion.superserie != null ||
                            widget.patron.configuracion.serieAlterna != null)
                        ? constraints.maxHeight - 90.0
                        : constraints.maxHeight - 80.0,
                  ),
                ],
              );
            },
          ),
        ),
      );
    }

    // Widget _buildWidgetCaracteristicas(BuildContext context,MediaQueryData mediaQuery,int serie,bool cargando,{isEdited=false}) {
    //   return
    // }
    Widget _cambiarEjerciciosBoton() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: AutoSizeText(
                "_Detalle_Ejercicio.¿no_puedes_hacer_este_ejercicio?".tr(),
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(3, 9, 40, 1),
                ),
                maxFontSize: 14,
                minFontSize: 6,
                maxLines: 1,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  cambiarEjercicios = true;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: AutoSizeText(
                  "_Detalle_Ejercicio.cambialo".tr(),
                  style: TextStyle(
                      color: Color(0xfff79c4f),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  maxFontSize: 14,
                  minFontSize: 6,
                  maxLines: 1,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget _buildWidgetActionAppBar(
        BuildContext context, MediaQueryData mediaQuery) {
      return Padding(
          padding: EdgeInsets.only(left: 20.0, top: 60.0),
          child: InkWell(
            onTap: () {

              
              Navigator.pop(
                context,
              );
            },
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(3, 9, 40, 1),
                  size: 22.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: new Text("_Detalle_Ejercicio.volver".tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        // fontFamily: 'sans-serif-light',
                        color: Color.fromRGBO(3, 9, 40, 1),
                      )),
                )
              ],
            ),
          ));
    }

    Widget _buildWidgetGIF(MediaQueryData mediaQuery) {
      return Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Container(
          width: double.infinity,
          height: mediaQuery.size.height / 3,
          child: Image.network('$url1'),
           
        
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(48.0),
            ),
            // image: DecorationImage(
            //   image: NetworkImage("${widget.url1}"),
            //   fit: BoxFit.contain,
            // )
          ),
        ),
      );
    }

    Widget _buildWidget2GIF(MediaQueryData mediaQuery) {
      return Row(
        children: <Widget>[
          Container(
            width: mediaQuery.size.width / 2,
            height: mediaQuery.size.height / 2.1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
              ),
              image: DecorationImage(
                image: NetworkImage("${widget.url1}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 2,
            height: mediaQuery.size.height / 2.1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
              ),
              image: DecorationImage(
                image: NetworkImage("${widget.url2}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildWidget3GIF(MediaQueryData mediaQuery) {
      return Row(
        children: <Widget>[
          Container(
            width: mediaQuery.size.width / 3,
            height: mediaQuery.size.height / 2.1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
              ),
              image: DecorationImage(
                image: NetworkImage("${widget.url1}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 3,
            height: mediaQuery.size.height / 2.1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
              ),
              image: DecorationImage(
                image: NetworkImage("${widget.url2}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 3,
            height: mediaQuery.size.height / 2.1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
              ),
              image: DecorationImage(
                image: NetworkImage("${widget.url3}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      );
    }

    musculosTrabajadosp1 = widget.patron.musculosTrabajados['Primario1'];
    musculosTrabajadosp2 = widget.patron.musculosTrabajados['Primario2'];
    musculosTrabajadosp3 = widget.patron.musculosTrabajados['Primario3'];
    musculosTrabajadoss1 = widget.patron.musculosTrabajados['Secundario1'];
    musculosTrabajadoss2 = widget.patron.musculosTrabajados['Secundario2'];
    musculosTrabajadoss3 = widget.patron.musculosTrabajados['Secundario3'];
    musculosTrabajadoss4 = widget.patron.musculosTrabajados['Secundario4'];
    musculosTrabajadoss5 = widget.patron.musculosTrabajados['Secundario5'];
    musculosTrabajadoss6 = widget.patron.musculosTrabajados['Secundario6'];

    var mediaQuery = MediaQuery.of(context);
   

    return BlocProvider<DetalleEjercicioBloc>(
      create: (context) => DetalleEjercicioBloc(widget.principalRepository),
      child: BlocListener<DetalleEjercicioBloc, DetalleEjercicioState>(
        listener: (context, state) {
          if (state is ActualizandoCargayRepeticiones) {
            _showDialogAdd(context, state.serie);
          }
          if (state is ActualizandoComentario) {
            _showDialogEditComentario(context);
          }
          if (state is OcurrioError) {
            if (state.serie != null) isCompleted[state.serie - 1] = false;
            _showError1("_Detalle_Ejercicio.ocurrio_error".tr(), context, false);
          }
          if (state is Acabado) {
            Navigator.pop(context);
          }
        },
        child: BlocBuilder<DetalleEjercicioBloc, DetalleEjercicioState>(
            builder: (BuildContext context, DetalleEjercicioState state) {
          if (state is DetalleEjercicioS) {
            // parar=state.parar;
            return 
            new WillPopScope(
        onWillPop: () async {
          if (widget.principalRepository.tarjetasDeVuelta == 0)
            {
             
 Navigator.pop(context);
                    }
          else {
       
            setState(() {
              widget.principalRepository.tarjetasDeVuelta = 0;
            });
          }

          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              (widget.patron.configuracion.superserie == 3)
                  ? _buildWidget3GIF(mediaQuery)
                  : (widget.patron.configuracion.superserie == 2 ||
                          widget.patron.configuracion.serieAlterna == 2)
                      ? _buildWidget2GIF(mediaQuery)
                      : _buildWidgetGIF(mediaQuery),
              _buildWidgetActionAppBar(context, mediaQuery),
              _buildWidgetNombreEjercicio(mediaQuery),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height / 2.1 - 20,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: ListView(children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "_Detalle_Ejercicio.objetivo".tr(),
                            style: TextStyle(
                              color: Color.fromRGBO(3, 9, 40, 1),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${widget.patron.objetivo}',
                            style: TextStyle(
                              color: Color.fromRGBO(3, 9, 40, 1),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width - 64,
                        child: (widget.patron.configuracion.superserie == 3)
                            ? Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Músculos Trabajados Ejercicio 1: $musculosTrabajadosp1 , $musculosTrabajadoss1 , $musculosTrabajadoss2 '
                                          .replaceAll(', null', ''),
                                      style: TextStyle(
                                        color: Color.fromRGBO(3, 9, 40, 1),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Músculos Trabajados Ejercicio 2: $musculosTrabajadosp2 , $musculosTrabajadoss3 , $musculosTrabajadoss4 '
                                          .replaceAll(', null', ''),
                                      style: TextStyle(
                                        color: Color.fromRGBO(3, 9, 40, 1),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Músculos Trabajados Ejercicio 3: $musculosTrabajadosp3 , $musculosTrabajadoss5 , $musculosTrabajadoss6 '
                                          .replaceAll(', null', ''),
                                      style: TextStyle(
                                        color: Color.fromRGBO(3, 9, 40, 1),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : (widget.patron.configuracion.superserie ==
                                        2 ||
                                    widget.patron.configuracion
                                            .serieAlterna ==
                                        2)
                                ? Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Músculos Trabajados Ejercicio 1: $musculosTrabajadosp1 , $musculosTrabajadoss1 , $musculosTrabajadoss2 '
                                              .replaceAll(', null', ''),
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Músculos Trabajados Ejercicio 2: $musculosTrabajadosp2 , $musculosTrabajadoss3 , $musculosTrabajadoss4 '
                                              .replaceAll(', null', ''),
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      (widget.patron.ejercicioSeleccionado
                                                  .descripcion !=
                                              '' && widget.patron.ejercicioSeleccionado.descripcion!=null)
                                          ? Text(
                                              "_Detalle_Ejercicio.consejo_profesional".tr(args: [widget.patron.ejercicioSeleccionado.descripcion]),
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    3, 9, 40, 1),
                                                fontSize: 16.0,
                                              ),
                                            )
                                          : Container(),
                                      Text(
                                        "_Detalle_Ejercicio.musculos_trabajados_forma_primaria".tr(args: [widget.principalRepository.traducirGrupoMuscular(musculosTrabajadosp1)]),
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(3, 9, 40, 1),
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      (musculosTrabajadoss1 != null ||
                                              musculosTrabajadoss2 != null)
                                          ? SizedBox(height: 10)
                                          : Container(),
                                      (musculosTrabajadoss1 != null ||
                                              musculosTrabajadoss2 != null)
                                          ? Text(
                                              "_Detalle_Ejercicio.musculos_trabajados_forma_secundaria".tr(args:[widget.principalRepository.traducirGrupoMuscular(musculosTrabajadoss1) , widget.principalRepository.traducirGrupoMuscular(musculosTrabajadoss2)])
                                                  .replaceAll(', null', ''),
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    3, 9, 40, 1),
                                                fontSize: 16.0,
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  )),
                    // child: Row(children: <Widget>[
                    //  Text('Musculos Trabajados:'),
                    //  SizedBox(width:5),
                    //  Container(
                    //    child: Column(children:[
                    //      Text('De forma primaria'),
                    //      Text('De forma secundaria'),
                    //    ]),
                    //  )

                    // ]),

                    ((!isCompleted[series - 1]) && (!state.cargando))
                        ? Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              (!parar)
                                  ? Row(
                                      children: <Widget>[
                                        Text(
                                          "_Detalle_Ejercicio.serie".tr(),
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        IconButton(
                                          icon: Icon(
                                            FontAwesomeIcons.minusCircle,
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                          ),
                                          onPressed: () {
                                              if ((state.serie > 1) &&
                                                (!parar)) {
                                              BlocProvider.of<
                                                          DetalleEjercicioBloc>(
                                                      context)
                                                  .add(ActualizarSerie(
                                                      state.serie - 1));
                                          
                                            }
                                          },
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '${state.serie}',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        IconButton(
                                          icon: Icon(
                                            FontAwesomeIcons.plusCircle,
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                          ),
                                          onPressed: () {
                                            if ((state.serie < series) &&
                                                (!parar)) {
                                              BlocProvider.of<
                                                          DetalleEjercicioBloc>(
                                                      context)
                                                  .add(ActualizarSerie(
                                                      state.serie + 1));
                                            }
                                          },
                                        ),
                                      ],
                                    )
                                  : Container(
                                      width: MediaQuery.of(context)
                                              .size
                                              .width -
                                          140,
                                      child: Text(
                                          "_Detalle_Ejercicio.apunta_carga_y_repeticiones".tr(),
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 16))),
                              (!parar)
                                  ? (!isCompleted[state.serie - 1])
                                      ? IconButton(
                                          icon: Icon(
                                            FontAwesomeIcons.solidEdit,
                                            size: 30,
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                          ),
                                          onPressed: () {
                                            BlocProvider.of<
                                                        DetalleEjercicioBloc>(
                                                    context)
                                                .add(QuieroActualizar(
                                                    state.serie - 1,
                                                    parar));
                                          },
                                        )
                                      : Icon(FontAwesomeIcons.check,
                                          size: 30, color: Colors.green)
                                  : (!isCompleted[state.serie - 2])
                                      ? IconButton(
                                          icon: Icon(
                                            FontAwesomeIcons.solidEdit,
                                            size: 30,
                                            color:
                                                Color.fromRGBO(3, 9, 40, 1),
                                          ),
                                          onPressed: () {
                                            BlocProvider.of<
                                                        DetalleEjercicioBloc>(
                                                    context)
                                                .add(QuieroActualizar(
                                                    state.serie - 2,
                                                    parar));
                                          },
                                        )
                                      : Icon(FontAwesomeIcons.check,
                                          size: 30, color: Colors.green),
                            ],
                          )
                        : (state.cargando)
                            ? Center(
                                child: LinearProgressIndicator(),
                              )
                            : Row(
                                children: <Widget>[
                                  Text(
                                     "_Detalle_Ejercicio.añade_un_comentario".tr(),
                                    style: TextStyle(
                                      color: Color.fromRGBO(3, 9, 40, 1),
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.solidEdit,
                                      size: 30,
                                      color: Color.fromRGBO(3, 9, 40, 1),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<DetalleEjercicioBloc>(
                                              context)
                                          .add(
                                              QuieroActualizarComentario());
                                    },
                                  )
                                ],
                              ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width - 64,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "_Detalle_Ejercicio.rango_de_repeticiones".tr(args: [repeticiones]),
                        style: TextStyle(
                          color: Color.fromRGBO(3, 9, 40, 1),
                          fontSize: 20.0,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: AutoSizeText(
                            (tiempoDescanso > 10)
                                ? "_Detalle_Ejercicio.descanso_seg".tr(args: [tiempoDescanso.toString()])
                                : "_Detalle_Ejercicio.descanso_min".tr(args: [tiempoDescanso.toString()]),
                            style: TextStyle(
                              color: Color.fromRGBO(3, 9, 40, 1),
                              fontSize: 20.0,
                            ),
                            maxFontSize: 20,
                            minFontSize: 10,
                            maxLines: 1,
                          ),
                        ),

                        TimerBuilder.scheduled([alert], builder: (context) {
                          // This function will be called once the alert time is reached
                          var now = DateTime.now();
                          var reached = now.compareTo(alert) >= 0;

                          return Container(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                !reached
                                    ? TimerBuilder.periodic(
                                        Duration(seconds: 1),
                                        alignment: Duration.zero,
                                        builder: (context) {
                                        // This function will be called every second until the alert time
                                        var now = DateTime.now();
                                        var remaining =
                                            alert.difference(now);
                                        return Text(
                                          formatDuration(remaining),
                                          style: TextStyle(fontSize: 30),
                                        );
                                      })
                                    : (state.serie < series)
                                        ? RaisedButton(
                                            child: Text(
                                              "_Detalle_Ejercicio.iniciar".tr(),
                                              style:
                                                  TextStyle(fontSize: 16),
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                parar = true;
                                              });

                                              if (state.serie < series) {
                                                print(state.serie);
                                                BlocProvider.of<
                                                            DetalleEjercicioBloc>(
                                                        context)
                                                    .add(ActualizarSerie(
                                                        state.serie + 1,
                                                        parar: true));
                                                print(state.serie);
                                              }

                                              alert = DateTime.now().add(
                                                  Duration(
                                                      seconds: (tiempoDescanso >
                                                              10)
                                                          ? tiempoDescanso
                                                          : tiempoDescanso *
                                                              60));

                                              // Future.delayed(Duration(
                                              //         seconds: (tiempoDescanso >
                                              //                 10)
                                              //             ? tiempoDescanso -
                                              //                 9
                                              //             : (tiempoDescanso *
                                              //                     60) -
                                              //                 9))
                                              //     .then((value) async {
                                              //   await playLocalAsset();
                                              // });

                                              Future.delayed(Duration(
                                                      seconds: (tiempoDescanso >
                                                              10)
                                                          ? tiempoDescanso
                                                          : tiempoDescanso *
                                                              60))
                                                  .then((value) {
                                               if (mounted)
                                                setState(() {
                                                  parar = false;
                                                  //  isCompleted[state.serie-1]=false;
                                                });
                                              });
                                            },
                                          )
                                        : Container(),
                                (MediaQuery.of(context).size.width > 360 &&
                                        state.serie < series)
                                    ? Icon(
                                        reached
                                            ? Icons.alarm_on
                                            : Icons.alarm,
                                        color: reached
                                            ? Colors.red
                                            : Colors.green,
                                        size: 48,
                                      )
                                    : Container(),
                              ],
                            ),
                          );
                        }),

                        // IconButton(
                        //   icon: Icon(
                        //     Icons.play_arrow,
                        //     size: 40,
                        //     color:Color.fromRGBO(3, 9, 40, 1),
                        //   ),

                        //   onPressed: () {

                        //   },
                        // ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 64,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '$rir',
                            style: TextStyle(
                              color: Color.fromRGBO(3, 9, 40, 1),
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    (cambiarEjercicios == false)
                        ? _cambiarEjerciciosBoton()
                        : Container(),

                    if (cambiarEjercicios == true)
                      AutoSizeText(
                        "_Detalle_Ejercicio.ejercicios_similares".tr(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(3, 9, 40, 1),
                        ),
                        maxFontSize: 18,
                        minFontSize: 4,
                        maxLines: 1,
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    if (cambiarEjercicios == true) ..._returnitems(),
                    if (cambiarEjercicios == true)
                      SizedBox(
                        height: 10,
                      ),
                    if (cambiarEjercicios == true)
                      RaisedButton(
                          child: Text(
                            "_Detalle_Ejercicio.guardar".tr(),
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () async {
                            widget
                                    .principalRepository
                                    .historialEntrenamiento
                                    .historialEntrenamiento[widget
                                            .principalRepository
                                            .historialEntrenamiento
                                            .historialEntrenamiento
                                            .length -
                                        1]
                                    .diasEntrenamiento[widget.numeroDia]
                                    .patrones[widget.numeroEjercicio]
                                    .ejercicios
                                    .forEach((ej) async {
                                    if (ej.nombre ==
                                        ejercicioSeleccionado) {
                                      nuevoEjercicio = ej;
                                      try {
                                        await widget.principalRepository
                                            .cambiarEjercicio(
                                                widget.numeroDia,
                                                widget.numeroEjercicio,
                                                nuevoEjercicio);
                                   
                                      } catch (error) {
                                        _showError1(
                                            "_Detalle_Ejercicio.error_actualizando_ejercicio".tr(),
                                            context,
                                            false);
                                      }

                                      actualizarImagen();
                                    }
                                    setState(() {
                                      cambiarEjercicios = false;
                                    });
                                  });
                       
                          }),
                  ]),
                ),
              ),
              // _buildWidgetListSong(mediaQuery),
            ],
          ),
        ));
          }
          // else

          // if (state is ActualizandoCargayRepeticiones)
          // return
          // Scaffold(
          //  backgroundColor: Colors.white,
          //   body: Stack(
          //     children: <Widget>[
          //       _buildWidgetGIF(mediaQuery),

          //       _buildWidgetNombreEjercicio(mediaQuery),
          //       _buildWidgetCaracteristicas(context,mediaQuery,state.serie,state.parar,state.cargando),
          //       // _buildWidgetListSong(mediaQuery),
          //     ],
          //   ),
          // );
          else if (state is Acabando) {
            return Container(
                color: Colors.white,
                child: Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                )));
          } else {
            (!parar)
                ? BlocProvider.of<DetalleEjercicioBloc>(context)
                    .add(ActualizarSerie(serieActual, parar: parar))
                : BlocProvider.of<DetalleEjercicioBloc>(context)
                    .add(ActualizarSerie(serieActual + 1, parar: parar));
          }

          return Container(color: Colors.white);
        }),
      ),
    );
  }
}
