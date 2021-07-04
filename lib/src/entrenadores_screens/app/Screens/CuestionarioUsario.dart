
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_CUESTIONARIO/cuestionario_bloc_bloc.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/blocs/configuracionentrenamiento_bloc/configuracionentrenamiento_bloc.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';


import 'package:row_collection/row_collection.dart';


import 'package:intl/date_symbol_data_local.dart';

class CuestionarioUsuario extends StatefulWidget {
  final SeleccionRepository seleccionRepository;
  final PrincipalRepository principalRepository;
  final bool isUserInit;

  final int userFase;
  final double userBMI;
  final String sexo;

  CuestionarioUsuario(this.seleccionRepository, this.principalRepository,
      this.isUserInit, this.userFase, this.userBMI, this.sexo);

  @override
  CuestionarioUsuarioState createState() => CuestionarioUsuarioState();
}

class CuestionarioUsuarioState extends State<CuestionarioUsuario> {

  String _connectionStatus = 'Unknown';
  String volume;

  bool tapped = false;
  bool tapped2 = false;
  bool isLoadingPayment = false;
  bool isPressed;
  String sexo;

 
  _showPaymentCompleted(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("¡Enhorabuena!"),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("Ok"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _showError(String message, BuildContext context,
      {bool fromErrorfecha = false}) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("¡Error!"),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
              if (fromErrorfecha == true)
                BlocProvider.of<CuestionarioBlocBloc>(context)
                    .add((PulsaOkDespuesDeError()));
            },
          ),
        ],
      ),
    );
  }

  void launchInstagram(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('es', null);
    isPressed = false;
  
    // Future.delayed(Duration(seconds: 1)).then((value) {if  (_connectionStatus=='ConnectivityResult.none' && !widget.principalRepository.isUserPro)  _showError('Por favor, necesitas conexion a internet para que podamos actualizar tu entrenamiento, si no los datos no se actualizaran.', context);});
  }

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  
  final DateTime startDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    
  String _transFormSexo(String sexo1){

    if (sexo1=='Hombre' || sexo1=='Male')
   return "_Cuestionario.hombre".tr();
   else return "_Cuestionario.mujer".tr();

 }
    return BlocProvider<CuestionarioBlocBloc>(
      create: (context) => CuestionarioBlocBloc(widget.seleccionRepository),
      child: BlocBuilder<CuestionarioBlocBloc, CuestionarioBlocState>(
          builder: (BuildContext context, CuestionarioBlocState state) {
        return WillPopScope(
            onWillPop: () async {
              (!widget.isUserInit)
                  ? BlocProvider.of<PaginaprincipalBloc>(context)
                      .add(UserNoQuiereConfigurarNuevoEntrenamiento())
                  : null;
              return false;
            },
            child: Scaffold(
                backgroundColor: Color.fromRGBO(3, 9, 40, 0.9),
                // Colors.grey[800],
                appBar: AppBar(
                  title: Text("_Cuestionario.cuestionario_usuario".tr()),
                  leading: (!widget.isUserInit)
                      ? IconButton(
                          icon: Icon( Icons.arrow_back),
                          onPressed: () {
                            BlocProvider.of<PaginaprincipalBloc>(context).add(
                                UserNoQuiereConfigurarNuevoEntrenamiento());
                          },
                        )
                      : Container(),
                ),
                body: BlocListener<CuestionarioBlocBloc,
                    CuestionarioBlocState>(listener: (context, state) {
                  if (state is CuestionarioEstado) {
                    if (state.fromPayment == true) {
                      _showPaymentCompleted(context,
                          "_Cuestionario.solicitud_prueba_gratuita".tr());
                    }
                    if (state.isSucess == true) {
                      BlocProvider.of<ConfiguracionentrenamientoBloc>(
                              context)
                          .add(HeAcabadoCuestionario(
                              state.checkBox,
                              state.checkBox2,
                              widget.userFase,
                              widget.userBMI,
                              widget.sexo,
                              volume,
                              materialDisponible1:
                                  state.materialDisponible1,
                              materialDisponible2:
                                  state.materialDisponible2,
                              prioridad: state.prioridad,
                              numeroDias: state.numeroDiasEntrenamiento,
                              fechaInicio: state.fechaInicio));
                    } else if (state.isFailure) {
                      // si no se trata de un error de fecha es que no se ha encontrado mesociclo
                      if (state.errorFecha == false) {
                        Scaffold.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 8),
                              content: WillPopScope(
              onWillPop: () async {
      BlocProvider.of<
                                                    CuestionarioBlocBloc>(
                                                context)
                                            .add(UserHaDecididoQueQuierePriorizar(
                                                state
                                                    .numeroDiasEntrenamiento,
                                                state.materialDisponible));
            return true;
              },child: Container(
                                height: 150,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Text(
                                              "_Cuestionario.este_entrenamiento_todavia_no_esta_disponible".tr(args: [state.numeroDiasEntrenamiento.toString()]),
                                              maxLines: 5,
                                            )),
                                        Icon(Icons.error)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    FlatButton(
                                      padding: EdgeInsets.all(8),
                                      color: Colors.grey[900],
                                      onPressed: () {
                                        BlocProvider.of<
                                                    CuestionarioBlocBloc>(
                                                context)
                                            .add(UserHaDecididoQueQuierePriorizar(
                                                state
                                                    .numeroDiasEntrenamiento,
                                                state.materialDisponible));
                                        Scaffold.of(context)
                                            .hideCurrentSnackBar();
                                      },
                                      child: FittedBox(
                                          child: Text(
                                        "_Cuestionario.ver_posibles_combinaciones".tr(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    ),
                                  ],
                                ),
              ),),
                              backgroundColor: Colors.orange,
                            )
                          ).closed.then((value) =>  BlocProvider.of<
                                                    CuestionarioBlocBloc>(
                                                context)
                                            .add(UserHaDecididoQueQuierePriorizar(
                                                state
                                                    .numeroDiasEntrenamiento,
                                                state.materialDisponible)));
                      } else {
                        widget.principalRepository.guardarUserVolume(volume,isBack: true);
                        String fechaUltimo = widget
                            .principalRepository
                            .entrenamientoApi
                            .historialEntrenamiento
                            .historialEntrenamiento[widget
                                    .principalRepository
                                    .entrenamientoApi
                                    .historialEntrenamiento
                                    .historialEntrenamiento
                                    .length -
                                1]
                            .fechaInicio
                            .replaceRange(
                                10,
                                widget
                                    .principalRepository
                                    .entrenamientoApi
                                    .historialEntrenamiento
                                    .historialEntrenamiento[widget
                                            .principalRepository
                                            .entrenamientoApi
                                            .historialEntrenamiento
                                            .historialEntrenamiento
                                            .length -
                                        1]
                                    .fechaInicio
                                    .length,
                                "");
                                print(fechaUltimo);
                        _showError(
                             "_Cuestionario.la_fecha_debe_ser_posterior".tr(args: [fechaUltimo.toString()]),
                            context,
                            fromErrorfecha: true);
                      }
                    }
                  }
                }, child: BlocBuilder<CuestionarioBlocBloc,
                        CuestionarioBlocState>(
                    // ignore: missing_return
                    builder: (BuildContext context,
                        CuestionarioBlocState state) {
                  if (state is CuestionarioEstado) {
                    return ListView(
                      children: <Widget>[
                      
                        (widget.principalRepository.userFase < 3)
                            ? SizedBox(
                                height: 5,
                              )
                            : Container(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 25,
                          ),
                          child: (widget.principalRepository.userFase < 3)
                              ? Text(
                                   "_Cuestionario.fase_formacion".tr(args: ['${widget.userFase+1}']),
                                  style: TextStyle(color: Colors.grey[50]),
                                )
                              : Container(),
                        ),
                        Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.grey[50],

                              //     primaryColor: const Color(0xFF02BB9F),
                              // primaryColorDark: const Color(0xFF167F67),
                              // accentColor: const Color(0xFF167F67),

                              // dialogBackgroundColor: Colors.grey[300],
                            ),
                            child: FormBuilder(
                              key: _fbKey,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    // FormBuilderDateTimePicker(

                                    //  name: "Fecha actual",
                                    //   inputType: InputType.both,
                                    //   format: DateFormat("yyyy-MM-dd"),
                                    //   decoration:
                                    //       InputDecoration(labelText: "Fecha actual"),
                                    // ),

                                    Theme(
                                      data: Theme.of(context).copyWith(
                                          canvasColor: Colors.grey[50]
                                          //     primaryColor: const Color(0xFF02BB9F),
                                          // primaryColorDark: const Color(0xFF167F67),
                                          // accentColor: const Color(0xFF167F67),

                                          // dialogBackgroundColor: Colors.grey[300],

                                          ),
                                      child: Builder(
                                        builder: (context) =>
                                            FormBuilderDateTimePicker(
                                          locale:   Locale("es"),
                                          name: "Fecha actual",
                                          inputType: InputType.date,
                                          initialValue: startDate,
                                          resetIcon: Icon(Icons.close,
                                              color: Colors.grey[300]),
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          format: DateFormat('yyyy-MM-dd'),
                                          firstDate: DateTime.now(),
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(25),
                                              // fillColor: Color.fromRGBO(3, 9, 40, 1),
                                              // Colors.grey[800],
                                              filled: true,
                                              labelText:
                                                  "_Cuestionario.fecha_comienzo".tr(),
                                              labelStyle: TextStyle(
                                                color: Colors.orange[600],
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                              // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                              )),
                                          validator: 
                                          
                                            FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(context,
                                              errorText:
                                                  "_Cuestionario.debes_introducir_fecha".tr(),
                                            )
                                          ],)
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    //  (isUserInit) ?

                                    FormBuilderDropdown(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey[300],
                                      ),

                                      name: "sexo",
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.all(25),
                                          // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                          // Colors.grey[800],
                                          filled: true,
                                          labelText:  "_Cuestionario.sexo".tr(),
                                          labelStyle: TextStyle(
                                            color: Colors.orange[600],
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                          // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,

                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      initialValue: _transFormSexo(widget.sexo),
                                      // hint: Text('Sexo',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,)),
                                      validator: 
                                        FormBuilderValidators.compose([
                                        FormBuilderValidators.required(context,
                                         errorText:
                                              "_Cuestionario.debes_seleccionar_tu_sexo".tr(),
                                        
                                      )]),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return ["_Cuestionario.hombre".tr(), "_Cuestionario.mujer".tr(),]
                                            .map((gender) =>
                                                DropdownMenuItem(
                                                  value: gender,
                                                  child: Row(
                                                    children: <Widget>[
                                                      (gender == "_Cuestionario.hombre".tr())
                                                          ? Icon(
                                                              CommunityMaterialIcons
                                                                  .human_male,
                                                              color: Colors
                                                                      .grey[
                                                                  300],
                                                            )
                                                          : Icon(
                                                              CommunityMaterialIcons
                                                                  .human_female,
                                                              color: Colors
                                                                      .grey[
                                                                  300]),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        '$gender',
                                                        style: TextStyle(
                                                          color: Colors
                                                              .grey[300],
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ))
                                            .toList();
                                      },
                                      items: ["_Cuestionario.hombre".tr(), "_Cuestionario.mujer".tr(),]
                                          .map((gender) => DropdownMenuItem(
                                                value: gender,
                                                child: Row(
                                                  children: <Widget>[
                                                    (gender == "_Cuestionario.hombre".tr())
                                                        ? Icon(
                                                            CommunityMaterialIcons
                                                                .human_male,
                                                            color: Color
                                                                .fromRGBO(
                                                                    3,
                                                                    9,
                                                                    40,
                                                                    1),
                                                          )
                                                        : Icon(
                                                            CommunityMaterialIcons
                                                                .human_female,
                                                            color: Color
                                                                .fromRGBO(
                                                                    3,
                                                                    9,
                                                                    40,
                                                                    1),
                                                          ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      '$gender',
                                                      style: TextStyle(
                                                        color:
                                                            Color.fromRGBO(
                                                                3,
                                                                9,
                                                                40,
                                                                1),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                    // : Container(),
                                    SizedBox(height: 20),
                                    FormBuilderSegmentedControl(
                                        onChanged: (value) {
                                          //  _fbKey.currentState.save();
                                          BlocProvider.of<
                                                      CuestionarioBlocBloc>(
                                                  context)
                                              .add(UserHaSeleccionadoNumeroDeDias(
                                                  value,
                                                  state.materialDisponible,
                                                  state.showInfo));
                                        },
                                        decoration: InputDecoration(
                                            // // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                            // Colors.grey[800],
                                            filled: true,
                                            labelText:
                                               "_Cuestionario.numero_dias_entrenamiento".tr(),
                                            labelStyle: TextStyle(
                                              color: Colors.orange[600],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            // background:Paint()..color=Colors.grey[300]..style=PaintingStyle.stroke..strokeWidth=18..strokeJoin=StrokeJoin.round..strokeCap=StrokeCap.round ),
                                            //  errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                            // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                        borderColor: Colors.grey[900],
                                        selectedColor: Color(0xffe46b10),
                                        pressedColor: Colors.grey[900],
                                        padding: EdgeInsets.all(10),
                                        unselectedColor: Colors.grey[300],
                                        name:
                                            "Número de días de entrenamiento",
                                        options: List.generate(5, (i) {
                                          i = i + 1;
                                          return (i + 1);
                                        })
                                            .map((number) =>
                                                FormBuilderFieldOption(
                                                    value: number))
                                            .toList(),
                                        validator: 
                                        FormBuilderValidators.compose([
                                        FormBuilderValidators.required(context,
                                         errorText:
                                              "_Cuestionario.debes_seleccionar_numero_dias".tr(),
                                        
                                      )]),),
                                    SizedBox(height: 20),
                                    FormBuilderRadioGroup(
                                      onChanged: (value) {
                                        //  _fbKey.currentState.save();
                                        BlocProvider.of<
                                                    CuestionarioBlocBloc>(
                                                context)
                                            .add(UserHaSeleccionadoMaterial(
                                                state
                                                    .numeroDiasEntrenamiento,
                                                value,
                                                state.showInfo));
                                      },
                                      name : "material",
                                      controlAffinity:
                                          ControlAffinity.trailing,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.all(25),
                                          // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                          // Colors.grey[800],
                                          filled: true,
                                          labelText: "_Cuestionario.material".tr(),
                                          labelStyle: TextStyle(
                                            color: Colors.orange[600],
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                          // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      options: [
                                        FormBuilderFieldOption(
                                          value: 1,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(8.0),
                                            child: Container(
                                                width:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.5,
                                                child: AutoSizeText(
                                                  "_Cuestionario.gym".tr(),
                                                  style: TextStyle(
                                                    color: Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                                  maxLines: 2,
                                                )),
                                          ),
                                        ),
                                        FormBuilderFieldOption(
                                          value: 2,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(8.0),
                                            child: Container(
                                                width:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.5,
                                                child: AutoSizeText(
                                                  "_Cuestionario.casa".tr(),
                                                  style: TextStyle(
                                                    color: Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                                  maxLines: 2,
                                                )),
                                          ),
                                        ),
                                      ],
                                     validator: 
                                        FormBuilderValidators.compose([
                                        FormBuilderValidators.required(context,
                                         errorText:
                                              "_Cuestionario.debes_seleccionar_material".tr(),
                                        
                                      )]),
                                    ),
                                    (state.materialDisponible == 2)
                                        ? SizedBox(height: 20)
                                        : Container(),

                                    (state.materialDisponible == 2)
                                        ? Column(
                                            children: <Widget>[
                                              FormBuilderChoiceChip(
                                                backgroundColor:
                                                    Colors.grey[300],
                                                selectedColor:
                                                    Colors.orange,
                                                name:
                                                    'materialDisponible',
                                                spacing: 10,
                                                decoration: InputDecoration(
                                                    helperText:
                                                         "_Cuestionario.debes_seleccionar_al_menos_uno".tr(),
                                                    contentPadding:
                                                        EdgeInsets.all(25),
                                                    // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                                    // Colors.grey[800],
                                                    filled: true,
                                                    labelText:
                                                        "_Cuestionario.material_basico".tr(),
                                                    labelStyle: TextStyle(
                                                      color: Colors
                                                          .orange[600],
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    border:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(20),
                                                    )),
                                                options: [
                                                  FormBuilderFieldOption(
                                                      value: 'barra',
                                                      child: Text(
                                                          "_Cuestionario.barra".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'mancuernas',
                                                      child: Text(
                                                          "_Cuestionario.mancuernas".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'elasticos',
                                                      child: Text(
                                                        "_Cuestionario.elasticos".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'polea',
                                                      child: Text(
                                                        "_Cuestionario.polea".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                ],
                                                validator: 
                                              FormBuilderValidators
                                                  .compose([
                                                    FormBuilderValidators.required(context,errorText:  "_Cuestionario.debes_seleccionar_al_menos_uno".tr(),)
                                               ]
                                              ),
                                                
                                              ),
                                              (state.materialDisponible ==
                                                      2)
                                                  ? SizedBox(height: 20)
                                                  : Container(),
                                              FormBuilderFilterChip(
                                                backgroundColor:
                                                    Colors.grey[300],
                                                selectedColor:
                                                    Colors.orange,
                                                name:
                                                    'materialDisponible2',
                                                spacing: 10,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.all(25),
                                                    // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                                    // Colors.grey[800],
                                                    filled: true,
                                                    labelText:
                                                         "_Cuestionario.otros_complementos".tr(),
                                                    labelStyle: TextStyle(
                                                      color: Colors
                                                          .orange[600],
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    border:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(20),
                                                    )),
                                                options: [
                                                  FormBuilderFieldOption(
                                                      value: 'bancoplano',
                                                      child: Text(
                                                         "_Cuestionario.banco_plano".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value:
                                                          'bancoregulable',
                                                      child: Text(
                                                         "_Cuestionario.banco_regulable".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'poleabaja',
                                                      child: Text(
                                                        "_Cuestionario.polea_baja".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'poleaalta',
                                                      child: Text(
                                                        "_Cuestionario.polea_alta".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'dominadas',
                                                      child: Text(
                                                        "_Cuestionario.dominadas".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  // FormBuilderFieldOption(
                                                  //     value: 'TRX', child: Text('TRX',style: TextStyle(color:Colors.grey[900],fontSize:16,fontWeight:FontWeight.w600),)),
                                                  FormBuilderFieldOption(
                                                      value: 'paralelas',
                                                      child: Text(
                                                       "_Cuestionario.paralelas".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                      FormBuilderFieldOption(
                                                      value: 'trx',
                                                      child: Text(
                                                       "_Cuestionario.trx".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: 'kettlebell',
                                                      child: Text(
                                                       "_Cuestionario.kettlebell".tr(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                ],
                                              ),
                                            ],
                                          )
                                        : Container(),
                                    SizedBox(height: 20),

                                    FormBuilderDropdown(
                                      enabled: true,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey[300],
                                      ),
                                      onChanged: (_) {
                                        _fbKey.currentState.save();
                                        if (_fbKey.currentState
                                                .value['priorizar'] ==
                                            "_Cuestionario.si".tr()) {
                                          BlocProvider.of<
                                                      CuestionarioBlocBloc>(
                                                  context)
                                              .add(UserHaDecididoQueQuierePriorizar(
                                                  state
                                                      .numeroDiasEntrenamiento,
                                                  state
                                                      .materialDisponible));
                                        } else {
                                          BlocProvider.of<
                                                      CuestionarioBlocBloc>(
                                                  context)
                                              .add(UserHaDecididoQueNoQuierePriorizar(
                                                  state
                                                      .numeroDiasEntrenamiento,
                                                  state
                                                      .materialDisponible));
                                        }
                                      },
                                      name: "priorizar",
                                      initialValue: (widget.userFase == 3)
                                          ? null
                                          : "_Cuestionario.no".tr(),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.all(15),
                                          // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                          // Colors.grey[800],
                                          filled: true,
                                        
                                          labelText: "_Cuestionario.priorizar".tr(),
                                          labelStyle: TextStyle(
                                            color: Colors.orange[600],
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          helperText: (widget.userFase == 3)
                                              ? 
                                                  null
                                              : "_Cuestionario.fase_formacion_no_acabada".tr(),
                                          helperMaxLines: 8,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      hint: (tapped == false &&
                                              widget.userFase == 3)
                                          ? FittedBox(
                                              child: Text(
                                                  "_Cuestionario.¿quieres_priorizar?".tr(),
                                                  style: TextStyle(
                                                    color: Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  )))
                                          : null,
                                            validator: 
                                              FormBuilderValidators
                                                  .compose([
                                                    FormBuilderValidators.required(context,errorText: "_Cuestionario.debes_responder_aqui".tr(),)
                                               ]
                                              ),
                  
                                      selectedItemBuilder: (tapped)
                                          ? (BuildContext context) {
                                              return ["_Cuestionario.si".tr(), "_Cuestionario.no".tr(),]
                                                  .map((gender) =>
                                                      DropdownMenuItem(
                                                        value: gender,
                                                        child: Text(
                                                          '$gender',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey[300],
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                          ),
                                                        ),
                                                      ))
                                                  .toList();
                                            }
                                          : null,
                                      items: ["_Cuestionario.si".tr(), "_Cuestionario.no".tr(),]
                                          .map((gender) => DropdownMenuItem(
                                                onTap: () {
                                                  setState(() {
                                                    tapped = true;
                                                  });
                                                },
                                                value: gender,
                                                child: Text(
                                                  '$gender',
                                                  style: TextStyle(
                                                    color: (widget.userFase ==
                                                                3 )
                                                        ? Color.fromRGBO(
                                                            3, 9, 40, 1)
                                                        : Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                    (widget.userFase == 3)
                                        ? SizedBox(height: 20)
                                        : Container(),
                                    ((state.numeroDiasEntrenamiento == 0) ||
                                            (state.numeroDiasEntrenamiento ==
                                                3) ||
                                            (state.materialDisponible ==
                                                0) ||
                                            (state.showInfo == false))
                                        ? Container()
                                        : FormBuilderFilterChip(
                                            backgroundColor:
                                                Colors.grey[300],
                                            selectedColor: Colors.orange,
                                           name: 'prioridad',
                                            spacing: 10,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(15),
                                                // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                                // Colors.grey[800],
                                                filled: true,
                                                labelText: "_Cuestionario.priorizar".tr(),
                                                labelStyle: TextStyle(
                                                  color: Colors.orange[600],
                                                  fontSize: 22,
                                                  fontWeight:
                                                      FontWeight.bold,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                )),
                                            options: [
                                              FormBuilderFieldOption(
                                                  value: 'pecho',
                                                  child: Text(
                                                    "_Cuestionario.pecho".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'espalda',
                                                  child: Text(
                                                    "_Cuestionario.espalda".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'hombros',
                                                  child: Text(
                                                    "_Cuestionario.deltoides".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'biceps',
                                                  child: Text(
                                                    "_Cuestionario.biceps".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'triceps',
                                                  child: Text(
                                                    "_Cuestionario.triceps".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'cuadriceps',
                                                  child: Text(
                                                    "_Cuestionario.cuadriceps".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'femoral',
                                                  child: Text(
                                                    "_Cuestionario.femoral".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'gluteo',
                                                  child: Text(
                                                    "_Cuestionario.gluteo".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                            ],
                                          ),

                                    ((state.numeroDiasEntrenamiento == 0) ||
                                            (state.materialDisponible ==
                                                0) ||
                                            (state.showInfo == false) ||
                                            state.numeroDiasEntrenamiento !=
                                                3)
                                        ? Container()
                                        : FormBuilderFilterChip(
                                            backgroundColor:
                                                Colors.grey[300],
                                            selectedColor: Colors.orange,
                                           name: 'prioridad',
                                            spacing: 10,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(15),
                                                // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                                // Colors.grey[800],
                                                filled: true,
                                                labelText:  "_Cuestionario.priorizar".tr(),
                                                labelStyle: TextStyle(
                                                  color: Colors.orange[600],
                                                  fontSize: 22,
                                                  fontWeight:
                                                      FontWeight.bold,
                                                ),
                                                // helperText: (!widget
                                                //         .principalRepository
                                                //         .isUserPro)
                                                //     ? 'Usar esta opción tiene un coste de 50 puntos.'
                                                //     : null,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                )),
                                            options: [
                                              FormBuilderFieldOption(
                                                  value: 'tren inferior',
                                                  child: Text(
                                                     "_Cuestionario.tren_inferior".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                              FormBuilderFieldOption(
                                                  value: 'tren superior',
                                                  child: Text(
                                                     "_Cuestionario.tren_superior".tr(),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey[900],
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  )),
                                            ],
                                          ),

                                    ((state.numeroDiasEntrenamiento != 0) &&
                                            (state.materialDisponible !=
                                                0) &&
                                            (state.showInfo == true))
                                        ? makeCard(
                                            state.numeroDiasEntrenamiento,
                                            context)
                                        : Container(),

                                    SizedBox(height: 20),

                                    InputDecorator(
                                      decoration: InputDecoration(
                                          filled: true,
                                          labelText:  "_Cuestionario.gestion_fatiga".tr(),
                                          helperText: (widget.isUserInit)
                                              ?  "_Cuestionario.explicacion_gestion_fatiga".tr()
                                              : (widget.userFase < 3)
                                                  ? "_Cuestionario.fase_formacion_gestion_fatiga".tr()
                                                  :  "_Cuestionario.seleccionar_gestion_fatiga".tr(),
                                          helperStyle: TextStyle(
                                            color: Colors.orange,
                                          ),
                                         
                                          helperMaxLines: 5,
                                          labelStyle: TextStyle(
                                              color: Colors.orange[600],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 15,
                                                  horizontal: 13.5),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      child: IgnorePointer(
                                        ignoring: (
                                                widget.isUserInit ==
                                                    false &&
                                                widget.userFase == 3)
                                            ? false
                                            : true,
                                        child: DropdownButton<String>(
                                          value: volume,
                                          underline: SizedBox(),
                                          hint: (!tapped2)
                                              ? Container(
                                                  width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width -
                                                          120,
                                                  child: Text(
                                                    "_Cuestionario.gestion_fatiga_texto".tr(),
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey[300],
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ))
                                              : null,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.grey[300],
                                          ),
                                          iconSize: 24,
                                          elevation: 16,
                                          style: TextStyle(
                                              color: Colors.grey[300]),
                                          onChanged: (String newValue) {
                                            setState(() {
                                              volume = newValue;
                                            });
                                          },
                                          selectedItemBuilder: (tapped2)
                                              ? (BuildContext context) {
                                                  return [
                                                    "_Cuestionario.demasiadas_agujetas".tr(),
                                                    "_Cuestionario.no_mejora_rendimiento".tr(),
                                                    "_Cuestionario.dos_anteriores".tr(),
                                                     "_Cuestionario.trabajo_optimo".tr(),
                                                    "_Cuestionario.no_maxima_congestion".tr(),
                                                    "_Cuestionario.apenas_sentia_trabajo".tr(),
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              135,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                                color: Colors
                                                                        .grey[
                                                                    300]),
                                                          )),
                                                    );
                                                  }).toList();
                                                }
                                              : null,
                                          items: [
                                          "_Cuestionario.demasiadas_agujetas".tr(),
                                                    "_Cuestionario.no_mejora_rendimiento".tr(),
                                                    "_Cuestionario.dos_anteriores".tr(),
                                                     "_Cuestionario.trabajo_optimo".tr(),
                                                    "_Cuestionario.no_maxima_congestion".tr(),
                                                    "_Cuestionario.apenas_sentia_trabajo".tr(),
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              onTap: () {
                                                setState(() {
                                                  tapped2 = true;
                                                });
                                              },
                                              value: value,
                                              child: Container(
                                                  padding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10),
                                                  width:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width -
                                                          135,
                                                  child: Text(value,
                                                      style: TextStyle(
                                                          color: Color
                                                              .fromRGBO(
                                                                  3,
                                                                  9,
                                                                  40,
                                                                  1)))),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchInstagram(
                                            'https://www.instagram.com/p/CGiR5eKlkJ0/');
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          alignment: Alignment.center,
                                          child: AutoSizeText(
                                            "_Cuestionario.mas_informacion_gestion_fatiga".tr(),
                                            style: TextStyle(
                                                decoration: TextDecoration
                                                    .underline,
                                                color: Colors.grey[300]),
                                            maxFontSize: 14,
                                            minFontSize: 8,
                                            maxLines: 1,
                                          )),
                                    ),

                                    SizedBox(height: 20),
                                    InputDecorator(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(15),
                                            
                                         
                                            // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                            // Colors.grey[800],
                                            helperMaxLines: 2,
                                            filled: true,
                                            labelText:
                                                "_Cuestionario.seleccion_ejercicios".tr(),
                                            labelStyle: TextStyle(
                                              color: Colors.orange[600],
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                        child: FormBuilderSwitch(
                                          enabled: true,
                                          inactiveThumbColor: Colors.white,
                                          inactiveTrackColor:
                                              Colors.grey[600],
                                          title: Text(
                                             "_Cuestionario.¿quieres_seleccionar?".tr(),
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                         name: "Quiero Estructurar",
                                          initialValue: false,
                                        )),
                                   
                                    InkWell(
                                      onTap: () {
                                        launchInstagram(
                                            'https://www.instagram.com/p/CFPVfiPlD8W/');
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          alignment: Alignment.center,
                                          child: AutoSizeText(
                                            "_Cuestionario.mas_informacion_seleccion_ejercicios".tr(),
                                            style: TextStyle(
                                                decoration: TextDecoration
                                                    .underline,
                                                color: Colors.grey[300]),
                                            maxFontSize: 14,
                                            minFontSize: 8,
                                            maxLines: 1,
                                          )),
                                    ),
                                    SizedBox(height: 10),
                                    InputDecorator(
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.all(15),
                                          helperText:  "_Cuestionario.crear_mesociclo_desde_0_advertencia_usuario_premium".tr(),
                                          helperMaxLines: 8,
                                          filled: true,
                                          
                                          labelText:
                                              "_Cuestionario.crear_mesociclo_desde_0".tr(),
                                          labelStyle: TextStyle(
                                            color: Colors.orange[600],
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      child: FormBuilderSwitch(
                                        enabled: true,
                                           
                                        inactiveThumbColor: Colors.white,
                                        inactiveTrackColor:
                                            Colors.grey[600],
                                        title: Text(
                                          "_Cuestionario.¿quieres_crear_desde_0?".tr(),
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                       name: "Quiero Crear",
                                        initialValue: false,
                                      ),
                                    ),

                                    SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {
                                        launchInstagram(
                                            'https://www.instagram.com/p/CCtIUkHpbLO/');
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          alignment: Alignment.center,
                                          child: AutoSizeText(
                                            "_Cuestionario.mas_informacion_crear_mesociclo_desde_0".tr(),
                                            style: TextStyle(
                                                decoration: TextDecoration
                                                    .underline,
                                                color: Colors.grey[300]),
                                            maxFontSize: 14,
                                            minFontSize: 8,
                                            maxLines: 1,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                color: Colors.orange[400],
                                onPressed: () {
                                  print('$volume krkkrkrkrkr');
                                  if (_fbKey.currentState
                                      .saveAndValidate()) {
                                   

                                    ((_fbKey.currentState.value['priorizar'] ==
                                                'No') ||
                                            (widget.userFase < 3))
                                        ? BlocProvider.of<CuestionarioBlocBloc>(context)
                                            .add(EnviarEvent(
                                                _fbKey.currentState
                                                    .value['Fecha actual'],
                                                _fbKey.currentState.value[
                                                    'Quiero Estructurar'],
                                                _fbKey.currentState
                                                    .value['Quiero Crear'],
                                                _fbKey.currentState.value[
                                                    'Número de días de entrenamiento'],
                                                _fbKey.currentState
                                                    .value['material'],
                                                _fbKey.currentState.value[
                                                    'materialDisponible'],
                                                _fbKey.currentState.value[
                                                    'materialDisponible2'],
                                                _fbKey.currentState
                                                    .value['sexo'],
                                                [],
                                                widget.userFase,
                                                widget.userBMI,
                                                volume))
                                        : BlocProvider.of<CuestionarioBlocBloc>(context)
                                            .add(EnviarEvent(_fbKey.currentState.value['Fecha actual'], _fbKey.currentState.value['Quiero Estructurar'], _fbKey.currentState.value['Quiero Crear'], _fbKey.currentState.value['Número de días de entrenamiento'], _fbKey.currentState.value['material'], _fbKey.currentState.value['materialDisponible'], _fbKey.currentState.value['materialDisponible2'], _fbKey.currentState.value['sexo'], _fbKey.currentState.value['prioridad'], widget.userFase, widget.userBMI, volume));
                                  }
                                },
                                child:Text(
                                  "_Cuestionario.enviar_formulario".tr(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        
                      ],
                    );
                  }

                  if (state == ProcesandoPago())
                    return Scaffold(
                        backgroundColor: Color.fromRGBO(3, 9, 40, 1),
                        body: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "_Cuestionario.procesando".tr(),
                                style: TextStyle(color: Colors.grey[300]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CircularProgressIndicator()
                            ],
                          ),
                        ));
                }))));
      }),
    );

    //   }

    //   else if (isLoadingPayment == true) {
    //     return Scaffold(
    //         backgroundColor: Color.fromRGBO(3, 9, 40, 1),
    //         body: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 "Procesando",
    //                 style: TextStyle(color: Colors.grey[300]),
    //               ),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               CircularProgressIndicator()
    //             ],
    //           ),
    //         ));
    //   } else
    //     return Scaffold(
    //         backgroundColor: Color.fromRGBO(3, 9, 40, 1),
    //         body: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 "¡Enhorabuena!",
    //                 style: TextStyle(color: Colors.grey[300]),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text(
    //                 "¡Eres un usuario PRO!",
    //                 style: TextStyle(color: Colors.grey[300]),
    //               ),
    //             ],
    //           ),
    //         ));
  }

 

//   Platform messages are asynchronous, so we initialize in an async method.



}

Widget makeCard(int numeroDias, BuildContext context) {
  if (numeroDias == 2)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "_Cuestionario.combinaciones_disponibles".tr(args: [numeroDias.toString()]),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RowLayout.body(children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.8,
                    child: AutoSizeText(
                     "_Cuestionario.no_hay_combinaciones_disponibles".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  if (numeroDias == 3)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "_Cuestionario.combinaciones_disponibles".tr(args: [numeroDias.toString()]),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RowLayout.body(children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.tren_superior".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.tren_inferior".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  if (numeroDias == 4)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "_Cuestionario.combinaciones_disponibles".tr(args: [numeroDias.toString()]),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RowLayout.body(children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.pecho".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.espalda".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.deltoides".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.biceps_triceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.cuadriceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.gluteo".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  if (numeroDias == 5)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
               "_Cuestionario.combinaciones_disponibles".tr(args: [numeroDias.toString()]),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RowLayout.body(children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.pecho".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.espalda".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.deltoides".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.biceps_triceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.cuadriceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.gluteo".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  if (numeroDias == 6)
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "_Cuestionario.combinaciones_disponibles".tr(args: [numeroDias.toString()]),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RowLayout.body(children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.pecho_hombros".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.espalda_biceps_triceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 40) * 0.6,
                    child: AutoSizeText(
                      "_Cuestionario.gluteo_isquios_cuadriceps".tr(),
                      maxFontSize: 14,
                      minFontSize: 6,
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 40) * 0.2,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ))
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  else
    return Container();
}
