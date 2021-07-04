import 'dart:async';
import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BarChartSample3 extends StatefulWidget {
 
final MesocicloEntrenamiento mesocicloEntrenamiento;
final String musculo ;

BarChartSample3(this.mesocicloEntrenamiento,this.musculo);
  
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}
    RepoEstadisticas repoEstadisticas= RepoEstadisticas();
    
    
    // Map<String,int>  tiposTrabajo1= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,1);
    // Map<String,int>  tiposTrabajo2= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,2);
    // Map<String,int>  tiposTrabajo3= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,3);
    // Map<String,int>  tiposTrabajo4= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,4);



class BarChartSample3State extends State<BarChartSample3> {

  
  // Map<String,int> frecuencia = repoEstadisticas.calcularFrecuencia(mesocicloEntrenamiento);
    
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

int touchedIndex1;
int touchedIndex2;
 int semana;
 



    Map<String,int> seriesP1;
    Map<String,int> seriesP2;
    Map<String,int> seriesP3;
    Map<String,int> seriesP4;
    Map<String,int> seriesS1;
    Map<String,int> seriesS2;
    Map<String,int> seriesS3;
    Map<String,int> seriesS4;
    int semana1;
    int semana2;
    int semana3;
    int semana4;
    int semana1s;
    int semana2s;
    int semana3s;
    int semana4s;

  
  bool isPlaying = false;
  // bool isOnlyTP =false;
  // @override
  // void initState() {
  //   isPlaying=true;
  //  refreshState();
  

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

