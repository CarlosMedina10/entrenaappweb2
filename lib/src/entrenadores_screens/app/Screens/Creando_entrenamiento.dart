
import 'package:entrenaapp/blocs/B_CREACION_ENTRENAMIENTO/creacionentrenamiento_bloc.dart';
import 'package:entrenaapp/blocs/B_MESCOCICLO/mesociclo_bloc_bloc.dart';
import 'package:entrenaapp/blocs/configuracionentrenamiento_bloc/configuracionentrenamiento_bloc.dart';
import 'package:entrenaapp/blocs/login_bloc/stepper_bloc/stepper_bloc.dart';
import 'package:entrenaapp/models/Diadeentrenamiento.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/fa_stepper.dart';


class CreandoEntrenamiento extends StatefulWidget {
  final CreacionRepository creacionRepository;
  final PrincipalRepository principalRepository;
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final DiaEntrenamiento diaEntrenamiento;
  final int numeroDia;

  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final int userFase;
  final double userBmi;
  final String sexo;

  CreandoEntrenamiento(
      this.creacionRepository,
      this.principalRepository,
      this.mesocicloEntrenamiento,
      this.diaEntrenamiento,
      this.numeroDia,
   
      this.materialDisponible1,
      this.materialDisponible2,
      {this.userFase,
      this.userBmi,
      this.sexo});

  @override
  _CreandoEntrenamientoState createState() => _CreandoEntrenamientoState();
}

