import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaapp/blocs/B_MESCOCICLO/mesociclo_bloc_bloc.dart';
import 'package:entrenaapp/models/Diadeentrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';




class CardDiaEntrenamiento extends StatelessWidget {
  final DiaEntrenamiento diaEntrenamiento;
  final int numeroDia;
  final int semanaEntrenamiento;
  final  int delay;
  final double toY;
  final int duration;

  CardDiaEntrenamiento(
      this.diaEntrenamiento, this.numeroDia, this.semanaEntrenamiento,this.delay,this.toY,this.duration);

  @override
  Widget build(BuildContext context) {
    // void seleccionarDiaEntrenamiento() {
    //   Navigator.of(context).pushNamed('/diaentrenamiento',arguments: {'listaejercicios' : listaejercicios , 'diaentrenamiento':numerodiabueno, 'semanaentrenamiento':semanaentrenamiento,'nombreentrenamiento':nombreentrenamiento }  );
    // }

    bool entrenamientoCompletadoEnSemanaQueQueremosVisualizar;
    if (semanaEntrenamiento == 0) {
      entrenamientoCompletadoEnSemanaQueQueremosVisualizar =
          diaEntrenamiento.entrenamientoCompletado.semana1;
    } else if (semanaEntrenamiento == 1) {
      entrenamientoCompletadoEnSemanaQueQueremosVisualizar =
          diaEntrenamiento.entrenamientoCompletado.semana2;
    } else if (semanaEntrenamiento == 2) {
      entrenamientoCompletadoEnSemanaQueQueremosVisualizar =
          diaEntrenamiento.entrenamientoCompletado.semana3;
    } else if (semanaEntrenamiento == 3) {
      entrenamientoCompletadoEnSemanaQueQueremosVisualizar =
          diaEntrenamiento.entrenamientoCompletado.semana4;
    }
  // Comprobamos que el dia sea <=3 (son los que se ven en pantalla) para poder dar el maximo delay.
   
   if (numeroDia==1 && (MediaQuery.of(context).orientation == Orientation.portrait)) return
   

   Column(
     children: <Widget>[
      SizedBox(height:20),
       Text("_Card_Dia_Entrenamiento.semana".tr(args:[(semanaEntrenamiento+1).toString()]),style: TextStyle(color:Colors.grey[50],fontSize:30,fontWeight:FontWeight.bold),),
       
       Container(
         width:175,
         child: Divider(
          //  indent:MediaQuery.of(context).size.width/3.5 ,
          //  endIndent:MediaQuery.of(context).size.width/3.5 ,
                color: Colors.grey[50],
            height: 10,
            thickness:2 ,
              ),
       ),
       SizedBox(height:20),
      InkWell(
           onTap: (){
                              BlocProvider.of<MesocicloBlocBloc>(context).add(UserQuiereVisualizarEntrenamiento(numeroDia-1,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletadoEnSemanaQueQueremosVisualizar));

                            },

          child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: <Widget>[
            Container(
              
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color:  Colors.grey[50],
                border: Border.all(width:4,color:Colors.orange[500]),
                borderRadius:
                    BorderRadius.circular(20), // Dimensions - Design System
              ),
              // Dimensions - Design System
              child: Column(
                children: <Widget>[
                  Container(
                    
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 5.75,
                  decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage(diaEntrenamiento.imagenrepresentacionentrenamiento),
              fit: BoxFit.cover,
            ),
             borderRadius:
                    BorderRadius.circular(15),
          ),
                    
                   
                  ),
                  FittedBox(
                    child: Row(
                      
                      children: <Widget>[
                         Container(
                          height: (MediaQuery.of(context).size.height * 7 / 92) - 8,
                          width: MediaQuery.of(context).size.width / 1.4,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left:10),
                            child: AutoSizeText(
                              '${diaEntrenamiento.nombreentrenamiento}'
                                  .toUpperCase(),
                              style: TextStyle(
                                  color: Color.fromRGBO(3, 9, 40, 1),
                                  // Color(0xffe46b10), // Color - Design System
                                  fontWeight: FontWeight.w700,
                                  fontSize: (MediaQuery.of(context).size.height>600) ? 22.5 : 18),
                                  maxFontSize: (MediaQuery.of(context).size.height>600) ? 24 : 18 ,
                                  minFontSize: 8,
                                  maxLines: 2,
                            ),
                          ),
                        ),
                        FittedBox(
                            child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(3, 9, 40, 1),
                          size: (MediaQuery.of(context).size.height>600) ? 40 : 30,
                        )),
                      
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    
     ],
   );




 else


    return 
   InkWell(
           onTap: (){
                              BlocProvider.of<MesocicloBlocBloc>(context).add(UserQuiereVisualizarEntrenamiento(numeroDia-1,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletadoEnSemanaQueQueremosVisualizar));

                            },

          child: Container(
           
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: <Widget>[
            Container(
              
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color:  Colors.grey[50],
                border: Border.all(width:4,color:Colors.orange[500]),
                borderRadius:
                    BorderRadius.circular(20), // Dimensions - Design System
              ),
              // Dimensions - Design System
              child: Column(
                children: <Widget>[
                  Container(
                    
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 5.75,
                  decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage(diaEntrenamiento.imagenrepresentacionentrenamiento),
              fit: BoxFit.cover,
            ),
             borderRadius:
                    BorderRadius.circular(15),
          ),
                    
                   
                  ),
                  FittedBox(
                    child: Row(
                      
                      children: <Widget>[
                        Container(
                          height: (MediaQuery.of(context).size.height * 7 / 92) - 8,
                          width: MediaQuery.of(context).size.width / 1.4,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left:10),
                            child: AutoSizeText(
                              '${diaEntrenamiento.nombreentrenamiento}'
                                  .toUpperCase(),
                              style: TextStyle(
                                  color: Color.fromRGBO(3, 9, 40, 1),
                                  // Color(0xffe46b10), // Color - Design System
                                  fontWeight: FontWeight.w700,
                                  fontSize: (MediaQuery.of(context).size.height>600) ? 22.5 : 18),
                                  maxFontSize: (MediaQuery.of(context).size.height>600) ? 24 : 18 ,
                                  minFontSize: 8,
                                  maxLines: 2,
                            ),
                          ),
                        ),
                        FittedBox(
                            child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(3, 9, 40, 1),
                          size: (MediaQuery.of(context).size.height>600) ? 40 : 30,
                        )),
                      
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
}
