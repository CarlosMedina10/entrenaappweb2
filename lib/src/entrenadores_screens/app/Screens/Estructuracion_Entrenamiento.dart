import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaapp/blocs/configuracionentrenamiento_bloc/configuracionentrenamiento_bloc.dart';
import 'package:entrenaapp/blocs/login_bloc/stepper_bloc/stepper_bloc.dart';
import 'package:entrenaapp/blocs/seleccionej_bloc/seleccionej_bloc.dart';
import 'package:entrenaapp/models/Ejercicio.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/fa_stepper.dart';

import 'package:easy_localization/easy_localization.dart';



class EstructuracionEntrenamiento extends StatelessWidget {
  final MesocicloEntrenamiento mesocicloentrenamiento;
  final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final SeleccionRepository seleccionRepository;
  final PrincipalRepository principalRepository;
  final int numeroDiasEntrenamiento;
  final DateTime fechaInicio;
  final String volume;

  EstructuracionEntrenamiento(
      this.mesocicloentrenamiento,
      this.userFase,
      this.userBmi,
      this.sexo,
      this.materialDisponible1,
      this.materialDisponible2,
      this.prioridad,
      this.seleccionRepository,
      this.principalRepository,
      this.numeroDiasEntrenamiento,
      this.fechaInicio,
      this.volume);