class _CreandoEntrenamientoState extends State<CreandoEntrenamiento> {
  @override
  @override
  Widget build(BuildContext context) {
    guardar(int maxSteps, BuildContext context) {
      int step;
      for (step = 0; step <= maxSteps - 1; step++) {
      //   widget.listaFrecuencia[step] = {
      //     'Pecho': 0,
      //     'Espalda': 0,
      //     'Biceps': 0,
      //     'Triceps': 0,
      //     'Hombro Lateral': 0,
      //     'Hombro Frontal': 0,
      //     'Hombro Posterior': 0,
      //     'Cuadriceps': 0,
      //     'Femoral': 0,
      //     'Gluteo': 0,
      //     'Trapecio': 0,
      //     'Gemelo': 0,
      //     'Abs': 0
      //   };
      //    List<String> musculosTrabajados=[];
      //   widget.mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
      //   diaE.patrones.forEach((patron) {
      //     musculosTrabajados.add(patron.musculosTrabajados['Primario1']);
          
      



      //    });
         
      //    diaE.musculosTrabajados=musculosTrabajados.toSet().toList();
      //    musculosTrabajados=[];
      //  });
      //   widget.mesocicloEntrenamiento.diasEntrenamiento[step].patrones
      //       .forEach((patron) {
      //     widget.listaFrecuencia[step].forEach((key, value) {
      //       if (patron.ejercicioSeleccionado.musculosTrabajados !=
      //           null) if (patron
      //               .ejercicioSeleccionado.musculosTrabajados['Primario1'] ==
      //           key) {
      //         widget.listaFrecuencia[step]
      //             .update(key, (value) => value = value + 1);
      //       }
      //     });
      //   });

        if (step < maxSteps - 1)
          BlocProvider.of<StepperBloc>(context).add(StepContinue());
        else {
          // int diaActual = 0;

          // widget.mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
          //   print(diaE.nombreentrenamiento);
          //   print(diaE.musculosTrabajados);
          //   widget.listaFrecuencia[diaActual].forEach((key, value) {
          //     if (value > 0 && diaE.musculosTrabajados.contains(key) == false)
          //       diaE.musculosTrabajados.add(key);
          //   });
          //   diaActual = diaActual + 1;
          // });

         
             
            BlocProvider.of<MesocicloBlocBloc>(context).add(
                UserHaAcabadoDeEditarMesociclo(widget.mesocicloEntrenamiento));

          //cambiar
        }
      }
    }

    ListTile makeListTile(int stepActual, numeroEjercicio, Patron patron) {
      return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              BlocProvider.of<CreacionentrenamientoBloc>(context)
                  .add(QuieroEditarConfiguracion(stepActual, numeroEjercicio));
            }),
        trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              BlocProvider.of<CreacionentrenamientoBloc>(context).add(
                  QuieroEliminarEjercicio(
                      stepActual, numeroEjercicio,));
            }),
        title: Text(
          '${patron.ejercicioSeleccionado.nombre}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
      );
    }

    Card makeCard(int stepActual, numeroEjercicio, Patron patron) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 9, 40, 0.9),
            ),
            child: makeListTile(stepActual, numeroEjercicio, patron),
          ),
        );

    Container makeBody(int stepActual) => Container(
        height: (widget.userBmi != null)
            ? MediaQuery.of(context).size.height * 0.6
            : MediaQuery.of(context).size.height * 0.55,
        // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
        child: Column(
          children: <Widget>[
            widget.mesocicloEntrenamiento.diasEntrenamiento[stepActual].patrones
                    .isEmpty
                ? FlatButton(
                    color: Colors.orange[400],
                    onPressed: () {
                      BlocProvider.of<CreacionentrenamientoBloc>(context)
                          .add(QuieroAnadirEjercicio(
                        stepActual,
                      ));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      Text(
                          "_Creacion_Entrenamiento.añadir_ejercicio".tr(),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Icon(Icons.add)
                      ],
                    ),
                  )
                : Container(
                    height: (widget.userBmi != null)
                        ? MediaQuery.of(context).size.height * 0.57
                        : MediaQuery.of(context).size.height * 0.52,
                    child: ListView(
                        padding: const EdgeInsets.only(bottom: 0),
                        scrollDirection: Axis.vertical,
                        primary: true,
                        children: widget.mesocicloEntrenamiento
                            .diasEntrenamiento[stepActual].patrones
                            .map((patron) {
                          return Column(
                            children: <Widget>[
                              (widget
                                          .mesocicloEntrenamiento
                                          .diasEntrenamiento[stepActual]
                                          .patrones
                                          .indexOf(patron) ==
                                      0)
                                  ? Container(
                                      child: Column(
                                        children: <Widget>[
                                        
                                          Container(
                                            padding: EdgeInsets.only(
                                                right: 30, top: 5, bottom: 5),
                                            alignment: Alignment.centerRight,
                                            child: InkWell(
                                              onTap: () {
                                                BlocProvider.of<
                                                            CreacionentrenamientoBloc>(
                                                        context)
                                                    .add(QuieroAnadirEjercicio(
                                                        stepActual,
                                                        position: 0));
                                              },
                                              child: Container(
                                                  padding: EdgeInsets.all(4),
                                                  color: Colors.orange[400],
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                         "_Creacion_Entrenamiento.añadir_ejercicio".tr(),
                                                        style: TextStyle(
                                                            fontSize: 8),
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Icon(
                                                        Icons.add,
                                                        size: 12,
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(),
                              makeCard(
                                stepActual,
                                widget.mesocicloEntrenamiento
                                    .diasEntrenamiento[stepActual].patrones
                                    .indexOf(patron),
                                patron,
                              ),
                              (widget
                                          .mesocicloEntrenamiento
                                          .diasEntrenamiento[stepActual]
                                          .patrones
                                          .indexOf(patron) ==
                                      widget
                                              .mesocicloEntrenamiento
                                              .diasEntrenamiento[stepActual]
                                              .patrones
                                              .length -
                                          1)
                                  ? FlatButton(
                                      color: Colors.orange[400],
                                      onPressed: () {
                     
                                        BlocProvider.of<
                                                    CreacionentrenamientoBloc>(
                                                context)
                                            .add(QuieroAnadirEjercicio(
                                          stepActual,
                                        ));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            "_Creacion_Entrenamiento.añadir_ejercicio".tr(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          ),
                                          Icon(Icons.add)
                                        ],
                                      ),
                                    )
                                  : Container(
                                      padding: EdgeInsets.only(
                                          right: 30, top: 5, bottom: 5),
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                         
                                          BlocProvider.of<
                                                      CreacionentrenamientoBloc>(
                                                  context)
                                              .add(QuieroAnadirEjercicio(
                                                  stepActual,
                                                  position: widget
                                                          .mesocicloEntrenamiento
                                                          .diasEntrenamiento[
                                                              stepActual]
                                                          .patrones
                                                          .indexOf(patron) +
                                                      1));
                                        },
                                        child: Container(
                                            padding: EdgeInsets.all(4),
                                            color: Colors.orange[400],
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  "_Creacion_Entrenamiento.añadir_ejercicio".tr(),
                                                  style: TextStyle(fontSize: 8),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Icon(
                                                  Icons.add,
                                                  size: 12,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                            ],
                          );
                        }).toList()),
                  ),
          ],
        ));

    StepperBloc blocEvent = StepperBloc(
        maxSteps: widget.mesocicloEntrenamiento.diasEntrenamiento.length,
        initial: widget.numeroDia);

    List<FAStep> crearSteps(int state) {
      List<FAStep> steps = [];
      int stepActual = -1;
      widget.mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
        stepActual = stepActual + 1;

   
        // String nombre = diaE.nombreentrenamiento;

        steps.add(
          FAStep(
            state: (state == stepActual)
                ? FAStepstate.editing
                : FAStepstate.indexed,
            isActive: (state == stepActual) ? true : false,
            title: Text(
              "_Creacion_Entrenamiento.dia_x".tr(args: [(stepActual+1).toString()]),
              style: TextStyle(
                  color: Colors.orange[400], fontWeight: FontWeight.bold),
            ),
            // subtitle: FittedBox(
            //     child: Text(
            //   '$nombre',
            //   style: TextStyle(color:  Colors.orange[400] ),
            // )),
            // state: FAStepstate.values[12,2,3],
            content: makeBody(stepActual),
          ),
        );
      });
      return steps;
    }

    return BlocProvider(
        create: (context) => blocEvent,
        child: WillPopScope(
          onWillPop: () async {
            (widget.userBmi != null)
                ? BlocProvider.of<CreacionentrenamientoBloc>(context)
                    .add(QuieroVolverAPaginaDeNombre())
                : BlocProvider.of<MesocicloBlocBloc>(context).add(
                    UserQuiereVolveraElegirEntrenamiento(
                        widget.mesocicloEntrenamiento.semanaActual, false));

            return false;
          },
          child: Scaffold(
            backgroundColor: Color.fromRGBO(3, 9, 40, 1),
            //  floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            // persistentFooterButtons: <Widget>[
            //   IconButton(icon: Icon(Icons.insert_emoticon),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.mood),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.mood_bad),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.sentiment_dissatisfied),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.sentiment_neutral),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.sentiment_satisfied),onPressed: () {}),
            //   IconButton(icon: Icon(Icons.sentiment_very_dissatisfied),onPressed: () {}),
            // ],
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () async{
                  if  (widget.userBmi != null)
                        BlocProvider.of<CreacionentrenamientoBloc>(context)
                            .add(QuieroVolverAPaginaDeNombre()); else {

        
           await widget.principalRepository.obtenerUltimoMesociclo();

 BlocProvider.of<MesocicloBlocBloc>(context).add(
                            UserQuiereVolveraElegirEntrenamiento(
                                widget.mesocicloEntrenamiento.semanaActual,
                                false));

                            }
                       
                  }),
              backgroundColor: Theme.of(context).accentColor,
              title: FittedBox(
                child: Text(
                  "_Creacion_Entrenamiento.nombre_mesociclo".tr(args: [(widget.mesocicloEntrenamiento.nombreMesociclo).toString()]),
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            body: BlocBuilder<StepperBloc, StepperState>(
              buildWhen: (prevState, currState) =>
                  currState.step < currState.maxSteps,
              builder: (BuildContext context, StepperState state) {
                return FAStepper(
                  currentStep: state.step,
                  steps: crearSteps(state.step),
                  type: FAStepperType.horizontal,
                  titleHeight: 100,
                  // physics: NeverScrollableScrollPhysics(),
                  titleIconArrange: FAStepperTitleIconArrange.column,
                  stepNumberColor: Colors.orange[400],
                  onStepTapped: (step) {
                    // BlocProvider.of<StepperBloc>(context).add(StepTapped(step));
                  },
                  onStepCancel: () {
                    BlocProvider.of<StepperBloc>(context).add(StepCancelled());
                  },
                  onStepContinue: () {
                    // widget.listaFrecuencia[state.step] = {
                    //   'Pecho': 0,
                    //   'Espalda': 0,
                    //   'Biceps': 0,
                    //   'Triceps': 0,
                    //   'Hombro Lateral': 0,
                    //   'Hombro Frontal': 0,
                    //   'Hombro Posterior': 0,
                    //   'Cuadriceps': 0,
                    //   'Femoral': 0,
                    //   'Gluteo': 0,
                    //   'Trapecio': 0,
                    //   'Gemelo': 0,
                    //   'Abs': 0
                    // };

                    // widget.mesocicloEntrenamiento.diasEntrenamiento[state.step]
                    //     .patrones
                    //     .forEach((patron) {
                    //   widget.listaFrecuencia[state.step].forEach((key, value) {
                    //     if (patron.ejercicioSeleccionado.musculosTrabajados !=
                    //         null) if (patron.ejercicioSeleccionado
                    //             .musculosTrabajados['Primario1'] ==
                    //         key) {
                    //       widget.listaFrecuencia[state.step]
                    //           .update(key, (value) => value = value + 1);
                    //     }
                    //   });
                    // });

                    // print('${widget.listaFrecuencia[0]}');
                    // print('${widget.listaFrecuencia[1]}');
                    // print('${widget.listaFrecuencia[2]}');

                    if (state.step < state.maxSteps - 1)
                      BlocProvider.of<StepperBloc>(context).add(StepContinue());
                    else {
                      // int diaActual = 0;

                      // widget.mesocicloEntrenamiento.diasEntrenamiento
                      //     .forEach((diaE) {
                      //       print(diaE.nombreentrenamiento);
                      //   widget.listaFrecuencia[diaActual].forEach((key, value) {
                      //     if (value > 0 &&
                      //         diaE.musculosTrabajados.contains(key) == false)
                      //       diaE.musculosTrabajados.add(key);
                      //   });
                      //   diaActual = diaActual + 1;
                      // });
                      if (widget.userBmi != null) {
                        BlocProvider.of<ConfiguracionentrenamientoBloc>(context)
                            .add(HeAcabadoDeCrear(
                                widget.mesocicloEntrenamiento,
                                widget.userFase,
                                widget.userBmi,
                                widget.sexo,
                                widget.creacionRepository.userID,
                                widget.materialDisponible1,
                                widget.materialDisponible2));
                      } else {
                        
                          BlocProvider.of<MesocicloBlocBloc>(context).add(
                              UserHaAcabadoDeEditarMesociclo(
                                  widget.mesocicloEntrenamiento));
                       
                      }

                      //cambiar
                    }
                  },
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue,
                      VoidCallback onStepCancel}) {
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: (state.step != state.maxSteps - 1)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        SizedBox(width: 20),
                                        FlatButton(
                                          color: Colors.orange[400],
                                          onPressed: onStepCancel,
                                          child: Text(
                                            "_Creacion_Entrenamiento.volver".tr(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        FlatButton(
                                          color: Colors.orange[400],
                                          onPressed: onStepContinue,
                                          child: FittedBox(
                                              child:  Text(
                                            "_Creacion_Entrenamiento.siguiente_dia".tr(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          )),
                                        ),
                                      ])
                                : (MediaQuery.of(context).orientation ==
                                        Orientation.landscape)
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                            SizedBox(width: 20),
                                            FlatButton(
                                              color: Colors.orange[400],
                                              onPressed: onStepCancel,
                                              child: Text(
                                                "_Creacion_Entrenamiento.volver".tr(),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            FlatButton(
                                              color: Colors.orange[400],
                                              onPressed: onStepContinue,
                                              child:  Text(
                                                "_Creacion_Entrenamiento.pasar_al_siguiente_entrenamiento".tr(),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87),
                                              ),
                                            ),
                                          ])
                                    : FittedBox(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              FlatButton(
                                                color: Colors.orange[400],
                                                onPressed: onStepCancel,
                                                child: Text(
                                                  "_Creacion_Entrenamiento.volver".tr(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black87),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              FlatButton(
                                                color: Colors.orange[400],
                                                onPressed: onStepContinue,
                                                child: Text(
                                                  "_Creacion_Entrenamiento.pasar_al_siguiente_entrenamiento".tr(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black87),
                                                ),
                                              ),
                                            ]),
                                      ),
                          ),
                          (widget.userBmi == null)
                              ? FlatButton(
                                  color: Colors.orange[400],
                                  onPressed: () {
                                    guardar(state.maxSteps, context);
                                  },
                                  child: Text(
                                    "_Creacion_Entrenamiento.guardar".tr(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    );
                  },

                  // controlsBuilder: (BuildContext context,
                  // {VoidCallback onStepcontinue, VoidCallback onStepCancel}){
                  //   return Row(children: <Widget>[
                  //     FlatButton(onPressed: onStepcontinue, child: Text('Next')),
                  //     FlatButton(onPressed: onStepcontinue, child: Text('Back')),

                  //   ],);
                  // },
                );
              },
            ),
          ),
        ));
  }
}
// bottomNavigationBar: makeBottom,
