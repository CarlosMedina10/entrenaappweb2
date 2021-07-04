
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/blocs/B_VISUALIZACION_ENTRENAMIENTO/visualizacionentrenamiento_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CuestionarioVisualizacion extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final int mesocicloSelected;
  final int semanaSelected;

  CuestionarioVisualizacion(this.principalRepository, this.mesocicloSelected,
      {this.semanaSelected});
  @override
  _CuestionarioVisualizacionState createState() =>
      _CuestionarioVisualizacionState();
}

class _CuestionarioVisualizacionState extends State<CuestionarioVisualizacion> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _fbKey2 = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
 

    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<PaginaprincipalBloc>(context)
              .add(UserHaAcabadoDeVisualizarHistorial());
          return false;
        },
        child: Scaffold(
            backgroundColor: Color.fromRGBO(3, 9, 40, 1),
            // Colors.grey[800],
            appBar: AppBar(
                title: Text("_Historial.historial_de_entrenamientos".tr()),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    BlocProvider.of<PaginaprincipalBloc>(context)
                        .add(UserHaAcabadoDeVisualizarHistorial());
                    //  BlocProvider.of<PaginaprincipalBloc>(context).add(UserNoQuiereConfigurarNuevoEntrenamiento());
                  },
                )),
            body: ListView(children: <Widget>[
              FormBuilder(
                  key: _fbKey,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          FormBuilderDropdown(
                            // readOnly: widget.mesocicloSelected>=0 ? true : false,
                            initialValue: (widget.mesocicloSelected >= 0)
                                ? widget
                                        .principalRepository
                                        .historialEntrenamiento
                                        .historialEntrenamiento[
                                    widget.mesocicloSelected]
                                // + ' - ' + widget.principalRepository
                                // .historialEntrenamiento.historialEntrenamiento[widget.mesocicloSelected].fechaInicio
                                : null,
                            icon: widget.mesocicloSelected < 0
                                ? Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey[300],
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.grey[300],
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<
                                                  VisualizacionentrenamientoBloc>(
                                              context)
                                          .add(
                                              UserVuelveAPaginaInicial(-1));
                                    },
                                  ),

                            onChanged: (value) {
                              //  print('${widget._principalRepository.historialEntrenamiento.historialEntrenamiento.indexOf(value)}');
                              BlocProvider.of<
                                          VisualizacionentrenamientoBloc>(
                                      context)
                                  .add(UserHaSeleccionadoMesociclo(widget
                                      .principalRepository
                                      .historialEntrenamiento
                                      .historialEntrenamiento
                                      .indexOf(value)));
                            },
                            name: "mesociclo",
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(25),
                                fillColor: Color.fromRGBO(3, 9, 40, 1),
                                // Colors.grey[800],
                                filled: true,
                                labelText: "_Historial.selecciona_un_mesociclo".tr(),
                                labelStyle: TextStyle(
                                  color: Colors.orange[600],
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                errorStyle: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.orange[300])),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            hint: Text("_Historial.selecciona_un_mesociclo".tr(),
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            validator: 
                                          
                                            FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(context,
                                              errorText:
                                                  "_Historial.debes_seleccionar_un_mesociclo".tr(),
                                            )
                                          ],),
                           
                            items: widget
                                .principalRepository
                                .historialEntrenamiento
                                .historialEntrenamiento
                                .map((mesociclo) => DropdownMenuItem(
                                      value: mesociclo,
                                      child: FittedBox(
                                        child: Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                (mesociclo.fechaInicio !=
                                                            null &&
                                                        mesociclo
                                                                .fechaInicio
                                                                .length >
                                                            12)
                                                    ? '${mesociclo.nombreMesociclo} - ${mesociclo.fechaInicio.replaceRange(10, mesociclo.fechaInicio.length, "")}'
                                                    : (mesociclo.fechaInicio !=
                                                            null)
                                                        ? '${mesociclo.nombreMesociclo} - ${mesociclo.fechaInicio}'
                                                        : '${mesociclo.nombreMesociclo}',
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          // : Container(),
                          SizedBox(height: 20),
                          (widget.mesocicloSelected >= 0)
                              ? FormBuilderDropdown(
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey[300],
                                  ),
                                  name: "semana",
                                  initialValue:
                                      (widget.semanaSelected != null)
                                          ? widget.semanaSelected
                                          : null,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(25),
                                      fillColor:
                                          Color.fromRGBO(3, 9, 47, 1),
                                      // Colors.grey[800],
                                      filled: true,
                                      labelText: "_Historial.selecciona_una_semana".tr(),
                                      labelStyle: TextStyle(
                                        color: Colors.orange[600],
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      errorStyle: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.orange[300])),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      )),
                                  hint: Text("_Historial.selecciona_una_semana".tr(),
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                                      validator: 
                                          
                                            FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(context,
                                              errorText:
                                                  "_Historial.debes_seleccionar_una_semana".tr(),
                                            )
                                          ],),
                               
                                  items: [1, 2, 3, 4]
                                      .map((semana) => DropdownMenuItem(
                                            value: semana,
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  '$semana',
                                                  style: TextStyle(
                                                    color: Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ))
                                      .toList(),
                                )
                              : Container(),

                          SizedBox(height: 20),
                          (widget.mesocicloSelected >= 0)
                              ? FormBuilderDropdown(
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey[300],
                                  ),
                                  name: "dia",
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(25),
                                      fillColor:
                                          Color.fromRGBO(3, 9, 47, 1),
                                      // Colors.grey[800],
                                      filled: true,
                                      labelText: "_Historial.selecciona_un_dia".tr(),
                                      labelStyle: TextStyle(
                                        color: Colors.orange[600],
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      errorStyle: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.orange[300])),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      )),
                                  hint: Text("_Historial.selecciona_un_dia".tr(),
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                                      validator: 
                                          
                                            FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(context,
                                              errorText:"_Historial.debes_seleccionar_un_dia".tr(),
                                            )
                                          ],),
                                 
                                  items: widget
                                      .principalRepository
                                      .historialEntrenamiento
                                      .historialEntrenamiento[
                                          widget.mesocicloSelected]
                                      .diasEntrenamiento
                                      .map((diasEntrenamiento) =>
                                          DropdownMenuItem(
                                            value: diasEntrenamiento,
                                            child: FittedBox(
                                              child: Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      '${diasEntrenamiento.nombreentrenamiento}',
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey[300],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                )
                              : Container(),

                          (widget.mesocicloSelected >= 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: FlatButton(
                                    color: Colors.orange[400],
                                    onPressed: () {
                                      if (_fbKey.currentState
                                          .saveAndValidate()) {
                                        print(_fbKey.currentState.value);

                                        BlocProvider.of<
                                                    VisualizacionentrenamientoBloc>(
                                                context)
                                            .add(UserVaAVisualizarEntrenamiento(
                                                widget.mesocicloSelected,
                                                _fbKey.currentState
                                                    .value['semana'],
                                                widget
                                                    .principalRepository
                                                    .historialEntrenamiento
                                                    .historialEntrenamiento[
                                                        widget
                                                            .mesocicloSelected]
                                                    .diasEntrenamiento
                                                    .indexOf(_fbKey
                                                        .currentState
                                                        .value['dia'])));
                                      }
                                    },
                                    child: Text(
                                      "_Historial.buscar".tr(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ),
                                )
                              : Container(),

                          FormBuilder(
                              key: _fbKey2,
                              child: Column(children: <Widget>[
                                (widget.mesocicloSelected !=
                                            widget
                                                    .principalRepository
                                                    .historialEntrenamiento
                                                    .historialEntrenamiento
                                                    .length -
                                                1) &&
                                        (widget.mesocicloSelected >= 0)
                                    ? FormBuilderSwitch(
                                        inactiveThumbColor: Colors.white,
                                        inactiveTrackColor:
                                            Colors.grey[600],
                                        title: Text(
                                          "_Historial.¿quieres_eliminar?".tr(),
                                          style: TextStyle(
                                            color: Colors.grey[100],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        name: "Quiero Eliminar",
                                        initialValue: false,
                                        decoration: InputDecoration(
                                            // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                            // Colors.grey[800],
                                            filled: true,
                                            labelText:  "_Historial.eliminar_mesociclo".tr(),
                                            labelStyle: TextStyle(
                                              color: Colors.red,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                              validator: 
                                          
                                            FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(context,
                                              errorText:
                                                  "_Historial.debes_marcar_esta_casilla".tr(),
                                            )
                                          ],))
                                      
                                    : Container(),
                                (widget.mesocicloSelected !=
                                            widget
                                                    .principalRepository
                                                    .historialEntrenamiento
                                                    .historialEntrenamiento
                                                    .length -
                                                1) &&
                                        (widget.mesocicloSelected >= 0)
                                    ? Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: FlatButton(
                                          color: Colors.red,
                                          onPressed: () {
                                            if (_fbKey2.currentState
                                                .saveAndValidate()) {
                                              print(_fbKey2
                                                  .currentState.value);
                                              if (_fbKey2.currentState
                                                  .value["Quiero Eliminar"])
                                                BlocProvider.of<
                                                            VisualizacionentrenamientoBloc>(
                                                        context)
                                                    .add(UserVaAEliminarMesociclo(
                                                        widget
                                                            .mesocicloSelected,
                                                        false));
                                            }
                                          },
                                          child:  Text(
                                              "_Historial.eliminar".tr(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ]))
                        ],
                      )))
            ])
//            if (state.isSucess==true) {
//              BlocProvider.of<ConfiguracionentrenamientoBloc>(context)
//                           .add(HeAcabadoCuestionario(state.checkBox,widget.userFase,widget.userBMI));

//            }
//            else
//            if (state.isFailure) {
//              String material;
//         if (state.materialDisponible==1)
//   material= 'disponiendo de un gimnasio.' ;
//   if (state.materialDisponible==2)
//   material= 'disponiendo de barras y mancuernas al menos.' ;
//  if (state.materialDisponible==3)
//   material= 'sin nada de material.' ;
//         Scaffold.of(context)
//           ..hideCurrentSnackBar()
//           ..showSnackBar(
//             SnackBar(
//               // action: SnackBarAction(label: 'Hola',onPressed:(){} ,textColor:Colors.grey[900],),
//               duration:Duration(seconds:8) ,
//               content: Container(
//                 height: 150,
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Container(
//                           width: MediaQuery.of(context).size.width*0.6,

//                           child: Text('Este entrenamiento todavia no existe. Por favor, revisa las combinaciones de grupos musculares que puedes priorizar para el entrenamiento de ${state.numeroDiasEntrenamiento}, $material  ',maxLines: 5,)), Icon(Icons.error)],
//                       ),
//                        SizedBox(height:10 ,),
//                      FlatButton(
//                        padding:EdgeInsets.all(8) ,
//                                   color: Colors.grey[900],
//                                   onPressed:(){
//                                     BlocProvider.of<CuestionarioBlocBloc>(context)
//                             .add(UserHaDecididoQueQuierePriorizar(state.numeroDiasEntrenamiento,state.materialDisponible));
//                                    Scaffold.of(context).hideCurrentSnackBar();

//                                     },
//                                   child: FittedBox(child: const Text('Ver posibles combinaciones para priorizar trabajo',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white),)),
//                                 ),

//                   ],

//                 ),
//               ),
//               backgroundColor: Colors.orange,
//             ),
//           );
//        }
            ));
  }
}
