
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estadisticas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BarChartSample1 extends StatefulWidget {
 
final MesocicloEntrenamiento mesocicloEntrenamiento;
final int semanaEntrenamiento;

BarChartSample1(this.mesocicloEntrenamiento,this.semanaEntrenamiento);
  
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}
    RepoEstadisticas repoEstadisticas= RepoEstadisticas();
    
    
    // Map<String,int>  tiposTrabajo1= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,1);
    // Map<String,int>  tiposTrabajo2= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,2);
    // Map<String,int>  tiposTrabajo3= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,3);
    // Map<String,int>  tiposTrabajo4= repoEstadisticas.calcularTiposDeTrabajo(mesocicloEntrenamiento,4);



class BarChartSample1State extends State<BarChartSample1> {

  
  // Map<String,int> frecuencia = repoEstadisticas.calcularFrecuencia(mesocicloEntrenamiento);
    
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

int touchedIndex1;
int touchedIndex2;
 int semana;
 



    Map<String,int> seriesP;
    Map<String,int> seriesS;
  
  // bool isPlaying = false;
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

     seriesP = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,semana);
    Map<String,int> nSeriesP4 = repoEstadisticas.calcularNumeroDeSeriesTrabajoPrimario(widget.mesocicloEntrenamiento,4);
    Map<String,int> nSeriesS4 = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,4);
    seriesS = repoEstadisticas.calcularNumeroDeSeriesTrabajoSecundario(widget.mesocicloEntrenamiento,semana);
    
  double maxSeries = repoEstadisticas.calcularMaximo(nSeriesP4,nSeriesS4).toDouble();
 
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 14.0,
     
      shadowColor: const Color.fromRGBO(3, 9, 40, 0.7),
      child: Container(
        height: (MediaQuery.of(context).size.height<550) ? MediaQuery.of(context).size.height*0.75 : MediaQuery.of(context).size.height*0.7,
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
                "_Estadisticas_Globales.numero_series".tr(),
                style: TextStyle(
                    color: Colors.grey[300], fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: BarChart(
                        // isPlaying ? randomData(maxSeries) : 
                        mainBarData(maxSeries),
                        swapAnimationDuration: animDuration,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                             
                              // height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height * 0.925,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(icon: Icon(Icons.info,color:Colors.grey[300],size:30), onPressed: (){
                                  
                                  }),
                                  SizedBox(width: 20),
                                  IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    color: Colors.grey[300],
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
                                                    color:Color.fromRGBO(3, 9, 40, 1), )))),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    color: Colors.grey[300],
                                    onPressed: () {

                                      (semana<4) ? setState(() {
                                           semana=semana+1;
                                         })  : semana=semana;
                                    
                                    },
                                  ),
                                  
                                ],
                              ),
                            ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("_Estadisticas_Globales.ver_trabajo_secundario".tr(),style: TextStyle(fontSize: (MediaQuery.of(context).size.width<350) ? 14 : 16,color:Colors.grey[300]),),
                        SizedBox(width:10),
                        Switch(
                          value: isOnlyTP,
                          onChanged: (value) {
                            setState(() {
                              isOnlyTP = value;
                              print(isOnlyTP);
                            });
                          },
                          activeTrackColor: Colors.orange[200],
                          activeColor: Colors.orange,
                        ),
                      ],
                    )
    
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
    double width = 25,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      
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
      
      ],
      showingTooltipIndicators: showTooltips,
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
  
  
   return List.generate(10, (i) {
      
        switch (i) {
          case 0:
            return makeGroupData(0, seriesP['Pecho'].toDouble(),seriesS['Pecho'].toDouble() ,isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 1:
            return makeGroupData(1, seriesP['Espalda'].toDouble(),seriesS['Espalda'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 2:
            return makeGroupData(2, seriesP['Cuadriceps'].toDouble(),seriesS['Cuadriceps'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 3:
            return makeGroupData(3, seriesP['Femoral'].toDouble(),seriesS['Femoral'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 4:
            return makeGroupData(4, seriesP['Gluteo'].toDouble(),seriesS['Gluteo'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 5:
            return makeGroupData(5,seriesP['Biceps'].toDouble(),seriesS['Biceps'].toDouble() , isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 6:
            return makeGroupData(6, seriesP['Triceps'].toDouble(),seriesS['Triceps'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 7:
            return makeGroupData(7, seriesP['Hombro Frontal'].toDouble(),seriesS['Hombro Frontal'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 8:
            return makeGroupData(8, seriesP['Hombro Lateral'].toDouble(),seriesS['Hombro Lateral'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          case 9:
            return makeGroupData(9, seriesP['Hombro Posterior'].toDouble(),seriesS['Hombro Posterior'].toDouble(), isTouched1: (i == touchedIndex1) && (0 == touchedIndex2),isTouched2: (i == touchedIndex1) && (1 == touchedIndex2));
          // case 9:
          //   return makeGroupData(9, seriesP['Abs'].toDouble(),seriesS['Abs'].toDouble(), isTouched1: (i == touchedIndex1) && (i == touchedIndex2),isTouched2: (0 == touchedIndex1) && (1 == touchedIndex2));
          // case 10:
          //   return makeGroupData(10, seriesP['Gemelo'].toDouble(),seriesS['Gemelo'].toDouble(), isTouched1: (i == touchedIndex1) && (i == touchedIndex2),isTouched2: (0 == touchedIndex1) && (1 == touchedIndex2));
      
          default:
            return null;
        }
      }); }

   List<BarChartGroupData> showingGroups2() {
  
  
   return List.generate(10, (i) {
      
        switch (i) {
          case 0:
            return makeGroupData2(0, seriesP['Pecho'].toDouble() ,isTouched1: (i == touchedIndex1));
          case 1:
            return makeGroupData2(1, seriesP['Espalda'].toDouble(), isTouched1: (i == touchedIndex1));
          case 2:
            return makeGroupData2(2, seriesP['Cuadriceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 3:
            return makeGroupData2(3, seriesP['Femoral'].toDouble(), isTouched1: (i == touchedIndex1));
          case 4:
            return makeGroupData2(4, seriesP['Gluteo'].toDouble(), isTouched1: (i == touchedIndex1));
          case 5:
            return makeGroupData2(5,seriesP['Biceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 6:
            return makeGroupData2(6, seriesP['Triceps'].toDouble(), isTouched1: (i == touchedIndex1));
          case 7:
            return makeGroupData2(7, seriesP['Hombro Frontal'].toDouble(), isTouched1: (i == touchedIndex1));
          case 8:
            return makeGroupData2(8, seriesP['Hombro Lateral'].toDouble(), isTouched1: (i == touchedIndex1));
          case 9:
            return makeGroupData2(9, seriesP['Hombro Posterior'].toDouble(), isTouched1: (i == touchedIndex1));
          // case 9:
          //   return makeGroupData2(9, seriesP['Abs'].toDouble(), isTouched1: (i == touchedIndex1) );
          //  case 10: 
          //   return makeGroupData2(10, seriesP['Gemelo'].toDouble(), isTouched1: (i == touchedIndex1) );
      
          default:
            return null;
        }
      }); }


   BarChartData mainBarData(double maxSeries) {
    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY:  maxSeries +5,
     
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey[300],
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  ((rod.y - 1)==seriesP['Pecho']) ? weekDay = 'Series primarias de pecho' :  weekDay = 'Series secundarias de pecho';
                  break;
                case 1:
                  ((rod.y - 1)==seriesP['Espalda']) ? weekDay = 'Series primarias de espalda' :  weekDay = 'Series secundarias de espalda ';
                  break;
                case 2:
                  ((rod.y - 1)==seriesP['Cuadriceps']) ? weekDay = 'Series primarias de cuadriceps' :  weekDay = 'Series secundarias de cuadriceps';
                  break;
                case 3:
                  ((rod.y - 1)==seriesP['Femoral']) ? weekDay = 'Series primarias de femoral' :  weekDay = 'Series secundarias de femoral';
                  break;
                case 4:
                  ((rod.y - 1)==seriesP['Gluteo']) ? weekDay = 'Series primarias de glúteo' :  weekDay = 'Series secundarias de glúteo';
                  break;
                case 5:
                 ((rod.y - 1)==seriesP['Biceps']) ? weekDay = 'Series primarias de bíceps' :  weekDay = 'Series secundarias de bíceps';
                  break;
                case 6:
                  ((rod.y - 1)==seriesP['Triceps']) ? weekDay = 'Series primarias de tríceps' :  weekDay = 'Series secundarias de tríceps';
                  break;
                case 7:
                  ((rod.y - 1)==seriesP['Hombro Frontal']) ? weekDay = 'Series primarias de deltoides anterior' :  weekDay = 'Series secundarias de deltoides anterior';
                  break;
                case 8:
                  ((rod.y - 1)==seriesP['Hombro Lateral']) ? weekDay = 'Series primarias de deltoides lateral' :  weekDay = 'Series secundarias de deltoides lateral';
                  break;
                case 9:
                  ((rod.y - 1)==seriesP['Hombro Posterior']) ? weekDay = 'Series primarias de deltoides posterior' :  weekDay = 'Series secundarias de deltoides posterior';
                  break;
                // case 9:
                //   ((rod.y - 1)==seriesP['Abs']) ? weekDay = 'Series primarias de abdomen' :  weekDay = 'Series secundarias de abdomen';
                //   break;
                // case 10:
                //   ((rod.y - 1)==seriesP['Gemelo']) ? weekDay = 'Series primarias de gemelo ' :  weekDay = 'Series secundarias de gemelo';
                //   break;
                
              }
              return BarTooltipItem(
                 (rod.y - 1).toString(), TextStyle(color:Color.fromRGBO(3, 9, 40, 0.65),fontSize: 16 ));
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
                return '${"_Estadisticas_Globales.p".tr()} \n (${seriesP['Pecho']})';
              case 1:
                return '${"_Estadisticas_Globales.e".tr()} \n (${seriesP['Espalda']})';
              case 2:
                return '${"_Estadisticas_Globales.c".tr()} \n (${seriesP['Cuadriceps']})';
              case 3:
                return '${"_Estadisticas_Globales.i".tr()} \n (${seriesP['Femoral']})';
              case 4:
                return '${"_Estadisticas_Globales.g".tr()} \n (${seriesP['Gluteo']})';
              case 5:
                return '${"_Estadisticas_Globales.b".tr()} \n (${seriesP['Biceps']})';
              case 6:
                return '${"_Estadisticas_Globales.t".tr()} \n (${seriesP['Triceps']})';
              case 7:
                return '${"_Estadisticas_Globales.da".tr()} \n (${seriesP['Hombro Frontal']})';
              case 8:
                return '${"_Estadisticas_Globales.dl".tr()} \n (${seriesP['Hombro Lateral']})';
              case 9:
                return '${"_Estadisticas_Globales.dp".tr()} \n (${seriesP['Hombro Posterior']})';
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
        reservedSize: 25,
                          showTitles: true ,
                          getTextStyles: (value) => TextStyle(
                              color:Colors.grey[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                           
                        
                          // ignore: missing_return
                          getTitles: (value) {
                            
                            
                           if(value==5 || value ==10 || value==15 || value==20 || value ==25 || value==30 || value ==35 || value==40 || value==45 || value ==50 || value==55|| value==60 || value==65 || value == 70 || value==75) 
                           return  '${value.toInt()} s';
                          },
                        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: (isOnlyTP ? showingGroups() : showingGroups2())
    );
  }


  // BarChartData randomData(double maxSeries) {
  //   return BarChartData(
  //      maxY: maxSeries+5,
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
  //             case 9:
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
  //        reservedSize: 25,
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
  //     barGroups: List.generate(10, (i) {
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
  //           return makeGroupData2(7, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 8:
  //           return makeGroupData2(8, Random().nextInt(maxSeries.toInt()).toDouble()+1,
  //               barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
  //         case 9:
  //           return makeGroupData2(9, Random().nextInt(maxSeries.toInt()).toDouble()+1,
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
