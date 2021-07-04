
import 'package:easy_localization/easy_localization.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:entrenaapp/blocs/B_CREACION_ENTRENAMIENTO/creacionentrenamiento_bloc.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';


class SeleccionEjercicio extends StatefulWidget {
  final CreacionRepository creacionRepository;
  final PrincipalRepository principalRepository;
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int numeroDia;
  final List<dynamic> materialDisponible;
  final int indexEjercicio;
  SeleccionEjercicio(
      this.creacionRepository,
      this.principalRepository,
      this.mesocicloEntrenamiento,
      this.numeroDia,
      this.materialDisponible,
      this.indexEjercicio);
  @override
  _SeleccionEjercicioState createState() => _SeleccionEjercicioState();
}

class _SeleccionEjercicioState extends State<SeleccionEjercicio> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _typeAheadController = TextEditingController();

  bool comentar = false;
  bool anadirConfiguracion = false;
  bool seleccionado = false;
  bool seleccionadaConfig = false;
  bool showError = false;
  String comentario;
  Configuracion config = new Configuracion();
  Map<String, Configuracion> mapConfig;
  void initState() {
    super.initState();

    widget.creacionRepository.cargarConfiguraciones();
    widget.creacionRepository.filtrarMaterial(widget.materialDisponible);
  }

  onTap(Map<String, Configuracion> configuracion, int numeroDia,
      numeroEjercicio, BuildContext context1) {
    print(configuracion.keys.first);
    
    
  }

  @override
  Widget build(BuildContext context) {
// print('${widget.indexEjercicio} kkk');

    Widget _buildTextField() {
      final maxLines = 2;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "_Creacion_Entrenamiento.apunte".tr(),
            style: TextStyle(fontSize: 15, color: Colors.orange),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: TextField(
              onChanged: (value) {
                comentario = value;
              },
              maxLines: maxLines,
              maxLength: 60,
              decoration: InputDecoration(
                hintText: "_Creacion_Entrenamiento.introduce_un_apunte".tr(),
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),
          ),
        ],
      );
    }

    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<CreacionentrenamientoBloc>(context)
              .add(QuieroVolverAPaginaDeInicio(widget.numeroDia));
          return false;
        },
        child: Scaffold(
            backgroundColor: Color.fromRGBO(3, 9, 40, 1),
            body: GestureDetector(
                onTap: () {
                  // call this method here to hide soft keyboard
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Builder(
                    builder: (context) => FormBuilder(
                          key: this._formKey,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            child: ListView(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: InkWell(
                                    onTap: () {
                                      BlocProvider.of<
                                                  CreacionentrenamientoBloc>(
                                              context)
                                          .add(QuieroVolverAPaginaDeInicio(
                                              widget.numeroDia));
                                    },
                                    child: new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 22.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 25.0,
                                          ),
                                          child: new Text(
                                              "_Creacion_Entrenamiento.seleccion_ejercicio".tr(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  // fontFamily: 'sans-serif-light',
                                                  color: Colors.white)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                // Text(
                                //   '¿Que ejercicio quieres elegir?',
                                //   style: TextStyle(color: Colors.grey[50]),
                                // ),

                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.07),

                                (seleccionado == false)
                                    ? FormBuilderFilterChip(
                                 
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (value) {
                                          print('$value');
                                          widget.creacionRepository
                                              .listaEjerciciosString = [];
                                          widget.creacionRepository
                                              .crearListaString(value.toString());
                                          setState(() {
                                            seleccionado = true;
                                          });
                                        },
                                       name: "musculo",
                                        // leadingInput: true,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 40),
                                            // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                            // Colors.grey[800],
                                            filled: true,
                                            labelText: "_Creacion_Entrenamiento.musculo_a_trabajar".tr(),
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
                                            value: 'Pecho',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.pecho".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Espalda',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.espalda".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Hombro Frontal',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.deltoides_anterior".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Hombro Lateral',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.deltoides_lateral".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Hombro Posterior',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.deltoides_posterior".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Biceps',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.biceps".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Triceps',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.triceps".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Cuadriceps',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.cuadriceps".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Gluteo',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.gluteo".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Femoral',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.isquios".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Trapecio',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.trapecio".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Gemelo',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.gemelo".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: 'Abs',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                "_Creacion_Entrenamiento.abs".tr(),
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Container(),
                                (seleccionado == true)
                                    ? FlatButton(
                                        color: Colors.orange[400],
                                        onPressed: () {
                                          setState(() {
                                            seleccionado = false;
                                          });
                                        },
                                        child: Text(
                                          "_Creacion_Entrenamiento.seleccionar_otro_grupo_muscular".tr(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                      )
                                    : Container(),
                                SizedBox(height: 20),

                                TypeAheadFormField(
                                  // initialValue: 'Busca un ejercicio',
                                  textFieldConfiguration:
                                      TextFieldConfiguration(
                                    style: TextStyle(color: Colors.grey[50]),
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.search,
                                            color: Colors.orange),
                                        labelText: "_Creacion_Entrenamiento.busca_un_ejercicio".tr(),
                                        filled: true,
                                        labelStyle: TextStyle(
                                          color: Colors.orange[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                    controller: this._typeAheadController,
                                  ),
                                  suggestionsCallback: (pattern) {
                                    return widget.creacionRepository
                                        .getSuggestions(pattern);
                                  },
                                  itemBuilder: (context, suggestion) {
                                    return ListTile(
                                      title: Text(
                                        suggestion,
                                        style:
                                            TextStyle(color: Colors.grey[50]),
                                      ),
                                    );
                                  },
                                  transitionBuilder:
                                      (context, suggestionsBox, controller) {
                                    controller.addStatusListener((status) {
                                      if (status == AnimationStatus.forward)
                                        setState(() {
                                          seleccionado = true;
                                        });
                                    });

                                    return suggestionsBox;
                                  },
                                  onSuggestionSelected: (suggestion) {
                                    // FocusScope.of(context).requestFocus(new FocusNode());
                                    this._typeAheadController.text = suggestion;
                                  },
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "_Creacion_Entrenamiento.selecciona_un_ejercicio".tr();
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),

                                FormBuilderFilterChip(
                                  onChanged: (value) {
                                    (value == 'Si')
                                        ? setState(() {
                                            comentar = true;
                                          })
                                        : setState(() {
                                            comentar = false;
                                          });
                                  },
                                  initialValue: ['No'],
                                  name: "apunte",
                                  // leadingInput: true,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(25),
                                      // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                      // Colors.grey[800],
                                      filled: true,
                                      labelText: "_Creacion_Entrenamiento.añadir_algun_apunte".tr(),
                                      helperMaxLines: 4,
                                      helperText:
                                          "_Creacion_Entrenamiento.uso_apuntes".tr(),
                                      labelStyle: TextStyle(
                                        color: Colors.orange[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                      // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )),
                                  options: [
                                    FormBuilderFieldOption(
                                      value: 'Si',
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    FormBuilderFieldOption(
                                      value: 'No',
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "_Creacion_Entrenamiento.no".tr(),
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                (comentar == true)
                                    ? _buildTextField()
                                    : Container(),
                                // TextFormField(

                                //     onChanged: (value){

                                //     },
                                //     decoration: InputDecoration(
                                //     hintMaxLines: 2,
                                //     contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                //     labelText: 'Introduce un comentario',
                                //     border: InputBorder.none,
                                //     fillColor: Color(0xfff3f3f4),
                                //     filled: true),
                                //     keyboardType: TextInputType.number,
                                //     autovalidate:false ,
                                //     autocorrect: false,
                                //     validator: (value){
                                //       if (value.isEmpty)
                                //        return 'Introduce repeticiones';

                                //     }
                                //   ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                FormBuilderChoiceChip(
                                  onChanged: (value) {
                                    (value == 'Si')
                                        ? setState(() {
                                            anadirConfiguracion = true;
                                          })
                                        : setState(() {
                                            anadirConfiguracion = false;
                                          });
                                  },
                                  initialValue: 'No',
                                  name: "añadir configuracion",
                                  // leadingInput: true,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(25),
                                      // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                      // Colors.grey[800],
                                      filled: true,
                                      labelText:
                                         "_Creacion_Entrenamiento.añadir_configuracion".tr(),
                                      helperMaxLines: 2,
                                      helperText:
                                          "_Creacion_Entrenamiento.puedes_usar_una_configuracion_usada".tr(),
                                      labelStyle: TextStyle(
                                        color: Colors.orange[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                      // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )),
                                  options: [
                                    FormBuilderFieldOption(
                                      value: 'Si',
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    FormBuilderFieldOption(
                                      value: 'No',
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "_Creacion_Entrenamiento.no".tr(),
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                (anadirConfiguracion == true)
                                    ? Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.75,
                                              child: FormBuilderDropdown(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.grey[300],
                                                ),
                                                name: "configuracion",
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.all(25),
                                                    // fillColor: Color.fromRGBO(3, 9, 47, 1),
                                                    // Colors.grey[800],
                                                    errorText: (showError)
                                                        ? "_Creacion_Entrenamiento.debes_seleccionar_una_configuracion".tr()
                                                        : null,
                                                    filled: true,
                                                    labelText: "Configuracion",
                                                    labelStyle: TextStyle(
                                                      color: Colors.orange[600],
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
                                                    // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,

                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    )),
                                                hint: AutoSizeText(
                                                  "_Creacion_Entrenamiento.añadir_configuracion_predeterminada".tr(),
                                                  style: TextStyle(
                                                    color: Colors.grey[300],
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  maxFontSize: 16,
                                                  minFontSize: 8,
                                                  maxLines: 1,
                                                ),
                                                validator: 
                                                  FormBuilderValidators
                                                      .compose([
                                                        FormBuilderValidators.required(context,errorText: "_Creacion_Entrenamiento.debes_seleccionar_una_configuracion".tr(),)
                                                   ]
                                                  ),
                                                
                                                onChanged: (value) {
                                                  // config =  Configuracion.config(
                                                  //      configuracion1

                                                  //       );

                                                  config = value;
                                                  seleccionadaConfig = true;
                                                  setState(() {
                                                    showError = false;
                                                  });
                                                },
                                                items: widget.creacionRepository
                                                    .listaDeConfiguracionesUsuario
                                                    .map((configuracion) {
                                                  return DropdownMenuItem(
                                                    value: configuracion
                                                        .values.first,
                                                    onTap: () {
                                                      mapConfig = configuracion;
                                                      print(
                                                          mapConfig.keys.first);
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: <Widget>[
                                                        Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                            child: AutoSizeText(
                                                              '${configuracion.keys.first}',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[300],
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              maxFontSize: 16,
                                                              minFontSize: 8,
                                                              maxLines: 1,
                                                            )),
                                                        (configuracion.values
                                                                    .first.id !=
                                                                config.id)
                                                            ? IconButton(
                                                                icon: Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: Colors
                                                                            .grey[
                                                                        50]),
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                  BlocProvider.of<CreacionentrenamientoBloc>(context).add(UserQuiereEliminarConfiguracion(
                                                                      configuracion
                                                                          .values
                                                                          .first,
                                                                      widget
                                                                          .numeroDia,
                                                                      widget
                                                                          .indexEjercicio,
                                                                      false));
                                                                })
                                                            : Container()
                                                      ],
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: <Widget>[
                                                  IconButton(
                                                      icon: Icon(
                                                        CommunityMaterialIcons
                                                            .eye,
                                                        color: Colors.grey[50],
                                                        size: 16,
                                                      ),
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      onPressed: () {
                                                        if (seleccionadaConfig)
                                                          onTap(
                                                              mapConfig,
                                                              widget.numeroDia,
                                                              widget
                                                                  .indexEjercicio,
                                                              context);
                                                        else
                                                          setState(() {
                                                            showError = true;
                                                          });
                                                        // BlocProvider.of<CreacionentrenamientoBloc>(context)
                                                        // .add(UserQuiereVisualizarConfiguracion(mapConfig,widget.numeroDia,widget.indexEjercicio)
                                                        // );
                                                      }),
                                                  Text(
                                                    "_Creacion_Entrenamiento.ver".tr(),
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey[50]),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    : Container(),
                                SizedBox(height: 10),
                                Center(
                                  child: RaisedButton(
                                    child: Text("_Creacion_Entrenamiento.seleccionar".tr()),
                                    onPressed: () {
                                      print('${_typeAheadController.text}');

                                      if (comentario != null) {
                                        if (anadirConfiguracion == false) {
                                          BlocProvider.of<
                                                      CreacionentrenamientoBloc>(
                                                  context)
                                              .add(QuieroAnadirConfiguracion(
                                                  widget.numeroDia,
                                                  _typeAheadController.text,
                                                  comentario: comentario,
                                                  context: context,
                                                  indexEjercicio:
                                                      widget.indexEjercicio));
                                        } else if (seleccionadaConfig == true) {
                                          BlocProvider.of<
                                                      CreacionentrenamientoBloc>(
                                                  context)
                                              .add(HeAcabadoEjercicio(
                                                  widget.numeroDia,
                                                  Configuracion.config(config),
                                                  comentario,
                                                  widget.indexEjercicio,
                                                  context,
                                                  ejercicio:
                                                      _typeAheadController
                                                          .text));
                                        } else
                                          setState(() {
                                            showError = true;
                                          });
                                      } else if (anadirConfiguracion == false) {
                                        BlocProvider.of<
                                                    CreacionentrenamientoBloc>(
                                                context)
                                            .add(QuieroAnadirConfiguracion(
                                                widget.numeroDia,
                                                _typeAheadController.text,
                                                comentario: 'No',
                                                context: context,
                                                indexEjercicio:
                                                    widget.indexEjercicio));
                                      } else if (seleccionadaConfig == true) {
                                        BlocProvider.of<
                                                    CreacionentrenamientoBloc>(
                                                context)
                                            .add(HeAcabadoEjercicio(
                                                widget.numeroDia,
                                                Configuracion.config(config),
                                                'No',
                                                widget.indexEjercicio,
                                                context,
                                                ejercicio:
                                                    _typeAheadController.text));
                                      } else
                                        setState(() {
                                          showError = true;
                                        });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )))));
  }
}
// import 'package:community_material_icon/community_material_icon.dart';
// import 'package:entrena_app_2/Repositorios/repo_principal.dart';
// import 'package:entrena_app_2/models/Configuracion.dart';
// import 'package:entrena_app_2/models/MesocicloEntrenamiento.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../Repositorios/creacion_entrenamiento.dart';
// import '../blocs/bloc/creacionentrenamiento_bloc.dart';

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_beautiful_popup/main.dart';

// class SeleccionEjercicio extends StatefulWidget  {
//   final CreacionRepository creacionRepository;
//   final PrincipalRepository principalRepository;
//   final MesocicloEntrenamiento mesocicloEntrenamiento;
//   final int numeroDia;
//   final List<dynamic> materialDisponible;
//   final int indexEjercicio;
//   SeleccionEjercicio(this.creacionRepository,this.principalRepository,this.mesocicloEntrenamiento, this.numeroDia,this.materialDisponible,this.indexEjercicio);
//   @override
//   _SeleccionEjercicioState createState() => _SeleccionEjercicioState();
// }

// class _SeleccionEjercicioState extends State<SeleccionEjercicio> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final TextEditingController _typeAheadController = TextEditingController();

//  bool comentar = false;
//  bool anadirConfiguracion = false;
//  bool seleccionado = false;
//  bool seleccionadaConfig=false;
//  bool showError=false;
//  String comentario;
//  Configuracion config = new Configuracion();
//  Map<String,Configuracion> mapConfig;
//    void initState() {
//     super.initState();

//   widget.creacionRepository.cargarConfiguraciones();
//     widget.creacionRepository.filtrarMaterial(widget.materialDisponible);

//   }
// onTap(Map<String,Configuracion> configuracion,int numeroDia,numeroEjercicio,BuildContext context1){
//    print(configuracion.keys.first);
//  final popup = BeautifulPopup(
//           context: context1,
//           template: TemplateTerm,
//         );
//         popup.show(
//           title: '${configuracion.keys.first}',
//           content: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Container(

//                     width: MediaQuery.of(context).size.width*0.35,
//                     child: Column(
//                       children: <Widget>[
//                          Center(child: AutoSizeText('Semana 1',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),maxFontSize: 16,minFontSize: 6,maxLines: 1,)),
//                         SizedBox(height: 10,),
//                         AutoSizeText('Series: ' + configuracion.values.first.series.semana1.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('Repeticiones: ' + configuracion.values.first.repeticiones.semana1.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('RIR:' + configuracion.values.first.rir.semana1.replaceRange(0, 3, ''),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                      (configuracion.values.first.tiempoDeDescanso.semana1<10) ?  AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana1.toString() + ' min' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,)
//                         : AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana1.toString() + ' seg' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                       ],
//                     )),
//                   Container(

//                     width: MediaQuery.of(context).size.width*0.35,
//                     child: Column(
//                       children: <Widget>[
//                         Center(child: AutoSizeText('Semana 2',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),maxFontSize: 16,minFontSize: 6,maxLines: 1,)),
//                         SizedBox(height: 10,),
//                         AutoSizeText('Series: ' + configuracion.values.first.series.semana2.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('Repeticiones: ' + configuracion.values.first.repeticiones.semana2.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('RIR:' + configuracion.values.first.rir.semana2.replaceRange(0, 3, ''),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         (configuracion.values.first.tiempoDeDescanso.semana2<10) ?  AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana2.toString() + ' min' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,)
//                         : AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana2.toString() + ' seg' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                       ],
//                     )),
//                 ],
//               ),
//               SizedBox(height: 15,),
//                Row(
//                 children: <Widget>[
//                   Container(

//                     width: MediaQuery.of(context).size.width*0.35,
//                     child: Column(
//                       children: <Widget>[
//                         Center(child: AutoSizeText('Semana 3',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),maxFontSize: 16,minFontSize: 6,maxLines: 1,)),
//                         SizedBox(height: 10,),
//                         AutoSizeText('Series: ' + configuracion.values.first.series.semana3.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('Repeticiones: ' + configuracion.values.first.repeticiones.semana3.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('RIR:' + configuracion.values.first.rir.semana3.replaceRange(0, 3, ''),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         (configuracion.values.first.tiempoDeDescanso.semana3<10) ?  AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana3.toString() + ' min' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,)
//                         : AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana3.toString() + ' seg' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                       ],
//                     )),
//                  Container(

//                     width: MediaQuery.of(context).size.width*0.35,
//                     child: Column(
//                       children: <Widget>[
//                         Center(child: AutoSizeText('Semana 4',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),maxFontSize: 16,minFontSize: 6,maxLines: 1,)),
//                         SizedBox(height: 10,),
//                         AutoSizeText('Series: ' + configuracion.values.first.series.semana4.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('Repeticiones: ' + configuracion.values.first.repeticiones.semana4.toString(),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         AutoSizeText('RIR:' + configuracion.values.first.rir.semana4.replaceRange(0, 3, ''),style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                         (configuracion.values.first.tiempoDeDescanso.semana4<10) ?  AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana4.toString() + ' min' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,)
//                         : AutoSizeText('Tº descanso: ' + configuracion.values.first.tiempoDeDescanso.semana4.toString() + ' seg' ,style: TextStyle(fontSize: 12),maxFontSize: 12,minFontSize: 6,maxLines: 1,),
//                       ],
//                     )),
//                 ],
//               ),
//             ],
//           ),
//           actions: [
//             popup.button(
//               label: 'Cerrar',
//               onPressed:(){
//                 Navigator.pop(context1);
//                 // BlocProvider.of<CreacionentrenamientoBloc>(context1)
//                 //             .add(UserHaAcabadoDeVisualizarConfiguracion(numeroDia,numeroEjercicio)
//                 //             );
//                 },

//             ),
//           ],

//           close: Container()
//         );

//   }
//   Container _item(int value,String musculo2) {
//     return
// Container(
//   height: 20,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(musculo2,style: TextStyle(color:Colors.grey[300],fontSize: 12),),
//                             new Radio(
//         value: value,
//         groupValue: _radioValue,
//         onChanged: (v){
//           print(v);
//           _handleRadioValueChange(v);
//           print(musculo);
//        widget.creacionRepository.listaEjerciciosString=[];
//       widget.creacionRepository.crearListaString(musculo);
//        setState(() {
//                             seleccionado=true;
//                           });
//         },
//       ),
//                           ],
//                         ),

//                       );
//   }
//    Container _item2(int value,String result) {
//     return
// Container(
//     height: 30,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(result,style: TextStyle(color:Colors.grey[300],fontWeight: FontWeight.bold,)),
//                             new Radio(
//         value: value,
//         groupValue: _radioValue2,
//         onChanged: (v){
//            (v==0) ?
//                       setState(() {
//                          _radioValue2 = value;
//                            comentar=true;
//                         })
//                       : setState(() {
//                          _radioValue2 = value;
//                            comentar=false;
//                         });
//         },
//       ),
//                           ],
//                         ),

//                       );
//   }

//    Container _item3(int value,String result) {
//     return
// Container(
//     height: 30,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(result,style: TextStyle(color:Colors.grey[300],fontWeight: FontWeight.bold,)),
//                             new Radio(
//         value: value,
//         groupValue: _radioValue3,
//         onChanged: (v){
//          (v==0) ?
//                       setState(() {
//                          _radioValue3 = value;
//                            anadirConfiguracion=true;
//                         })
//                       : setState(() {
//                          _radioValue3 = value;
//                            anadirConfiguracion=false;
//                         });

//         },
//       ),
//                           ],
//                         ),

//                       );
//   }
//   int _radioValue;
//    int _radioValue2;
//     int _radioValue3;
//   String musculo;
//    void _handleRadioValueChange(int value) {
//     setState(() {
//       _radioValue = value;

//       switch (_radioValue) {
//         case 0:
//           musculo = 'Pecho';
//           break;
//         case 1:
//           musculo = 'Espalda';
//           break;
//         case 2:
//           musculo = 'Hombro Frontal';
//           break;
//         case 3:
//           musculo = 'Hombro Lateral';
//           break;
//         case 4:
//           musculo = 'Hombro Posterior';
//           break;
//         case 5:
//           musculo = 'Biceps';
//           break;
//         case 6:
//           musculo = 'Triceps';
//           break;
//         case 7:
//           musculo = 'Cuadriceps';
//           break;
//         case 8:
//           musculo = 'Gluteo';
//           break;
//         case 9:
//           musculo = 'Femoral';
//           break;
//         case 10:
//           musculo = 'Trapecio';
//           break;
//         case 11:
//           musculo = 'Gemelo';
//           break;
//         case 12:
//           musculo = 'Abs';
//           break;
//       }
//     });
//   }

//   void _handleRadioValueChange2(int value) {
//     setState(() {
//       _radioValue = value;

//       switch (_radioValue) {
//         case 0:
//           musculo = 'Pecho';
//           break;
//         case 1:
//           musculo = 'Espalda';
//           break;
//         case 2:
//           musculo = 'Hombro Frontal';
//           break;
//         case 3:
//           musculo = 'Hombro Lateral';
//           break;
//         case 4:
//           musculo = 'Hombro Posterior';
//           break;
//         case 5:
//           musculo = 'Biceps';
//           break;
//         case 6:
//           musculo = 'Triceps';
//           break;
//         case 7:
//           musculo = 'Cuadriceps';
//           break;
//         case 8:
//           musculo = 'Gluteo';
//           break;
//         case 9:
//           musculo = 'Femoral';
//           break;
//         case 10:
//           musculo = 'Trapecio';
//           break;
//         case 11:
//           musculo = 'Gemelo';
//           break;
//         case 12:
//           musculo = 'Abs';
//           break;
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
// // print('${widget.indexEjercicio} kkk');

//    Widget _buildTextField() {
//   final maxLines = 2;

//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//        Text(
//              'Apunte',
//               style: TextStyle(fontSize: 15,color: Colors.orange),
//             ) ,
//              SizedBox(
//               height: 10,
//             ) ,
//       Container(

//         height: 100,
//         child: TextField(
//           onChanged: (value){
//             comentario=value;
//           },
//           maxLines: maxLines,
//           maxLength: 60,

//           decoration: InputDecoration(
//             hintText: "Introduce un comentario",
//             fillColor: Colors.grey[300],
//             filled: true,
//           ),
//         ),
//       ),
//     ],
//   );
// }

//     return  WillPopScope(
//     onWillPop: () async {
//         BlocProvider.of<CreacionentrenamientoBloc>(context)
//                             .add(QuieroVolverAPaginaDeInicio(widget.numeroDia)
//                             );
//        return false;},
//     child:

//     Scaffold(

//         backgroundColor: Color.fromRGBO(3, 9, 40, 1),
//         body: GestureDetector(
//       onTap: () {
//         // call this method here to hide soft keyboard
//         FocusScope.of(context).requestFocus(new FocusNode());
//       }, child:

//         Builder(
//         builder: (context) =>
//         Form(
//           key: this._formKey,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal:20,vertical:0),
//             child: ListView(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.only(top:20),
//                  child: InkWell(onTap: (){
//                        BlocProvider.of<CreacionentrenamientoBloc>(context)
//                     .add(QuieroVolverAPaginaDeInicio(widget.numeroDia));
//                  },
//                                            child: new Row(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        new Icon(
//                          Icons.arrow_back,
//                          color: Colors.white,
//                          size: 22.0,
//                        ),
//                        Padding(
//                          padding: EdgeInsets.only(left: 25.0,),
//                          child: new Text('Seleccion de ejercicio',
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 20.0,
//                                  // fontFamily: 'sans-serif-light',
//                                  color: Colors.white)),
//                        )
//                      ],
//                    ),
//                  ),
//                ),

//                 // Text(
//                 //   '¿Que ejercicio quieres elegir?',
//                 //   style: TextStyle(color: Colors.grey[50]),
//                 // ),

//                 SizedBox(height:MediaQuery.of(context).size.height*0.07),
//                  Container(
//                               padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
//                               alignment: Alignment.centerLeft,
//                               child: Text('Selecciona un grupo muscular para filtrar los ejercicios',style: TextStyle(fontSize:11,color:Colors.orange),),
//                             ),
//                 (seleccionado==false) ?

//                 // FormBuilderRadio(
//                 //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                 //       onChanged: (value){
//                 //         print('$value');
//                 //       widget.creacionRepository.listaEjerciciosString=[];
//                 //       widget.creacionRepository.crearListaString(value);
//                 //       setState(() {
//                 //         seleccionado=true;
//                 //       });

//                 //       },
//                 //       attribute: "musculo",
//                 //       // leadingInput: true,
//                 //       decoration: InputDecoration(
//                 //           contentPadding: EdgeInsets.symmetric(vertical:20,horizontal:40),
//                 //           // fillColor: Color.fromRGBO(3, 9, 47, 1),
//                 //           // Colors.grey[800],
//                 //           filled: true,
//                 //           labelText: "Músculo a Trabajar",
//                 //           labelStyle: TextStyle( color:Colors.orange[600],fontSize:22,fontWeight: FontWeight.bold, ),
//                 //           // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
//                 //           // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
//                 //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
//                 //         ),
//                 //       options: [
//                 //         FormBuilderFieldOption(
//                 //           value: 'Pecho',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Pecho',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Espalda',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Espalda',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Hombro Frontal',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Hombro Frontal',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Hombro Lateral',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Hombro Lateral',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Hombro Posterior',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Hombro Posterior',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Biceps',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Bíceps',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Triceps',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Tríceps',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Cuadriceps',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Cuádriceps',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Gluteo',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Glúteo',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Femoral',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Femoral',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //          FormBuilderFieldOption(
//                 //           value: 'Trapecio',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Trapecio',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Gemelo',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Gemelo',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'Abs',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(4.0),
//                 //             child: Text('Abs',style: TextStyle(color:Colors.grey[300],fontSize: 12,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),

//                 //       ],

//                 //     )

//                   Container(
//                     decoration: BoxDecoration(

//                       border:Border.all(color:Colors.orange),
//                       borderRadius: BorderRadius.circular(20)),
//                       padding: EdgeInsets.symmetric(horizontal:40,vertical:15),
//                     child: Column(
//                       children: [
//                         _item(0, 'Pecho'),
//                         Divider(color:Colors.orange),
//                         _item(1,'Espalda'),
//                         Divider(color:Colors.orange),
//                         _item(2,'Hombro Frontal'),
//                          Divider(color:Colors.orange),
//                         _item(3,'Hombro Lateral'),
//                          Divider(color:Colors.orange),
//                         _item(4,'Hombro Posterior'),
//                          Divider(color:Colors.orange),
//                         _item(5,'Bíceps'),
//                          Divider(color:Colors.orange),
//                         _item(6,'Tríceps'),
//                          Divider(color:Colors.orange),
//                         _item(7,'Cuádriceps'),
//                          Divider(color:Colors.orange),
//                         _item(8,'Glúteo'),
//                          Divider(color:Colors.orange),
//                         _item(9,'Bíceps femoral'),
//                          Divider(color:Colors.orange),
//                         _item(10,'Trapecio'),
//                          Divider(color:Colors.orange),
//                         _item(11,'Gemelo'),
//                          Divider(color:Colors.orange),
//                         _item(12,'Abdominales'),

//                       ],
//                     ),
//                   )
//                     : Container(),
//                (seleccionado==true) ? FlatButton(
//                                 color: Colors.orange[400],
//                                 onPressed: (){
//                                   setState(() {
//                                     seleccionado=false;
//                                   });
//                                 },
//                                 child: const Text('Seleccionar otro grupo muscular',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.black87),),
//                               ) : Container(),
//                 SizedBox(height:20),

//                  TypeAheadFormField(
//                   // initialValue: 'Busca un ejercicio',
//                   textFieldConfiguration: TextFieldConfiguration(

//                     style: TextStyle(color: Colors.grey[50]),
//                     decoration:
//                         InputDecoration(

//                           suffixIcon: Icon(Icons.search,color:Colors.orange),
//                           labelText: 'Busca un Ejercicio',
//                             filled: true,

//                         labelStyle: TextStyle( color:Colors.orange[600],fontSize:16,fontWeight: FontWeight.bold, ),
//                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
//                           ),
//                     controller: this._typeAheadController,
//                   ),
//                   suggestionsCallback: (pattern) {

//                     return widget.creacionRepository.getSuggestions(pattern);

//                   },
//                   itemBuilder: (context, suggestion) {

//                     return ListTile(
//                       title: Text(
//                         suggestion,
//                         style: TextStyle(color: Colors.grey[50]),
//                       ),
//                     );
//                   },
//                   transitionBuilder: (context, suggestionsBox, controller) {
//                    controller.addStatusListener((status) {
//                      if (status== AnimationStatus.forward)
//                      setState(() {
//                        seleccionado=true;
//                      });

//                    });

//                     return suggestionsBox;
//                   },
//                   onSuggestionSelected: (suggestion) {

//                     // FocusScope.of(context).requestFocus(new FocusNode());
//                     this._typeAheadController.text = suggestion;

//                   },
//                   validator: (value) {
//                     if (value.isEmpty) {
//                       return 'Selecciona un ejercicio';
//                     }
//                   },

//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//               Container(
//                               padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
//                               alignment: Alignment.centerLeft,
//                               child: Text('Añadir algún apunte',style: TextStyle(fontSize:11,color:Colors.orange),),
//                             ),
//              Container(
//                     decoration: BoxDecoration(

//                       border:Border.all(color:Colors.orange),
//                       borderRadius: BorderRadius.circular(20)),
//                       padding: EdgeInsets.symmetric(horizontal:40,vertical:15),
//                     child: Column(
//                       children: [
//                         _item2(0, 'Si'),
//                         Divider(color:Colors.orange),
//                         _item2(1,'No'),

//                       ],
//                     ),
//                   ),
//                Container(
//                               padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
//                               alignment: Alignment.centerLeft,
//                               child: Text('Puedes usar los apuntes para,por ejemplo,indicar que tienes que hacer este ejercicio en superserie con el siguiente,o que tienes que hacer un drop set en la última serie.',style: TextStyle(fontSize:11,color:Colors.orange),),
//                             ),
//               //  FormBuilderRadio(

//               //         onChanged: (value){

//               //           (value=='Si') ?
//               //         setState(() {
//               //              comentar=true;
//               //           })
//               //         : setState(() {
//               //              comentar=false;
//               //           });

//               //         },
//               //         initialValue: 'No',
//               //         attribute: "apunte",
//               //         // leadingInput: true,
//               //         decoration: InputDecoration(
//               //             contentPadding: EdgeInsets.all(25),
//               //             // fillColor: Color.fromRGBO(3, 9, 47, 1),
//               //             // Colors.grey[800],
//               //             filled: true,
//               //             labelText: "Añadir algún apunte",
//               //             helperMaxLines: 4,
//               //             helperText: 'Puedes usar los apuntes para, por ejemplo,indicar que tienes que hacer este ejercicio en superserie con el siguiente, o que tienes que hacer un drop set en la última serie.',
//               //             labelStyle: TextStyle( color:Colors.orange[600],fontSize:16,fontWeight: FontWeight.bold, ),
//               //             // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
//               //             // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
//               //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
//               //           ),
//               //         options: [
//               //           FormBuilderFieldOption(
//               //             value: 'Si',
//               //             child: Padding(
//               //               padding: const EdgeInsets.all(8.0),
//               //               child: Text('Si',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),),
//               //             ),
//               //           ),
//               //           FormBuilderFieldOption(
//               //             value: 'No',
//               //             child: Padding(
//               //               padding: const EdgeInsets.all(8.0),
//               //               child: Text('No',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),),
//               //             ),
//               //           ),

//               //         ],

//               //       ),
//                     SizedBox(height:10),
//                (comentar == true) ? _buildTextField() : Container(),
//                 // TextFormField(

//                 //     onChanged: (value){

//                 //     },
//                 //     decoration: InputDecoration(
//                 //     hintMaxLines: 2,
//                 //     contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//                 //     labelText: 'Introduce un comentario',
//                 //     border: InputBorder.none,
//                 //     fillColor: Color(0xfff3f3f4),
//                 //     filled: true),
//                 //     keyboardType: TextInputType.number,
//                 //     autovalidate:false ,
//                 //     autocorrect: false,
//                 //     validator: (value){
//                 //       if (value.isEmpty)
//                 //        return 'Introduce repeticiones';

//                 //     }
//                 //   ),
//                  Container(
//                               padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
//                               alignment: Alignment.centerLeft,
//                               child: Text('Añadir configuración',style: TextStyle(fontSize:11,color:Colors.orange),),
//                             ),
//              Container(
//                     decoration: BoxDecoration(

//                       border:Border.all(color:Colors.orange),
//                       borderRadius: BorderRadius.circular(20)),
//                       padding: EdgeInsets.symmetric(horizontal:40,vertical:15),
//                     child: Column(
//                       children: [
//                         _item3(0, 'Si'),
//                         Divider(color:Colors.orange),
//                         _item3(1,'No'),

//                       ],
//                     ),
//                   ),
//                Container(
//                               padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
//                               alignment: Alignment.centerLeft,
//                               child: Text('Puedes usar una configuración que ya usaste en otro ejercicio.',style: TextStyle(fontSize:11,color:Colors.orange),),
//                             ),
//                 //  FormBuilderRadio(

//                 //       onChanged: (value){

//                 //         (value=='Si') ?
//                 //       setState(() {
//                 //            anadirConfiguracion=true;
//                 //         })
//                 //       : setState(() {
//                 //            anadirConfiguracion=false;
//                 //         });

//                 //       },
//                 //       initialValue: 'No',
//                 //       attribute: "añadir configuracion",
//                 //       // leadingInput: true,
//                 //       decoration: InputDecoration(
//                 //           contentPadding: EdgeInsets.all(25),
//                 //           // fillColor: Color.fromRGBO(3, 9, 47, 1),
//                 //           // Colors.grey[800],
//                 //           filled: true,
//                 //           labelText: "Añadir configuracion predeterminada",
//                 //           helperMaxLines: 2,
//                 //           helperText: 'Puedes usar una configuración que ya usaste en otro ejercicio.',
//                 //           labelStyle: TextStyle( color:Colors.orange[600],fontSize:16,fontWeight: FontWeight.bold, ),
//                 //           // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
//                 //           // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,
//                 //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
//                 //         ),
//                 //       options: [
//                 //         FormBuilderFieldOption(
//                 //           value: 'Si',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(8.0),
//                 //             child: Text('Si',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),
//                 //         FormBuilderFieldOption(
//                 //           value: 'No',
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.all(8.0),
//                 //             child: Text('No',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),),
//                 //           ),
//                 //         ),

//                 //       ],

//                 //     ),
//                     SizedBox(height:10),
//               (anadirConfiguracion==true)   ? Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Row(
//                   children: <Widget>[
//                     Container(

//                       width: MediaQuery.of(context).size.width*0.75,
//                       child:
//                       new DropdownButton<Map<String,Configuracion>>(
//                         hint: Container(
//                           width: MediaQuery.of(context).size.width*0.5,
//                           child: AutoSizeText('Añade una configuracion predeterminada',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),maxFontSize: 16,minFontSize: 8,maxLines: 1,)),
//                  items: widget.creacionRepository.listaDeConfiguracionesUsuario
//                                   .map((configuracion) {

//                                     return DropdownMenuItem(
//                                         value: configuracion,
//                                         onTap: (){
//                                         mapConfig=configuracion;
//                                         print(mapConfig.keys.first);
//                                         },
//                                         child:

//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                           children: <Widget>[

//                                             Container(

//                                               width: MediaQuery.of(context).size.width*0.5,
//                                               child: AutoSizeText('${configuracion.keys.first}',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),maxFontSize: 16,minFontSize: 8,maxLines: 1,)),

//                                         (configuracion.values.first.id != config.id) ?
//                                             IconButton(icon: Icon(Icons.delete,color:Colors.grey[50]), onPressed: (){

//                                                 Navigator.pop(context);
//                                               BlocProvider.of<CreacionentrenamientoBloc>(context)
//                                               .add(UserQuiereEliminarConfiguracion(configuracion.values.first,widget.numeroDia,widget.indexEjercicio,false)
//                                     );

//                                             }) : Container()

//                                           ],
//                                         ),
//                                       );}
//                                       )
//                                   .toList(),

//                 onChanged: (value) {
//                    config= value.values.first;
//                    print(config.series.semana4);
//                                 seleccionadaConfig=true;
//                                  setState(() {
//                                showError=false;
//                              });
//                 },
//                 value: mapConfig,
//               ),

//                       // FormBuilderDropdown(

//                       //    icon: Icon(Icons.arrow_drop_down,color: Colors.grey[300],),

//                       //         attribute: "configuracion",
//                       //         decoration: InputDecoration(
//                       //             contentPadding: EdgeInsets.all(25),
//                       //             // fillColor: Color.fromRGBO(3, 9, 47, 1),
//                       //             // Colors.grey[800],
//                       //             errorText: (showError) ? "Debes seleccionar una configuración" : null,
//                       //             filled: true,
//                       //             labelText: "Configuracion",
//                       //             labelStyle: TextStyle( color:Colors.orange[600],fontSize:16,fontWeight: FontWeight.bold, ),
//                       //             // errorStyle: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w600),
//                       //             // errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange[300])) ,

//                       //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
//                       //           ),

//                       //         hint: AutoSizeText('Añade una configuracion predeterminada',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),maxFontSize: 16,minFontSize: 8,maxLines: 1,),
//                       //         validators: [FormBuilderValidators.required(errorText:
//                       //         "Debes seleccionar una configuración",)],

//                       //          onChanged: (value){

//                       //     // config =  Configuracion.config(
//                       //     //      configuracion1

//                       //     //       );

//                       //             config= value;
//                       //           seleccionadaConfig=true;
//                       //            setState(() {
//                       //          showError=false;
//                       //        });
//                       //          },
//                       //         items: widget.creacionRepository.listaDeConfiguracionesUsuario
//                       //             .map((configuracion) {

//                       //               return DropdownMenuItem(
//                       //                   value: configuracion.values.first,
//                       //                   onTap: (){
//                       //                   mapConfig=configuracion;
//                       //                   print(mapConfig.keys.first);
//                       //                   },
//                       //                   child:

//                       //                   Row(
//                       //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       //                     children: <Widget>[

//                       //                       Container(
//                       //                         width: MediaQuery.of(context).size.width*0.5,
//                       //                         child: AutoSizeText('${configuracion.keys.first}',style: TextStyle(color:Colors.grey[300],fontSize: 16,fontWeight: FontWeight.w500,),maxFontSize: 16,minFontSize: 8,maxLines: 1,)),

//                       //                   (configuracion.values.first.id != config.id) ?
//                       //                       IconButton(icon: Icon(Icons.delete,color:Colors.grey[50]), onPressed: (){

//                       //                           Navigator.pop(context);
//                       //                         BlocProvider.of<CreacionentrenamientoBloc>(context)
//                       //                         .add(UserQuiereEliminarConfiguracion(configuracion.values.first,widget.numeroDia,widget.indexEjercicio,false)
//                       //               );

//                       //                       }) : Container()

//                       //                     ],
//                       //                   ),
//                       //                 );}
//                       //                 )
//                       //             .toList(),
//                       //       ),
//                     ),

//                                     Container(
//                                       child: Column(
//                                         children: <Widget>[
//                                           IconButton(icon: Icon(CommunityMaterialIcons.eye,color:Colors.grey[50],size: 16,),padding: EdgeInsets.all(0), onPressed: (){
//                                                   if (seleccionadaConfig)
//                                                      onTap(mapConfig, widget.numeroDia, widget.indexEjercicio, context);
//                                                   else
//                                                   setState(() {
//                                                     showError=true;
//                                                   });

//                                                      ;
//                                                     // BlocProvider.of<CreacionentrenamientoBloc>(context)
//                                                     // .add(UserQuiereVisualizarConfiguracion(mapConfig,widget.numeroDia,widget.indexEjercicio)
//                                           // );

//                                                   }),
//                                           Text('ver',style: TextStyle(fontSize:10,color:Colors.grey[50]),)
//                                         ],
//                                       ),
//                                     )
//                   ],
//                 ),
//               ) : Container() ,
//                 SizedBox(height:10),
//                 Center(
//                   child: RaisedButton(
//                     child: Text('Seleccionar'),
//                     onPressed: () {
//                       print('${_typeAheadController.text}');

//                      if (comentario != null) {
//                      if (anadirConfiguracion == false) {
//                       BlocProvider.of<CreacionentrenamientoBloc>(context).add(
//                           QuieroAnadirConfiguracion(
//                               widget.numeroDia, _typeAheadController.text,comentario: comentario,context: context,indexEjercicio: widget.indexEjercicio));

//                       } else
//                       if (seleccionadaConfig==true)
//                       {

//                       BlocProvider.of<CreacionentrenamientoBloc>(context)
//                         .add(HeAcabadoEjercicio(widget.numeroDia,Configuracion.config(config),comentario,widget.indexEjercicio,context,ejercicio:_typeAheadController.text));
//                       }
//                      else setState(() {
//                        showError=true;
//                      });

//                      } else
//                         if (anadirConfiguracion == false) {
//                         BlocProvider.of<CreacionentrenamientoBloc>(context).add(
//                           QuieroAnadirConfiguracion(
//                               widget.numeroDia, _typeAheadController.text,comentario: 'No',context: context,indexEjercicio: widget.indexEjercicio));
//                          } else

//                          if (seleccionadaConfig==true)
//                          {

//                            BlocProvider.of<CreacionentrenamientoBloc>(context)
//                         .add(HeAcabadoEjercicio(widget.numeroDia,Configuracion.config(config),'No',widget.indexEjercicio,context,ejercicio:_typeAheadController.text));
//                          }

//                          else
//                         setState(() {
//                        showError=true;
//                      });

//                     },
//                   ),
//                 ),

//               ],
//             ),
//           ),
//         )))));
//   }
// }
