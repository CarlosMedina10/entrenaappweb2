import 'dart:io';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:flutter/material.dart';
import './bar_chart_sample2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:easy_localization/easy_localization.dart';
class BarChartPage2 extends StatelessWidget {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int semanaEntrenamiento;
  BarChartPage2(this.mesocicloEntrenamiento, this.semanaEntrenamiento);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<PaginaprincipalBloc>(context)
              .add(UserHaAcabadoDeVisualizarEstadisticas());
          return false;
        },
        child: Container(
          color: const Color.fromRGBO(3, 9, 40, 1),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: (MediaQuery.of(context).size.height < 550)
                    ? 15
                    : (MediaQuery.of(context).size.height < 600)
                        ? 30
                        : 45,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                          (Platform.isIOS)
                              ? Icons.arrow_back_ios
                              : Icons.arrow_back,
                          color: Colors.grey[300]),
                      onPressed: () {
                        BlocProvider.of<PaginaprincipalBloc>(context)
                            .add(UserHaAcabadoDeVisualizarEstadisticas());
                      },
                    ),
                    Text(
                      "_Estadisticas_Globales.frecuencia".tr(),
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon:
                            Icon(Icons.info, color: Colors.grey[300], size: 30),
                        onPressed: () {
                         
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height < 550)
                    ? 10
                    : (MediaQuery.of(context).size.height < 600)
                        ? 15
                        : 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BarChartSample2(
                      mesocicloEntrenamiento, semanaEntrenamiento),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      left: 8,
                      top: (MediaQuery.of(context).size.height > 600) ? 8 : 4),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "_Estadisticas_Globales.desliza".tr(),
                    style: TextStyle(color: Colors.grey[50], fontSize: 12),
                  ))
            ],
          ),
        ));
  }
}
