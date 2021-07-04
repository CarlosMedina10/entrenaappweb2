
import 'package:community_material_icon/community_material_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_VISUALIZACION_ENTRENAMIENTO/visualizacionentrenamiento_bloc.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:folding_cell/folding_cell.dart';


class VisualizacionDiaDeEntrenamiento extends StatelessWidget {
  final PrincipalRepository principalRepository;
  final int numeroMesociclo;
  final int semanaEntrenamiento;
  final int numeroDia;

  VisualizacionDiaDeEntrenamiento(this.principalRepository,
      this.numeroMesociclo, this.semanaEntrenamiento, this.numeroDia);

  @override
  Widget build(BuildContext context) {
    Widget makeListTile(
        BuildContext context, semanaEntrenamiento, Patron patron) {
      String repeticiones;
      int series;
      String rir;
      int tiempoDescanso;

      if (semanaEntrenamiento == 1) {
        repeticiones = patron.configuracion.repeticiones.semana1;
        series = patron.configuracion.series.semana1;
        rir = patron.configuracion.rir.semana1;
        tiempoDescanso = patron.configuracion.tiempoDeDescanso.semana1;
      } else if (semanaEntrenamiento == 2) {
        repeticiones = patron.configuracion.repeticiones.semana2;
        series = patron.configuracion.series.semana2;
        rir = patron.configuracion.rir.semana2;
        tiempoDescanso = patron.configuracion.tiempoDeDescanso.semana2;
      } else if (semanaEntrenamiento == 3) {
        repeticiones = patron.configuracion.repeticiones.semana3;
        series = patron.configuracion.series.semana3;
        rir = patron.configuracion.rir.semana3;
        tiempoDescanso = patron.configuracion.tiempoDeDescanso.semana3;
      } else if (semanaEntrenamiento == 4) {
        repeticiones = patron.configuracion.repeticiones.semana4;
        series = patron.configuracion.series.semana4;
        rir = patron.configuracion.rir.semana4;
        tiempoDescanso = patron.configuracion.tiempoDeDescanso.semana4;
      }
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child:
            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoSizeText(
              '${patron.ejercicioSeleccionado.nombre}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              maxFontSize: 16,
              minFontSize: 10,
              maxLines: 3,
            ),
            Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text("_Historial.series_x_repeticiones".tr(args: [series.toString(),repeticiones]),
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text(
                    (tiempoDescanso >= 10)
                        ? "_Historial.tiempo_descanso_seg".tr(args: [tiempoDescanso.toString()])
                        : "_Historial.tiempo_descanso_min".tr(args: [tiempoDescanso.toString()]),
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text('$rir',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            FittedBox(
              child: InkWell(
                onTap: () {
                  
                  SimpleFoldingCellState foldingCellState =
                      context.findAncestorStateOfType();
                  foldingCellState?.toggleFold();
                },
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("_Historial.ver_apuntes".tr(),
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(width: 5),
                      Icon(
                        CommunityMaterialIcons.note_text,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
     
    }

    Widget makeListTileBottom(
        BuildContext context, semanaEntrenamiento, Patron patron) {
      List<String> apuntesCarga;
      List<String> apuntesReps;
      String comentarios;
      int nSeries;
      int i;

      if (semanaEntrenamiento == 1) {
        apuntesCarga = patron.ejercicioSeleccionado.apuntescarga.semana1;
        apuntesReps = patron.ejercicioSeleccionado.apuntesreps.semana1;
        comentarios = patron.ejercicioSeleccionado.comentarios.semana1;
        nSeries = patron.configuracion.series.semana1;
      } else if (semanaEntrenamiento == 2) {
        apuntesCarga = patron.ejercicioSeleccionado.apuntescarga.semana2;
        apuntesReps = patron.ejercicioSeleccionado.apuntesreps.semana2;
        comentarios = patron.ejercicioSeleccionado.comentarios.semana2;
        nSeries = patron.configuracion.series.semana2;
      } else if (semanaEntrenamiento == 3) {
        apuntesCarga = patron.ejercicioSeleccionado.apuntescarga.semana3;
        apuntesReps = patron.ejercicioSeleccionado.apuntesreps.semana3;
        comentarios = patron.ejercicioSeleccionado.comentarios.semana3;
        nSeries = patron.configuracion.series.semana3;
      } else if (semanaEntrenamiento == 4) {
        apuntesCarga = patron.ejercicioSeleccionado.apuntescarga.semana4;
        apuntesReps = patron.ejercicioSeleccionado.apuntesreps.semana4;
        comentarios = patron.ejercicioSeleccionado.comentarios.semana4;
        nSeries = patron.configuracion.series.semana4;
      }
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
  
        child: Container(
          child: ListView(
            children: <Widget>[
              for (i = 1; i <= nSeries; i++)
                Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: ((apuntesReps[i - 1] != 'no') &&
                            (apuntesCarga[i - 1] != 'no'))
                        ? Text(
                           "_Historial.serie_apuntada".tr(args: [i.toString(),apuntesReps[i - 1],apuntesCarga[i - 1]]),
                            style: TextStyle(color: Colors.white, fontSize: 14))
                        : Text("_Historial.serie_vacia".tr(args: [i.toString(),]),
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
              Padding(
                  padding: EdgeInsets.only(top: 2.0),
                  child: (comentarios != 'null')
                      ? Text("_Historial.comentarios_apuntados".tr(args: [comentarios]),
                          style: TextStyle(color: Colors.white, fontSize: 14))
                      : Text("_Historial.no_hay_comentarios".tr(),
                          style: TextStyle(color: Colors.white, fontSize: 14))),
            ],
          ),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
      );
    }

    Widget makeCard(int semanaEntrenamiento, Patron patron) {
      return Builder(builder: (context) {
        return Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 9, 40, 0.9),
            ),
            child: makeListTile(context, semanaEntrenamiento, patron),
          ),
        );
      });
    }

    Widget makeInnerBottomWidget(int semanaEntrenamiento, Patron patron) {
      return Builder(builder: (context) {
        return Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 9, 40, 0.9),
            ),
            child: makeListTileBottom(context, semanaEntrenamiento, patron),
          ),
        );
      });
    }

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView(
          padding: const EdgeInsets.only(bottom: 0),
          scrollDirection: Axis.vertical,
          primary: true,
          children: principalRepository
              .historialEntrenamiento
              .historialEntrenamiento[numeroMesociclo]
              .diasEntrenamiento[numeroDia]
              .patrones
              .map((patron) {
            return SimpleFoldingCell.create(
              frontWidget: makeCard(
                semanaEntrenamiento,
                patron,
              ),
            
              innerWidget: makeInnerBottomWidget(
                semanaEntrenamiento,
                patron,
              ),
              cellSize: Size(MediaQuery.of(context).size.width, 160),
              // padding: EdgeInsets.all(15),

              animationDuration: Duration(milliseconds: 300),
              borderRadius: 10,
              // onOpen: () {

              //  setState(() {
              //    isVuelta=true;
              //  }); },
              // onClose: () {
              //   setState(() {
              //    isVuelta=false;
              //  });}
            );
          }).toList()

          // ListView.builder(
          //   scrollDirection: Axis.vertical,
          //   shrinkWrap: true,
          //   itemCount: lessons.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return makeCard(lessons[index]);
          //   },
          // ),
          ),
    );

