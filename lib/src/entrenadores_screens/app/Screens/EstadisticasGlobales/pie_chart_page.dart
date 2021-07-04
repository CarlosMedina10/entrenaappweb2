import 'dart:io';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import './pie_chart_sample2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PieChartPage extends StatelessWidget {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int semanaEntrenamiento;
  PieChartPage(this.mesocicloEntrenamiento, this.semanaEntrenamiento);
  final Color barColor = Colors.white;
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final double width = 22;

  @override
  Widget build(BuildContext context) {
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
                        color: Color.fromRGBO(3, 9, 40, 1),
                      ),
                      onPressed: () {
                        BlocProvider.of<PaginaprincipalBloc>(context)
                            .add(UserHaAcabadoDeVisualizarEstadisticas());
                      },
                    ),
                    Text(
                      "_Estadisticas_Globales.tipos_de_trabajo".tr(),
                      style: TextStyle(
                          color: Color.fromRGBO(3, 9, 40, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
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
                  child: PieChartSample2(
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
                    style: TextStyle(
                        color: Color.fromRGBO(3, 9, 40, 1), fontSize: 12),
                  ))
            ],
          ),
        ));
  }
}
