import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BarChartSample2 extends StatefulWidget {
 
final MesocicloEntrenamiento mesocicloEntrenamiento;
final int semanaEntrenamiento;

BarChartSample2(this.mesocicloEntrenamiento,this.semanaEntrenamiento);
  
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}
    RepoEstadisticas repoEstadisticas= RepoEstadisticas();
    
    
    // Map<String,int>  tiposTrabajo1= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,1);
    // Map<String,int>  tiposTrabajo2= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,2);
    // Map<String,int>  tiposTrabajo3= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,3);
    // Map<String,int>  tiposTrabajo4= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,4);



class BarChartSample2State extends State<BarChartSample2> {

  
  // Map<String,int> frecuencia = repoEstadisticas.calcularFrecuencia(mesocicloEntrenamiento);
    
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

int touchedIndex1;
int touchedIndex2;
 int semana;

 



    Map<String,int> frecuencia;

  
  bool isPlaying = false;
  bool isOnlyTP =false;
  @override
  void initState() {
  //   isPlaying=true;
  //  refreshState();
  
  semana=widget.semanaEntrenamiento;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

     frecuencia = repoEstadisticas.calcularFrecuencia(widget.mesocicloEntrenamiento);
      int maxFrecuencia = repoEstadisticas.calcularMaxF(frecuencia);

    

 
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 14.0,
     
      shadowColor: const Color.fromRGBO(3, 9, 40, 0.7),
      child: Container(
        height:  (MediaQuery.of(context).size.height<550) ? MediaQuery.of(context).size.height*0.75 : MediaQuery.of(context).size.height*0.7,
        child: Stack(
          children: <Widget>[
            Container(
              color: const Color.fromRGBO(3, 9, 40, 0.9),
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
               "_Estadisticas_Globales.frecuencia_trabajo".tr(),
                style: TextStyle(
                    color: Colors.grey[300], fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
                  const SizedBox(
                    height: 48,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: BarChart(
                        // isPlaying ? randomData(maxFrecuencia.toDouble()) : 
                        mainBarData(maxFrecuencia.toDouble()),
                        swapAnimationDuration: animDuration,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  
                   
    
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData2(
    int x,
    double y1, 
    
    {
    bool isTouched1 = false,
    
    Color barColor = const Color(0xffffcc80),
    double width = 10,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched1 ? y1 + 0.2 : y1,
          colors: isTouched1 ? [Colors.orange] : [barColor],
          width: width,
          // backDrawRodData: BackgroundBarChartRodData(
          //   show: true,
          //   y: 50,
          //   color: barBackgroundColor,
          // ),
        ),
      
      ],
      showingTooltipIndicators: showTooltips,
    );
    
  }

  

 

   

   List<BarChartGroupData> showingGroups2() {
  
  
   return List.generate(13, (i) {
      
        switch (i) {
          case 0:
            return makeGroupData2(0, frecuencia['Pecho'].toDouble() ,isTouched1: (i == touchedIndex1));
          case 1:
            return makeGroupData2(1, frecuencia['Espalda'].toDouble(), isTouched1: (i == touchedIndex1));
          case 2:
            return makeGroupData2(2, frecuencia['Cuadriceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 3:
            return makeGroupData2(3, frecuencia['Femoral'].toDouble(), isTouched1: (i == touchedIndex1));
          case 4:
            return makeGroupData2(4, frecuencia['Gluteo'].toDouble(), isTouched1: (i == touchedIndex1));
          case 5:
            return makeGroupData2(5, frecuencia['Biceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 6:
            return makeGroupData2(6,frecuencia['Triceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 7:
            return makeGroupData2(7, frecuencia['Hombro Frontal'].toDouble(), isTouched1: (i == touchedIndex1));
          case 8:
            return makeGroupData2(8, frecuencia['Hombro Lateral'].toDouble(), isTouched1: (i == touchedIndex1));
          case 9:
            return makeGroupData2(9, frecuencia['Hombro Posterior'].toDouble(), isTouched1: (i == touchedIndex1));
          case 10:
            return makeGroupData2(10, frecuencia['Trapecio'].toDouble(), isTouched1: (i == touchedIndex1));
          case 11:
            return makeGroupData2(11, frecuencia['Abs'].toDouble(), isTouched1: (i == touchedIndex1));
          case 12:
            return makeGroupData2(12, frecuencia['Gemelo'].toDouble(), isTouched1: (i == touchedIndex1) );
           
      
          default:
            return null;
        }
      }); }


   BarChartData mainBarData(double maxFrecuencia) {
    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: maxFrecuencia+1,
     
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey[300],
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                 weekDay = 'frecuencia de pecho' ;
                  break;
                case 1:
                  weekDay = 'frecuencia de espalda' ;
                  break;
                case 2:
                   weekDay = 'frecuencia de cuadriceps' ;
                  break;
                case 3:
                   weekDay = 'frecuencia de femoral' ;
                  break;
                case 4:
                   weekDay = 'frecuencia de glúteo' ;
                  break;
                case 5:
                weekDay = 'frecuencia de bíceps' ;
                  break;
                case 6:
                 weekDay = 'frecuencia de tríceps' ;
                  break;
                case 7:
                weekDay = 'frecuencia de deltoides anterior' ;
                  break;
                case 8:
                 weekDay = 'frecuencia de deltoides lateral' ;
                  break;
                case 9:
                   weekDay = 'frecuencia de deltoides posterior' ;
                  break;
                case 10:
                   weekDay = 'frecuencia de trapecio' ;
                  break;
                case 11:
                  weekDay = 'frecuencia de abdomen' ;
                  break;
                case 12:
                 weekDay = 'frecuencia de gemelo ' ;
                  break;
                
              }
              return BarTooltipItem(
              (rod.y - 0.2).toString(), TextStyle(color:Color.fromRGBO(3, 9, 40, 0.65),fontSize: 16 ));
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
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '${"_Estadisticas_Globales.p".tr()} \n (${frecuencia['Pecho']})';
              case 1:
                return '${"_Estadisticas_Globales.e".tr()} \n (${frecuencia['Espalda']})';
              case 2:
                return '${"_Estadisticas_Globales.c".tr()} \n (${frecuencia['Cuadriceps']})';
              case 3:
                return '${"_Estadisticas_Globales.i".tr()} \n (${frecuencia['Femoral']})';
              case 4:
                return '${"_Estadisticas_Globales.g".tr()} \n (${frecuencia['Gluteo']})';
              case 5:
                return '${"_Estadisticas_Globales.b".tr()} \n (${frecuencia['Biceps']})';
              case 6:
                return '${"_Estadisticas_Globales.t".tr()} \n (${frecuencia['Triceps']})';
              case 7:
                return '${"_Estadisticas_Globales.da".tr()} \n (${frecuencia['Hombro Frontal']})';
              case 8:
                return '${"_Estadisticas_Globales.dl".tr()} \n (${frecuencia['Hombro Lateral']})';
              case 9:
                return '${"_Estadisticas_Globales.dp".tr()} \n (${frecuencia['Hombro Posterior']})';
              case 10:
                return '${"_Estadisticas_Globales.tr".tr()} \n (${frecuencia['Trapecio']})'  ;
             case 11:
                return '${"_Estadisticas_Globales.ab".tr()} \n (${frecuencia['Abs']})';
              case 12:
                return '${"_Estadisticas_Globales.gm".tr()} \n (${frecuencia['Gemelo']})';
              default:
                return '';
            //  case 9:
            //     return 'ABS';
            //   case 10:
            //     return 'GEM';
            //   default:
            //     return '';
            }
          },
        ),
       leftTitles: SideTitles(
        //  margin: 0,
         reservedSize: 30,
                          showTitles: true ,
                          getTextStyles: (value) => TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold, fontSize: 12),
                           
                        
                          getTitles: (value) {
                            if (value == 1) {
                              return "_Estadisticas_Globales.1_dia".tr();
                            } else if (value == 2) {
                              return "_Estadisticas_Globales.2_dias".tr();
                            } else if (value == 3) {
                              return "_Estadisticas_Globales.3_dias".tr();
                            }  else if (value == 4) {
                              return "_Estadisticas_Globales.4_dias".tr();
                            } else if (value == 5) {
                              return "_Estadisticas_Globales.5_dias".tr();}
                              else {
                              return '';
                            }
                          },
                        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups2()
    );
  }


  // BarChartData randomData(double maxFrecuencia) {
  //   return BarChartData(
  //     maxY: maxFrecuencia+1,
  //     barTouchData: BarTouchData(
  //       enabled: false,
  //     ),
  //      titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: SideTitles(
  //         showTitles: true,
  //         textStyle: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold, fontSize: 12),
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
  //               return 'G';
  //             case 5:
  //               return 'B';
  //             case 6:
  //               return 'T';
  //             case 7:
  //               return 'H F';
  //             case 8:
  //               return 'H L';
  //            case 9:
  //               return 'H P';
  //             case 10:
  //               return 'TR';
  //             case 11:
  //               return 'AB';
  //             case 12:
  //               return 'GM';
  //             default:
  //               return '';
  //           }
  //         },
  //       ),
  //      leftTitles: SideTitles(
  //       //  margin: 0,
  //        reservedSize: 30,
  //                         showTitles: true ,
  //                         textStyle: TextStyle(
  //                             color:Colors.grey[300],
  //                             fontWeight: FontWeight.bold,
  //                             fontSize: 10),
                           
                        
  //                        getTitles: (value) {
  //                           if (value == 1) {
  //                             return '1 día ';
  //                           } else if (value == 2) {
  //                             return '2 días';
  //                           } else if (value == 3) {
  //                             return '3 días';
  //                           }  else if (value == 4) {
  //                             return '4 días';
  //                           } else if (value == 5) {
  //                             return '5 días';}
  //                             else {
  //                             return '';
  //                           }
  //                         },
  //                       ),
  //     ),
  //     borderData: FlBorderData(
  //       show: false,
  //     ),
  //     barGroups: List.generate(13, (i) {
  //       switch (i) {
  //         case 0:
  //           return makeGroupData2(0, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 1:
  //           return makeGroupData2(1, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 2:
  //           return makeGroupData2(2, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 3:
  //           return makeGroupData2(3, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 4:
  //           return makeGroupData2(4, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 5:
  //           return makeGroupData2(5, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 6:
  //           return makeGroupData2(6, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 7:
  //           return makeGroupData2(7, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 8:
  //           return makeGroupData2(8, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 9:
  //           return makeGroupData2(9, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 10:
  //           return makeGroupData2(10, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 11:
  //           return makeGroupData2(11, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 12:
  //           return makeGroupData2(12, Random().nextInt(maxFrecuencia.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         default:
  //           return null;
  //       }
  //     }),
  //   );
  // }
// Future<dynamic> refreshState1() async {
//     setState(() {});
//     await Future<dynamic>.delayed(animDuration + const Duration(milliseconds: 50));
//     if (isPlaying) {
//       refreshState1();
//     }
//   }
// Future<dynamic> refreshState() async {
// refreshState1();
// Future.delayed(Duration(milliseconds: 1500)).then((_){
//   if (mounted) {
   
//        setState(() 
// {
//   isPlaying=false;
  
//   });
    
  
// }});
// } 
  
  @override
  void dispose() {
    // isPlaying=false;

    super.dispose();
  }
}