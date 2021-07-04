import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int semanaEntrenamiento;

  PieChartSample2(this.mesocicloEntrenamiento, this.semanaEntrenamiento);
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

RepoEstadisticas repoEstadisticas = RepoEstadisticas();

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex;
  Map<String, int> tiposTrabajo;
  int sumaTotal;
  int fuerza;
  int hipertrofia;
  int estresMetabolico;
  double pFuerza;
  double pHipertrofia;
  double pEstresMetabolico;
  int semana;
void initState() {
    
  
  semana=widget.semanaEntrenamiento;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    tiposTrabajo = repoEstadisticas.calcularTiposDeTrabajo(
        widget.mesocicloEntrenamiento, semana);

    sumaTotal = tiposTrabajo['Fuerza'] +
        tiposTrabajo['Hipertrofia'] +
        tiposTrabajo['Estres Metabolico'];
    fuerza = tiposTrabajo['Fuerza'];
    hipertrofia = tiposTrabajo['Hipertrofia'];
    estresMetabolico = tiposTrabajo['Estres Metabolico'];
    pFuerza = (fuerza / sumaTotal) * 100;
    pHipertrofia = (hipertrofia / sumaTotal) * 100;
    pEstresMetabolico = (estresMetabolico / sumaTotal) * 100;
    

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
         height: (MediaQuery.of(context).size.height<550) ? MediaQuery.of(context).size.height*0.75 : MediaQuery.of(context).size.height*0.7,
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      "_Estadisticas_Globales.porcentaje_de_trabajo".tr(),
                      style: TextStyle(
                          color: Color.fromRGBO(3, 9, 40, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                         Expanded(
                          child: PieChart(
                            PieChartData(
                                pieTouchData: PieTouchData(
                                    touchCallback: (pieTouchResponse) {
                                  // setState(() {
                                  //   if (pieTouchResponse.touchInput
                                  //           is FlLongPressEnd ||
                                  //       pieTouchResponse.touchInput
                                  //           is FlPanEnd) {
                                  //     touchedIndex = -1;
                                  //   } else {
                                  //     touchedIndex = pieTouchResponse
                                  //         .touchedSectionIndex;
                                  //   }
                                  // });
                                }),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                sectionsSpace: 0,
                                centerSpaceRadius: 40,
                                sections: showingSections()),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  <Widget>[
                            Indicator(
                              color: Color.fromRGBO(3, 9, 40, 0.9),
                              text: "_Estadisticas_Globales.fuerza".tr(),
                              isSquare: true,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Indicator(
                              color: Colors.orange,
                              text: "_Estadisticas_Globales.hipertrofia".tr(),
                              isSquare: true,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Indicator(
                              color: Colors.pink,
                              text: "_Estadisticas_Globales.estres_metabolico".tr(),
                              isSquare: true,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                 
            Container(
                             height: MediaQuery.of(context).size.height*0.15-10,
                              // height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height * 0.925,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: 20),
                                  IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    color: Color.fromRGBO(3, 9, 40, 1),
                                    onPressed: () {
                                       
                                      (semana>1) ? setState(() {
                                           semana=semana-1;
                                         }) : semana=semana;
                                      
                                    },
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange[300]),
                                    height: 35,
                                    child: FittedBox(
                                        child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text(
                                                "_Estadisticas_Globales.numero_semana".tr(args: [semana.toString()]),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(3, 9, 40, 1),)))),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    color: Color.fromRGBO(3, 9, 40, 1),
                                    onPressed: () {

                                      (semana<4) ? setState(() {
                                           semana=semana+1;
                                         })  : semana=semana;
                                     
                                    },
                                  ),
                                  
                                ],
                              ),
                            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    // ignore: missing_return
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color.fromRGBO(3, 9, 40, 0.95),
            value: pFuerza,
            title: '${pFuerza.toStringAsFixed(1)} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.orange,
            value: pHipertrofia,
            title: '${pHipertrofia.toStringAsFixed(1)} % ',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.pink,
            value: pEstresMetabolico,
            title: '${pEstresMetabolico.toStringAsFixed(1)} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
      }
    });
  }
}