  @override
  Widget build(BuildContext context) {
    _showAlertDialog(
      String message,
      BuildContext context,
    ) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("_Estructuracion_Entrenamiento.¿estas seguro?".tr()),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("_Estructuracion_Entrenamiento.si".tr()),
              onPressed: () {
                BlocProvider.of<ConfiguracionentrenamientoBloc>(context).add(
                    QuieroVerOtraEstructura(
                        userFase,
                        userBmi,
                        sexo,
                        materialDisponible1,
                        materialDisponible2,
                        prioridad,
                        numeroDiasEntrenamiento,
                        fechaInicio,
                        volume));
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("_Estructuracion_Entrenamiento.no".tr()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }

    // final EstructuracionApi estructuracionApi = EstructuracionApi();
    // final SeleccionRepository seleccionRepository = SeleccionRepository(estructuracionApi);
    StepperBloc blocEvent =
        StepperBloc(maxSteps: mesocicloentrenamiento.diasEntrenamiento.length);

    List<Widget> _returnitems(int numeroDiaEntrenamiento) {
      final List<Widget> items = [];
      mesocicloentrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones
          .forEach((patron) {
        items.add(
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: BlocProvider<SeleccionejBloc>(
              create: (context) => SeleccionejBloc(
                  seleccionRepository,
                  numeroDiaEntrenamiento,
                  mesocicloentrenamiento
                      .diasEntrenamiento[numeroDiaEntrenamiento].patrones
                      .indexOf(patron),
                  blocEvent),
              child: BlocBuilder<SeleccionejBloc, String>(
                builder: (context, state) {
                  return
                      // (state !=  (mesocicloentrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones[mesocicloentrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones.indexOf(patron)].ejercicioSeleccionado.nombre)) ?
                      // Center(child: CircularProgressIndicator()) :

                      Container(
                    margin: EdgeInsets.symmetric(vertical: 2),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(13, 19, 50, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: DropdownButton<String>(
                      dropdownColor: Colors.grey[50],
                      // hint: Text('HOLA'),
                      // itemHeight: 20,
                      isExpanded: true,
                      // isDense: true,

                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey[50],
                      ),
                      iconSize: 24,
                      elevation: 8,

                      style: TextStyle(

                          // backgroundColor: Colors.red,
                          color: Colors.grey[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      underline: Container(
                        height: 2,
                        color: Colors.orange,
                      ),
                      // style: TextStyle(backgroundColor: Theme.of(context).accentColor),
                      selectedItemBuilder: (BuildContext context) {
                        
                        return patron.ejercicios.map((Ejercicio ejercicio) {
                          print(ejercicio.nombre);
                          print('ok');
                          return DropdownMenuItem<String>(
                              value: ejercicio.nombre,
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(13, 19, 50, 1),
                                )),
                                child: FittedBox(
                                  child: Text(
                                    '${ejercicio.nombre}',
                                    textAlign: TextAlign.center,
                                    // style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                              ));
                        }).toList();
                      },
                      items: patron.ejercicios.map((Ejercicio ejercicio) {
                        print(' aquiiii ${ejercicio.nombre}');
                        return DropdownMenuItem<String>(
                            value: ejercicio.nombre,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 2,
                                color: Color.fromRGBO(13, 19, 50, 1),
                              )),
                              child: FittedBox(
                                child: Text(
                                  '${ejercicio.nombre}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(3, 9, 40, 1)),
                                ),
                              ),
                            ));
                      }).toList(),

                      onChanged: (String valorseleccionado) {
                        BlocProvider.of<SeleccionejBloc>(context).add(
                            ChangeEvent(
                                valorseleccionado,
                                numeroDiaEntrenamiento,
                                mesocicloentrenamiento
                                    .diasEntrenamiento[numeroDiaEntrenamiento]
                                    .patrones
                                    .indexOf(patron)));
                        print(mesocicloentrenamiento
                            .diasEntrenamiento[numeroDiaEntrenamiento]
                            .patrones[mesocicloentrenamiento
                                .diasEntrenamiento[numeroDiaEntrenamiento]
                                .patrones
                                .indexOf(patron)]
                            .ejercicioSeleccionado
                            .nombre);
                      },

                      value: state,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      });
      return items;
    }

    final List<List<FAStep>> steps2 = [];
    List<FAStep> steps = [];
    int stepActual = -1;
    mesocicloentrenamiento.diasEntrenamiento.forEach((diaE) {
      int i = -1;
      stepActual = stepActual + 1;
      mesocicloentrenamiento.diasEntrenamiento.forEach((diaE) {
        print('$i');
        i = i + 1;
        String nombre = diaE.nombreentrenamiento;
        steps.add(
          FAStep(
            state: i == stepActual ? FAStepstate.editing : FAStepstate.indexed,
            isActive: i == stepActual ? true : false,
            title: Text(
              "_Estructuracion_Entrenamiento.dia".tr(args: [(i+1).toString()]),
              style: TextStyle(
                  color:
                      i == stepActual ? Colors.orange[400] : Colors.grey[300],
                  fontSize: i == stepActual ? 18 : 14,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: FittedBox(
                child: Text(
               (principalRepository.locale.substring(0,2) == 'es') ?
              '${nombre.replaceRange(0, 7, '')}' : '$nombre',
              style: TextStyle(
                  color:
                      i == stepActual ? Colors.orange[400] : Colors.grey[300],
                  fontSize: i == stepActual ? 16 : 12),
            )),
            // state: FAStepstate.values[12,2,3],
            content: Container(
              child: Column(children: <Widget>[
                AutoSizeText(
                  "_Estructuracion_Entrenamiento.dia".tr(args: [(i+1).toString()]),
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[300]),
                  minFontSize: 10,
                  maxFontSize: 24,
                  maxLines: 1,
                ),
                SizedBox(height: 20),

                ..._returnitems(
                    mesocicloentrenamiento.diasEntrenamiento.indexOf(diaE)),

                SizedBox(height: 10),

                // SizedBox(height: 10),
              ]),
            ),
          ),
        );
      });
      steps2.add(steps);
      steps = [];
    });

    return BlocProvider(
        create: (context) => blocEvent,
        child: WillPopScope(
          onWillPop: () async {
            BlocProvider.of<ConfiguracionentrenamientoBloc>(context)
                .add(VolveraCuestionario(volume: volume));
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
                  icon: Icon(
                     Icons.arrow_back,
                  ),
                  onPressed: () {
                    BlocProvider.of<ConfiguracionentrenamientoBloc>(context)
                        .add(VolveraCuestionario(volume: volume));
                  }),
              backgroundColor: Theme.of(context).accentColor,
              title: FittedBox(
                child: Text(
                   "_Estructuracion_Entrenamiento.mesociclo".tr(args: [mesocicloentrenamiento.nombreMesociclo]),
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
                  steps: steps2[state.step],
                  type: FAStepperType.horizontal,
                  titleHeight: 87,
                  // physics: NeverScrollableScrollPhysics(),
                  titleIconArrange: FAStepperTitleIconArrange.column,
                  stepNumberColor: Colors.orange[400],
                  onStepTapped: (step) {
                    BlocProvider.of<StepperBloc>(context).add(StepTapped(step));
                  },
                  onStepCancel: () {
                    BlocProvider.of<StepperBloc>(context).add(StepCancelled());
                  },
                  onStepContinue: () {
                    (state.step < state.maxSteps - 1)
                        ? BlocProvider.of<StepperBloc>(context)
                            .add(StepContinue())
                        : BlocProvider.of<ConfiguracionentrenamientoBloc>(
                                context)
                            .add(HeAcabadoDeEstructurar(
                                userFase,
                                userBmi,
                                sexo,
                                materialDisponible1,
                                materialDisponible2,
                                prioridad,
                                numeroDiasEntrenamiento,
                                fechaInicio,
                                volume));
                  },
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue,
                      VoidCallback onStepCancel}) {
                    return Container(
                      // alignment: (prioridad.isEmpty == false) ? Alignment.center : Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            child: (state.step != state.maxSteps - 1)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        FlatButton(
                                          color: Colors.orange[400],
                                          onPressed: onStepCancel,
                                          child:Text(
                                             "_Estructuracion_Entrenamiento.volver".tr(),
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
                                              child: Text(
                                             "_Estructuracion_Entrenamiento.siguiente_dia".tr(),
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
                                           FlatButton(
                                              color: Colors.orange[400],
                                              onPressed: onStepCancel,
                                              child: Text(
                                                 "_Estructuracion_Entrenamiento.volver".tr(),
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
                                                "_Estructuracion_Entrenamiento.pasar_al_siguiente_entrenamiento".tr(),
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
                                                child:  Text(
                                                  "_Estructuracion_Entrenamiento.volver".tr(),
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
                                                    "_Estructuracion_Entrenamiento.pasar_al_siguiente_entrenamiento".tr(),
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
                          (prioridad.isEmpty && userFase == 3)
                              ? FlatButton(
                                  color: Colors.orange[400],
                                  onPressed: () {
                                    _showAlertDialog(
                                        "_Estructuracion_Entrenamiento.al_hacerlo_se_perderan_los_cambios".tr(),
                                        context);
                                  },
                                  child:  Text(
                                    "_Estructuracion_Entrenamiento.ver_otra_estructura".tr(),
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
