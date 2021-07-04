import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_CREACION_ENTRENAMIENTO/creacionentrenamiento_bloc.dart';
import 'package:entrenaapp/blocs/login_bloc/stepper_bloc/stepper_bloc.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/fa_stepper.dart';

import 'package:rflutter_alert/rflutter_alert.dart';


class SeleccionConfiguracion extends StatefulWidget {
  final CreacionRepository creacionRepository;
  final PrincipalRepository principalRepository;
  final int numeroDia;
  final String nombreEjercicio;
  final String comentario;
  final int indexEjercicio;

  SeleccionConfiguracion(
      this.creacionRepository,
      this.principalRepository,
      this.numeroDia,
      this.nombreEjercicio,
      this.comentario,
      this.indexEjercicio);
  @override
  _SeleccionConfiguracionState createState() => _SeleccionConfiguracionState();
}

final nombreKey = new GlobalKey<FormState>();

class _SeleccionConfiguracionState extends State<SeleccionConfiguracion> {
  void _showDialogNombreConfiguracion(BuildContext context, int trabajo) {
    String nombreConfiguracion;

    Alert(
        closeFunction: () {
          Navigator.pop(context);
          // realmente la serie aqui no la necesitamos para nada (si el isComentario=true) ya que para actualizar un comentario no hay serie.
        },
        context: context,
        title: "_Creacion_Entrenamiento.añade_nombre_configuracion".tr(),
        content: Form(
          autovalidate: false,
          key: nombreKey,
          child: TextFormField(
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.text,
            maxLines: 1,
            onChanged: (text) {
              nombreConfiguracion = text;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.fitness_center),
              labelText: "_Creacion_Entrenamiento.nombre_configuracion".tr(),
            ),
            // ignore: missing_return
            validator: (text) {
              if (text.isEmpty)
                return "_Creacion_Entrenamiento.introduce_nombre".tr();
              else if (text.length > 14)
                return "_Creacion_Entrenamiento.nombre_limite_caracteres".tr();
            },
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () async {
              final form = nombreKey.currentState;
              if (form.validate() == true) {
                form.save();
                widget.principalRepository.guardarConfiguracionUsuario(
                    nombreConfiguracion,
                    widget.creacionRepository.crearConfiguracion(
                        series, repeticiones, rir, tiempoDeDescanso, trabajo));
                BlocProvider.of<CreacionentrenamientoBloc>(context).add(
                    HeAcabadoEjercicio(
                        widget.numeroDia,
                        widget.creacionRepository.crearConfiguracion(series,
                            repeticiones, rir, tiempoDeDescanso, trabajo),
                        widget.comentario,
                        widget.indexEjercicio,
                        context));
                Navigator.of(context).pop();
              }
            },
            child: Text(
              "_Creacion_Entrenamiento.guardar_configuracion".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _showGuardarConfigDialog(String message, int trabajo) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Creacion_Entrenamiento.guarda_tus_configuraciones".tr(),),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("_Creacion_Entrenamiento.si".tr(),),
            onPressed: () {
              Navigator.of(context).pop();
              _showDialogNombreConfiguracion(context, trabajo);
            },
          ),
          TextButton(
            child: Text("_Creacion_Entrenamiento.no".tr(),),
            onPressed: () {
              BlocProvider.of<CreacionentrenamientoBloc>(context).add(
                  HeAcabadoEjercicio(
                      widget.numeroDia,
                      widget.creacionRepository.crearConfiguracion(
                          series, repeticiones, rir, tiempoDeDescanso, trabajo),
                      widget.comentario,
                      widget.indexEjercicio,
                      context));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  final formKey = new GlobalKey<FormState>();
  final formKey2 = new GlobalKey<FormState>();
  final formKey3 = new GlobalKey<FormState>();
  final formKey4 = new GlobalKey<FormState>();

  int seriesSemana1;
  int seriesSemana2;
  int seriesSemana3;
  int seriesSemana4;
  String repeticionesSemana1;
  String repeticionesSemana2;
  String repeticionesSemana3;
  String repeticionesSemana4;
  String rirSemana1;
  String rirSemana2;
  String rirSemana3;
  String rirSemana4;
  int tiempoDescansoSemana1;
  int tiempoDescansoSemana2;
  int tiempoDescansoSemana3;
  int tiempoDescansoSemana4;
  Series series = Series();
  Repeticiones repeticiones = Repeticiones();
  Rir rir = Rir();
  TiempoDeDescanso tiempoDeDescanso = TiempoDeDescanso();

  StepperBloc blocEvent = StepperBloc(maxSteps: 4, initial: 0);

  List<FAStep> stepsF(BuildContext context, int stateStep) {
    List<FAStep> steps = [];
    steps = [
      FAStep(
        title: Text(
           "_Creacion_Entrenamiento.series_titulo".tr(),
          style: TextStyle(color: Colors.orange),
        ),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.675,
          child: Form(
              autovalidate: false,
              key: formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    "_Creacion_Entrenamiento.introduce_numero_series".tr(),
                    style: TextStyle(color: Colors.grey[50]),
                  ),
                  SizedBox(height: 20),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_1".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue: (series.semana1 != null)
                          ? (series.semana1).toString()
                          : '',
                      onChanged: (value) {
                        seriesSemana1 = int.parse(value);
                      },
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          labelText: (MediaQuery.of(context).size.height > 740)
                              ? ''
                              :  "_Creacion_Entrenamiento.semana_1".tr(),
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true),
                      keyboardType: TextInputType.number,
                      autovalidate: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value.isEmpty)
                          return  "_Creacion_Entrenamiento.introduce_series".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                        else if (int.tryParse(value) > 12)
                          return "_Creacion_Entrenamiento.numero_series_muy_grande".tr();
                      }),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                         "_Creacion_Entrenamiento.semana_2".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (series.semana2 != null)
                        ? (series.semana2).toString()
                        : '',
                    onChanged: (value) {
                      seriesSemana2 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_2".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty)
                          return  "_Creacion_Entrenamiento.introduce_series".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                        else if (int.tryParse(value) > 12)
                          return "_Creacion_Entrenamiento.numero_series_muy_grande".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_3".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (series.semana3 != null)
                        ? (series.semana3).toString()
                        : '',
                    onChanged: (value) {
                      seriesSemana3 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_3".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty)
                          return  "_Creacion_Entrenamiento.introduce_series".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                        else if (int.tryParse(value) > 12)
                          return "_Creacion_Entrenamiento.numero_series_muy_grande".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_4".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (series.semana4 != null)
                        ? (series.semana4).toString()
                        : '',
                    onChanged: (value) {
                      seriesSemana4 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_4".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                     if (value.isEmpty)
                          return  "_Creacion_Entrenamiento.introduce_series".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                        else if (int.tryParse(value) > 12)
                          return "_Creacion_Entrenamiento.numero_series_muy_grande".tr();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
        isActive: (stateStep == 0) ? true : false,
      ),
      FAStep(
        title: Text(
          "_Creacion_Entrenamiento.reps_titulo".tr(),
          style: TextStyle(color: Colors.orange),
        ),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.675,
          child: Form(
              autovalidate: false,
              key: formKey2,
              child: Column(
                children: <Widget>[
                  Text(
                    "_Creacion_Entrenamiento.introduce_numero_repeticiones".tr(),
                    style: TextStyle(color: Colors.grey[50]),
                  ),
                  SizedBox(height: 20),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                           "_Creacion_Entrenamiento.semana_1".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue: (repeticiones.semana1 != null)
                          ? (repeticiones.semana1).toString()
                          : '',
                      onChanged: (value) {
                        repeticionesSemana1 = value;
                      },
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          labelText: (MediaQuery.of(context).size.height > 740)
                              ? ''
                              : "_Creacion_Entrenamiento.semana_1".tr(),
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true),
                      keyboardType: TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      autovalidate: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_repeticiones".tr();

                        if (int.tryParse(value[0]) == null)
                          return "_Creacion_Entrenamiento.primer_numero_debe_ser_entero".tr();
                      }),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_2".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (repeticiones.semana2 != null)
                        ? (repeticiones.semana2).toString()
                        : '',
                    onChanged: (value) {
                      repeticionesSemana2 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_2".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                       if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_repeticiones".tr();

                        if (int.tryParse(value[0]) == null)
                          return "_Creacion_Entrenamiento.primer_numero_debe_ser_entero".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_3".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (repeticiones.semana3 != null)
                        ? (repeticiones.semana3).toString()
                        : '',
                    onChanged: (value) {
                      repeticionesSemana3 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_3".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_repeticiones".tr();

                        if (int.tryParse(value[0]) == null)
                          return "_Creacion_Entrenamiento.primer_numero_debe_ser_entero".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_4".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (repeticiones.semana4 != null)
                        ? (repeticiones.semana4).toString()
                        : '',
                    onChanged: (value) {
                      repeticionesSemana4 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_4".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                       if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_repeticiones".tr();

                        if (int.tryParse(value[0]) == null)
                          return "_Creacion_Entrenamiento.primer_numero_debe_ser_entero".tr();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
        isActive: (stateStep == 1) ? true : false,
      ),
      FAStep(
        title: Text(
          "_Creacion_Entrenamiento.rir_titulo".tr(),
          style: TextStyle(color: Colors.orange),
        ),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.675,
          child: Form(
              autovalidate: false,
              key: formKey3,
              child: Column(
                children: <Widget>[
                  Text(
                    "_Creacion_Entrenamiento.introduce_numero_repeticiones_recamara".tr(),
                    style: TextStyle(color: Colors.grey[50]),
                  ),
                  SizedBox(height: 20),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_1".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue:
                          (rir.semana1 != null) ? (rir.semana1).toString() : '',
                      onChanged: (value) {
                        rirSemana1 = value;
                      },
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          labelText: (MediaQuery.of(context).size.height > 740)
                              ? ''
                              : "_Creacion_Entrenamiento.semana_1".tr(),
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true),
                      keyboardType: TextInputType.number,
                      autovalidate: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_rir".tr();
                      }),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_2".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue:
                        (rir.semana2 != null) ? (rir.semana2).toString() : '',
                    onChanged: (value) {
                      rirSemana2 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_2".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_rir".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_3".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue:
                        (rir.semana3 != null) ? (rir.semana3).toString() : '',
                    onChanged: (value) {
                      rirSemana3 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_3".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_rir".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_4".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue:
                        (rir.semana4 != null) ? (rir.semana4).toString() : '',
                    onChanged: (value) {
                      rirSemana4 = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_4".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_rir".tr();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
        isActive: (stateStep == 2) ? true : false,
      ),
      FAStep(
        title: Text(
          "_Creacion_Entrenamiento.tiempo_descanso_titulo".tr(),
          style: TextStyle(color: Colors.orange),
        ),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.675,
          child: Form(
              autovalidate: false,
              key: formKey4,
              child: Column(
                children: <Widget>[
                  Text(
                    "_Creacion_Entrenamiento.introduce_tiempo_descanso_min_seg".tr(),
                    style: TextStyle(color: Colors.grey[50]),
                  ),
                  SizedBox(height: 20),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_1".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue: (tiempoDeDescanso.semana1 != null)
                          ? (tiempoDeDescanso.semana1).toString()
                          : '',
                      onChanged: (value) {
                        tiempoDescansoSemana1 = int.parse(value);
                      },
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          labelText: (MediaQuery.of(context).size.height > 740)
                              ? ''
                              : "_Creacion_Entrenamiento.semana_1".tr(),
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true),
                      keyboardType: TextInputType.number,
                      autovalidate: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value.isEmpty)
                          return "_Creacion_Entrenamiento.introduce_tiempo_descanso".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                      }),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_2".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (tiempoDeDescanso.semana2 != null)
                        ? (tiempoDeDescanso.semana2).toString()
                        : '',
                    onChanged: (value) {
                      tiempoDescansoSemana2 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_2".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty)
                          return "_Creacion_Entrenamiento.introduce_tiempo_descanso".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_3".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (tiempoDeDescanso.semana3 != null)
                        ? (tiempoDeDescanso.semana3).toString()
                        : '',
                    onChanged: (value) {
                      tiempoDescansoSemana3 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_3".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty)
                          return "_Creacion_Entrenamiento.introduce_tiempo_descanso".tr();
                        else if (int.tryParse(value) == null)
                          return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                    },
                  ),
                  SizedBox(height: 10),
                  (MediaQuery.of(context).size.height > 740)
                      ? Text(
                          "_Creacion_Entrenamiento.semana_4".tr(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      : Container(),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: (tiempoDeDescanso.semana4 != null)
                        ? (tiempoDeDescanso.semana4).toString()
                        : '',
                    onChanged: (value) {
                      tiempoDescansoSemana4 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        labelText: (MediaQuery.of(context).size.height > 740)
                            ? ''
                            : "_Creacion_Entrenamiento.semana_4".tr(),
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    keyboardType: TextInputType.number,
                    autovalidate: false,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) return "_Creacion_Entrenamiento.introduce_tiempo_descanso".tr();
                      if (int.tryParse(value) == null)
                        return "_Creacion_Entrenamiento.introduce_numero_entero".tr();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
        isActive: (stateStep == 3) ? true : false,
      ),
    ];

    return steps;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => blocEvent,
        child: WillPopScope(
          onWillPop: () async {
            BlocProvider.of<CreacionentrenamientoBloc>(context)
                .add(QuieroAnadirEjercicio(widget.numeroDia));
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
                    BlocProvider.of<CreacionentrenamientoBloc>(context)
                        .add(QuieroAnadirEjercicio(widget.numeroDia));
                  }),
              backgroundColor: Theme.of(context).accentColor,
              title: Text(
                '${widget.nombreEjercicio}',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            body: BlocBuilder<StepperBloc, StepperState>(
              buildWhen: (prevState, currState) =>
                  currState.step < currState.maxSteps,
              builder: (BuildContext context, StepperState state) {
                return FAStepper(
                  currentStep: state.step,
                  steps: stepsF(context, state.step),
                  type: FAStepperType.horizontal,
                  titleHeight: 61,
                  // physics: NeverScrollableScrollPhysics(),
                  titleIconArrange: FAStepperTitleIconArrange.column,
                  stepNumberColor: Colors.orange[400],
                  // onStepTapped: (step) {
                  //   BlocProvider.of<StepperBloc>(context).add(StepTapped(step));
                  // },
                  onStepCancel: () {
                   
                    (state.step == 0)
                        ? BlocProvider.of<CreacionentrenamientoBloc>(context)
                            .add(QuieroAnadirEjercicio(widget.numeroDia))
                        : BlocProvider.of<StepperBloc>(context)
                            .add(StepCancelled());
                  },
                  onStepContinue: () {
                    if (state.step == 0) {
                      final form = formKey.currentState;
                      if (form.validate() == true) {
                        form.save();

                        series.semana1 = seriesSemana1;
                        series.semana2 = seriesSemana2;
                        series.semana3 = seriesSemana3;
                        series.semana4 = seriesSemana4;
                        BlocProvider.of<StepperBloc>(context)
                            .add(StepContinue());
                      }
                    } else if (state.step == 1) {
                      final form = formKey2.currentState;
                      if (form.validate() == true) {
                        form.save();

                        repeticiones.semana1 = repeticionesSemana1;
                        repeticiones.semana2 = repeticionesSemana2;
                        repeticiones.semana3 = repeticionesSemana3;
                        repeticiones.semana4 = repeticionesSemana4;
                        BlocProvider.of<StepperBloc>(context)
                            .add(StepContinue());
                      }
                    } else if (state.step == 2) {
                      final form = formKey3.currentState;
                      if (form.validate() == true) {
                        form.save();

                        rir.semana1 = 'RIR $rirSemana1';
                        rir.semana2 = 'RIR $rirSemana2';
                        rir.semana3 = 'RIR $rirSemana3';
                        rir.semana4 = 'RIR $rirSemana4';
                        BlocProvider.of<StepperBloc>(context)
                            .add(StepContinue());
                      }
                    } else if (state.step == 3) {
                      final form = formKey4.currentState;
                      if (form.validate() == true) {
                        form.save();

                        int trabajo;

                        tiempoDeDescanso.semana1 = tiempoDescansoSemana1;
                        tiempoDeDescanso.semana2 = tiempoDescansoSemana2;
                        tiempoDeDescanso.semana3 = tiempoDescansoSemana3;
                        tiempoDeDescanso.semana4 = tiempoDescansoSemana4;

                        if (repeticiones.semana1.length > 1 &&
                            int.tryParse(repeticiones.semana1[1]) != null) {
                          if (repeticiones.semana1.length >= 3) {
                            if (int.parse(repeticiones.semana1.replaceRange(
                                    2, repeticiones.semana1.length, '')) >
                                15)
                              trabajo = 3;
                            else
                              trabajo = 2;
                          } else if (int.parse(repeticiones.semana1) > 15)
                            trabajo = 3;
                          else
                            trabajo = 2;
                        } else if (int.parse(repeticiones.semana1[0]) > 5)
                          trabajo = 2;
                        else
                          trabajo = 1;

                        _showGuardarConfigDialog(
                            "_Creacion_Entrenamiento.¿quieres_guardar_esta_configuracion?".tr(), trabajo);
                      }
                    }

                    //cambiar
                  },
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue,
                      VoidCallback onStepCancel}) {
                    return Container(
                      child: (state.step != state.maxSteps - 1)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  FlatButton(
                                    color: Colors.orange[400],
                                    onPressed: onStepCancel,
                                    child:  Text(
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
                                      "_Creacion_Entrenamiento.siguiente".tr(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )),
                                  ),
                                ])
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
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
                                    child:Text(
                                     "_Creacion_Entrenamiento.acabar".tr(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ),
                                ]),
                    );
                  },
                );
              },
            ),
          ),
        ));
  }
}
