import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:flutter/material.dart';
import './pie_chart_sample1.dart';
import './bar_chart_sample3.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:auto_size_text/auto_size_text.dart';

class PieChartPage2 extends StatelessWidget {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final String musculo;
  PieChartPage2(this.mesocicloEntrenamiento, this.musculo);
  final Color barColor = Colors.white;
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final double width = 22;
  final RepoEstadisticas repoEstadisticas = RepoEstadisticas();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listaEjerciciosPrimarios;
    List<Map<String, dynamic>> listaEjerciciosSecundarios;
    Map<String, int> frecuencia;
    int frecuenciaMusculo;
    frecuencia = repoEstadisticas.calcularFrecuencia(mesocicloEntrenamiento);
    frecuenciaMusculo =
        repoEstadisticas.calcularFrecuenciaGrupoMuscular(frecuencia, musculo);
    listaEjerciciosPrimarios =
        repoEstadisticas.calcularEjerciciosQueTrabajanGrupoMuscular(
            mesocicloEntrenamiento, musculo, 1);
    listaEjerciciosSecundarios =
        repoEstadisticas.calcularEjerciciosQueTrabajanGrupoMuscular(
            mesocicloEntrenamiento, musculo, 2);
    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<PaginaprincipalBloc>(context)
              .add(UserHaAcabadoDeVisualizarEstadisticas());
          return false;
        },
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: (MediaQuery.of(context).size.height < 550)
                    ? 10
                    : (MediaQuery.of(context).size.height < 600)
                        ? 20
                        : 30,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                        (Platform.isIOS)
                            ? Icons.arrow_back_ios
                            : Icons.arrow_back,
                        color: Color.fromRGBO(3, 9, 40, 1)),
                    onPressed: () {
                      BlocProvider.of<PaginaprincipalBloc>(context)
                          .add(UserHaAcabadoDeVisualizarEstadisticas());
                    },
                  ),
                  Text(
                   repoEstadisticas.traducirGrupoMuscular(musculo),
                    style: TextStyle(
                        color: Color.fromRGBO(3, 9, 40, 1),
                        fontSize:
                            (MediaQuery.of(context).size.width < 370) ? 16 : 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  (MediaQuery.of(context).size.height < 550)
                      ? Text(
                          "_Estadisticas_Individuales.frecuencia".tr(args: [frecuenciaMusculo.toString()]),
                          style: TextStyle(
                              color: Color.fromRGBO(3, 9, 40, 1),
                              fontSize:
                                  (MediaQuery.of(context).size.width < 370)
                                      ? 16
                                      : 30,
                              fontWeight: FontWeight.bold),
                        )
                      : Container(),
                ],
              ),
              InkWell(
                onTap: () {
                //   final popup = BeautifulPopup(
                //     context: context,
                //     template: TemplateTerm,
                //   );
                //   popup.show(
                //     title: "_Estadisticas_Individuales.musculo_en".tr(args: [musculo]),
                //     content: Container(
                //       child: Column(
                //         children: listaEjerciciosPrimarios
                //             .map((e) => (e.values.first.toString() != '[]')
                //                 ? Column(
                //                     children: <Widget>[
                //                       Text("_Estadisticas_Individuales.ejercicios_que_trabajan_musculo".tr(args: [(int.parse(e.keys.toString().replaceAll(new RegExp(r'[^\w\s]+'), '')) + 1).toString(),e.values.first.toString()])
                //                               .replaceAll('[', '')
                //                               .replaceAll(']', ''),
                //                           style: TextStyle(
                //                               fontSize: (MediaQuery.of(context)
                //                                           .size
                //                                           .width <
                //                                       280)
                //                                   ? 12
                //                                   : 16)),
                //                       SizedBox(height: 5)
                //                     ],
                //                   )
                //                 : Container())
                //             .toList(),
                //       ),
                //     ),
                //     actions: [
                //       popup.button(
                //         label: "_Estadisticas_Individuales.cerrar".tr(),
                //         onPressed: Navigator.of(context).pop,
                //       ),
                //     ],
                //   );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Row(
                    children: <Widget>[
                      (MediaQuery.of(context).size.width < 370)
                          ? Container(
                              child: AutoSizeText(
                              "_Estadisticas_Individuales.trabajo_primario_con".tr(),
                              maxFontSize: 16,
                              minFontSize: 8,
                              maxLines: 1,
                            ))
                          : Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: AutoSizeText(
                                  "_Estadisticas_Individuales.ejercicios_trabajo_primario".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(3, 9, 40, 1),
                                    fontSize: 16,
                                  ),
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                  maxLines: 1),
                            ),
                      SizedBox(width: 3),
                      Text(
                        "_Estadisticas_Individuales.ver".tr(),
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  // final popup = BeautifulPopup(
                  //   context: context,
                  //   template: TemplateTerm,
                  // );
                  // popup.show(
                  //   title: "_Estadisticas_Individuales.musculo_en".tr(args: [musculo]),
                  //   content: Column(
                  //     children: listaEjerciciosSecundarios
                  //         .map((e) => (e.values.first.toString() != '[]')
                  //             ? Column(
                  //                 children: <Widget>[
                  //                   Text(
                  //                     "_Estadisticas_Individuales.ejercicios_que_trabajan_musculo".tr(args: [(int.parse(e.keys.toString().replaceAll(new RegExp(r'[^\w\s]+'), '')) + 1).toString(),e.values.first.toString()])
                  //                         .replaceAll('[', '')
                  //                         .replaceAll(']', ''),
                  //                     style: TextStyle(
                  //                         fontSize: (MediaQuery.of(context)
                  //                                     .size
                  //                                     .width <
                  //                                 280)
                  //                             ? 12
                  //                             : 16),
                  //                   ),
                  //                   SizedBox(height: 5)
                  //                 ],
                  //               )
                  //             : Container())
                  //         .toList(),
                  //   ),
                  //   actions: [
                  //     popup.button(
                  //       label: "_Estadisticas_Individuales.cerrar".tr(),
                  //       onPressed: Navigator.of(context).pop,
                  //     ),
                  //   ],
                  // );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    children: <Widget>[
                      (MediaQuery.of(context).size.width < 370)
                          ? Container(
                              child: AutoSizeText(
                              "_Estadisticas_Individuales.trabajo_secundario_con".tr(),
                              maxFontSize: 16,
                              minFontSize: 8,
                              maxLines: 1,
                            ))
                          : Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: AutoSizeText(
                                 "_Estadisticas_Individuales.ejercicios_trabajo_secundario".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(3, 9, 40, 1),
                                    fontSize: 16,
                                  ),
                                  maxFontSize: 16,
                                  minFontSize: 8,
                                  maxLines: 1),
                            ),
                      SizedBox(width: 3),
                      Text(
                         "_Estadisticas_Individuales.ver".tr(),
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      )
                      // Icon(Icons.info, color: Color.fromRGBO(3, 9, 40, 1))
                    ],
                  ),
                ),
              ),
              (MediaQuery.of(context).size.height > 550)
                  ? Container(
                      padding: EdgeInsets.only(left: 8, bottom: 4),
                      alignment: Alignment.centerLeft,
                      child: Text(
                         "_Estadisticas_Individuales.frecuencia".tr(args: [frecuenciaMusculo.toString()]),
                        style: TextStyle(
                            color: Color.fromRGBO(3, 9, 40, 1), fontSize: 16),
                      ))
                  : Container(),
              //  SizedBox(height: (MediaQuery.of(context).size.height<550) ? 0 : (MediaQuery.of(context).size.height<600) ? 2 : 7,),
              Column(
                children: <Widget>[
                  Center(
                    child: BarChartSample3(mesocicloEntrenamiento, musculo),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: PieChartSample1(mesocicloEntrenamiento, musculo),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: 8,
                          top: (MediaQuery.of(context).size.height > 600)
                              ? 8
                              : 4),
                      alignment: Alignment.centerLeft,
                      child: Text(
                         "_Estadisticas_Individuales.desliza".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(3, 9, 40, 1), fontSize: 12),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