     seriesP1 = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,1);
     semana1= repoEstadisticas.filtrarSeries(seriesP1, widget.musculo);
     seriesP2 = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,2);
     semana2= repoEstadisticas.filtrarSeries(seriesP2, widget.musculo);

     seriesP3 = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,3);
     semana3= repoEstadisticas.filtrarSeries(seriesP3, widget.musculo);
     seriesP4 = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,4);
     semana4= repoEstadisticas.filtrarSeries(seriesP4, widget.musculo);

     seriesS1 = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,1);
     semana1s= repoEstadisticas.filtrarSeries(seriesS1, widget.musculo);
     seriesS2 = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,2);
     semana2s= repoEstadisticas.filtrarSeries(seriesS2, widget.musculo);
     seriesS3 = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,3);
     semana3s= repoEstadisticas.filtrarSeries(seriesS3, widget.musculo);
     seriesS4 = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,4);
     semana4s= repoEstadisticas.filtrarSeries(seriesS4, widget.musculo);
 

 double maxSeries;
   List<int> series = [semana1,semana1s,semana2,semana2s,semana3,semana3s,semana4,semana4s];
  maxSeries =series.reduce(max).toDouble();
 
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 14.0,
     
      shadowColor: const Color.fromRGBO(3, 9, 40, 0.7),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color:const Color.fromRGBO(3, 9, 40, 0.9),
        ),
        height: (MediaQuery.of(context).size.height<550) ? MediaQuery.of(context).size.height*0.3 : MediaQuery.of(context).size.height*0.3,
        child: Stack(
          children: <Widget>[
            Container(
               decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color:Color.fromRGBO(3, 9, 40, 0.5) ,
        ),
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
                "_Estadisticas_Individuales.numero_series".tr(args: [repoEstadisticas.traducirGrupoMuscular(widget.musculo)]),
                style: TextStyle(
                    color: Colors.grey[300], fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: BarChart(
                         mainBarData(maxSeries),
                        swapAnimationDuration: animDuration,
                      ),
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

  

  BarChartGroupData makeGroupData(
    int x,
    double y1, 
    double y2, 
    {
    bool isTouched1 = false,
    bool isTouched2 = false,
    Color barColor = const Color(0xffffcc80),
    double width = 15,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      barsSpace: 5,
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched1 ? y1 + 1 : y1,
          colors: isTouched1 ? [Colors.orange] : [barColor],
          width: width,
          // backDrawRodData: BackgroundBarChartRodData(
          //   show: true,
          //   y: 50,
          //   color: barBackgroundColor,
          // ),
        ),
        BarChartRodData(
          y: isTouched2 ? y2 + 1 : y2,
          colors: isTouched1 ? [Colors.orange] : [barColor],
          width: 5,
          // backDrawRodData: BackgroundBarChartRodData(
          //   show: true,
          //   y: 70,
          //   color:const Color.fromRGBO(3, 9, 40, 0.5), 
          // ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
    
  }

 

    List<BarChartGroupData> showingGroups() {
  
  
   return List.generate(4, (i) {
      
        switch (i) {
          case 0:
            return makeGroupData(0, semana1.toDouble(),semana1s.toDouble() ,isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 1:
            return makeGroupData(1, semana2.toDouble(),semana2s.toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 2:
            return makeGroupData(2, semana3.toDouble(),semana3s.toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 3:
            return makeGroupData(3, semana4.toDouble(),semana4s.toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
         
      
          default:
            return null;
        }
      }); }

  


   BarChartData mainBarData(double maxSeries) {
    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: maxSeries,
     
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey[300],
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  ((rod.y - 1)==semana1) ? weekDay = 'Series primarias de ${widget.musculo} en semana 1' :  weekDay = 'Series secundarias de ${widget.musculo} en semana 1';
                  break;
                case 1:
                  ((rod.y - 1)==semana2) ? weekDay = 'Series primarias de ${widget.musculo} en semana 2' :  weekDay = 'Series secundarias de ${widget.musculo} en semana 2';
                  break;
                case 2:
                  ((rod.y - 1)==semana3) ? weekDay = 'Series primarias de ${widget.musculo} en semana 3' :  weekDay = 'Series secundarias de ${widget.musculo} en semana 3';
                  break;
                case 3:
                  ((rod.y - 1)==semana4) ? weekDay = 'Series primarias de ${widget.musculo} en semana 4' :  weekDay = 'Series secundarias de ${widget.musculo} en semana 4';
                  break;
               
        
                
              }
              return BarTooltipItem(
                  (rod.y - 1).toString(), TextStyle(color:Color.fromRGBO(3, 9, 40, 0.65),fontSize: 12 ));
            }),
        touchCallback: (barTouchResponse) {
             setState(() {
            if (barTouchResponse.spot != null &&
                barTouchResponse.touchInput is! PointerUpEvent &&
                barTouchResponse.touchInput is! PointerExitEvent) {
              touchedIndex1 = barTouchResponse.spot.touchedBarGroupIndex;
               touchedIndex2 = barTouchResponse.spot.touchedRodDataIndex;
            } else {
              touchedIndex1 = -1;
              touchedIndex2 = -1;
            }
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold, fontSize: 12),
          margin: 16,
          // ignore: missing_return
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return "_Estadisticas_Individuales.semana_1".tr();
              case 1:
                return "_Estadisticas_Individuales.semana_2".tr();
              case 2:
                return "_Estadisticas_Individuales.semana_3".tr();
              case 3:
                return "_Estadisticas_Individuales.semana_4".tr();
          
            }
          },
        ),
       leftTitles: SideTitles(
        //  margin: 0,
        //  reservedSize: 0,
                          showTitles: true ,
                          getTextStyles: (value) => TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold, fontSize: 12),
                           
                        
                          // ignore: missing_return
                          getTitles: (value) {
                            
                            
                           if( value ==5 ||  value==10 || value==15 || value==20  || value ==25 || value==30 || value == 35 || value==40 || value == 45 || value==50 || value == 55 || value == 60) 
                           return  '${value.toInt()} s';
                          },
                        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups()
    );
  }


  // BarChartData randomData(double maxSeries) {
  //   return BarChartData(
  //      maxY: maxSeries,
  //     barTouchData: BarTouchData(
  //       enabled: false,
  //     ),
  //      titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: SideTitles(
  //         showTitles: true,
  //         textStyle: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold, fontSize: 14),
  //         margin: 16,
  //         getTitles: (double value) {
  //           switch (value.toInt()) {
  //             case 0:
  //               return 'P';
  //             case 1:
  //               return 'E';
  //             case 2:
  //               return 'C';
  //             case 3:
  //               return 'F';
  //             case 4:
  //               return 'B';
  //             case 5:
  //               return 'T';
  //             case 6:
  //               return 'H F';
  //             case 7:
  //               return 'H L';
  //             case 8:
  //               return 'H P';
  //           //  case 9:
  //           //     return 'ABS';
  //           //   case 10:
  //           //     return 'GEM';
  //           //   default:
  //           //     return '';
  //           }
  //         },
  //       ),
  //      leftTitles: SideTitles(
  //       //  margin: 0,
  //       //  reservedSize: 0,
  //                         showTitles: true ,
  //                         textStyle: TextStyle(
  //                             color:Colors.grey[300],
  //                             fontWeight: FontWeight.bold,
  //                             fontSize: 10),
                           
                        
  //                         getTitles: (value) {
                            
                            
  //                          if(value==5 || value ==10 || value==15 || value==20 || value ==25 || value==30 || value ==35 || value==40 || value==45 || value ==50 || value==55|| value==60 || value==65 || value == 70 || value==75) 
  //                          return  '${value.toInt()} s';
  //                         },
  //                       ),
  //     ),
  //     borderData: FlBorderData(
  //       show: false,
  //     ),
  //     barGroups: List.generate(9, (i) {
  //       switch (i) {
  //         case 0:
  //           return makeGroupData2(0, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 1:
  //           return makeGroupData2(1, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 2:
  //           return makeGroupData2(2, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 3:
  //           return makeGroupData2(3, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 4:
  //           return makeGroupData2(4, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 5:
  //           return makeGroupData2(5, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 6:
  //           return makeGroupData2(6, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 7:
  //           return makeGroupData2(6, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 8:
  //           return makeGroupData2(6, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         default:
  //           return null;
  //       }
  //     }),
  //   );
  // }
Future<dynamic> refreshState1() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + const Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState1();
    }
  }
Future<dynamic> refreshState() async {
refreshState1();
Future.delayed(Duration(milliseconds: 1500)).then((_){
  if (mounted) {
   
       setState(() 
{
  isPlaying=false;
  
  });
    
  
}});
} 
  @override
  void dispose() {
    isPlaying=false;

    super.dispose();
  }
  
}