    // final makeBottom = Container(
    //   height: 55.0,
    //   child: BottomAppBar(
    //     color: Color.fromRGBO(58, 66, 86, 1.0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: <Widget>[
    //         IconButton(
    //           icon: Icon(Icons.home, color: Colors.white),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.blur_on, color: Colors.white),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.hotel, color: Colors.white),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.account_box, color: Colors.white),
    //           onPressed: () {},
    //         )
    //       ],
    //     ),
    //   ),
    // );
    final topAppBar = AppBar(
      leading: IconButton(
        icon: Icon( Icons.arrow_back,
            color: Color(0xffe46b10)),
        onPressed: () {
          BlocProvider.of<VisualizacionentrenamientoBloc>(context).add(
              UserVuelveAPaginaInicial(numeroMesociclo,
                  semana: semanaEntrenamiento));
        },
      ),
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(3, 9, 40, 1),
      title: Text(
        "_Historial.semana_y_dia".tr(args: [semanaEntrenamiento.toString(),principalRepository.historialEntrenamiento.historialEntrenamiento[numeroMesociclo].diasEntrenamiento[numeroDia].nombreentrenamiento]),
        // style: GoogleFonts.portLligatSans(
        //   fontSize: 25,
        //   fontWeight: FontWeight.w700,
        //   color: Color(0xffe46b10),
        // ),
      ),
 
      centerTitle: true,
    );

    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<VisualizacionentrenamientoBloc>(context).add(
              UserVuelveAPaginaInicial(numeroMesociclo,
                  semana: semanaEntrenamiento));
          return false;
        },
        child: Scaffold(
          backgroundColor: Color.fromRGBO(3, 9, 47, 1),
          appBar: topAppBar,
          body: makeBody,
        ));
  }
}
