import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../EstadisticasGlobales/indicator.dart';

class PieChartSample1 extends StatefulWidget {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final String musculo;
  

  PieChartSample1(this.mesocicloEntrenamiento,this.musculo);
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

RepoEstadisticas repoEstadisticas = RepoEstadisticas();

class PieChart2State extends State<PieChartSample1> {
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
    
  
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    tiposTrabajo = repoEstadisticas.calcularTiposDeTrabajoPorGrupoMuscular(
        widget.mesocicloEntrenamiento, widget.musculo);
    
    sumaTotal = tiposTrabajo['Fuerza'] +
        tiposTrabajo['Hipertrofia'] +
        tiposTrabajo['Estres Metabolico'];
    fuerza = tiposTrabajo['Fuerza'];
    hipertrofia = tiposTrabajo['Hipertrofia'];
    estresMetabolico = tiposTrabajo['Estres Metabolico'];
    pFuerza = (sumaTotal!=0) ? (fuerza / sumaTotal) * 100 : 33.3;
    pHipertrofia = (sumaTotal!=0) ? (hipertrofia / sumaTotal) * 100 : 33.3;
    pEstresMetabolico = (sumaTotal!=0) ? (estresMetabolico / sumaTotal) * 100 : 33.3;
   

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
         height: (MediaQuery.of(context).size.height<550) ? MediaQuery.of(context).size.height*0.33 : MediaQuery.of(context).size.height*0.33,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              
              const SizedBox(
                height: 2,
              ),
              Expanded(
                child: 
                (sumaTotal == 0) ? Center(child: Text("_Estadisticas_Individuales.no_hay_series".tr(),style: TextStyle(color:Color.fromRGBO(3, 9, 40, 1),fontSize: 16),))
                :
                Column(
                  children: <Widget>[
                     Center(
              child: Text(
                "_Estadisticas_Individuales.distribucion_del_trabajo".tr(args: [repoEstadisticas.traducirGrupoMuscular(widget.musculo),]),
                style: TextStyle(
                    color:Color.fromRGBO(3, 9, 40, 1) , fontSize: 16, fontWeight: FontWeight.bold),
              ),),
               const SizedBox(
                height: 25,
              ),
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
                            centerSpaceRadius: 0,
                            sections: showingSections()),
                      ),
                    ),
                   
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Indicator(
                          color: Color.fromRGBO(3, 9, 40, 0.9),
                          text: "_Estadisticas_Individuales.fuerza".tr(),
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Indicator(
                          color: Colors.orange,
                          text: "_Estadisticas_Individuales.hipertrofia".tr(),
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Indicator(
                          color: Colors.pink,
                          text: "_Estadisticas_Individuales.estres_metabolico".tr(),
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                   
                  ],
                ),
              ),
             
           
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 12.5 : 8;
      final double radius =(MediaQuery.of(context).size.height>600) ? isTouched ? 90 : 75 :(MediaQuery.of(context).size.height>600) ? isTouched ? 75 : 62.5 :(MediaQuery.of(context).size.height>550) ? isTouched ? 65 : 55  :isTouched ? 55 : 45 ;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color.fromRGBO(3, 9, 40, 0.95),
            value:  pFuerza  ,
            title: '${pFuerza.toStringAsFixed(1)} %' ,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.orange,
            value:  pHipertrofia  ,
            title: '${pHipertrofia.toStringAsFixed(1)} % '  ,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.pink,
            value:  pEstresMetabolico ,
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
