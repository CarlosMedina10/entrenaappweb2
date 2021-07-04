part of 'cuestionario_bloc_bloc.dart';

abstract class CuestionarioBlocEvent extends Equatable {
  const CuestionarioBlocEvent();
}
// class CheckBoxEvent extends CuestionarioBlocEvent {
//   //ira el modelo como evento
//   final bool checkbox;
//   final int diasEntrenamiento;

//   CheckBoxEvent(this.checkbox,this.diasEntrenamiento);

//    List<Object> get props => [checkbox];

//    }
class EnviarEvent extends CuestionarioBlocEvent {
  //ira el modelo como evento
  final DateTime fechaInicio;
  final bool checkbox;
  final bool checkbox2;
  final int diasEntrenamiento;
  final int material;
  final List<dynamic> materialDisponible;
  final List<dynamic> materialDisponible2;

  final String sexo;
  final List<dynamic> prioridad;
  final int userFase;
  final double userBMI;
  final String volume;

  EnviarEvent(
      this.fechaInicio,
      this.checkbox,
      this.checkbox2,
      this.diasEntrenamiento,
      this.material,
      this.materialDisponible,
      this.materialDisponible2,
      this.sexo,
      this.prioridad,
      this.userFase,
      this.userBMI,
      this.volume);

  List<Object> get props => [
        fechaInicio,
        checkbox,
        diasEntrenamiento,
        material,
        materialDisponible,
        materialDisponible2,
        sexo,
        prioridad,
        userFase,
        userBMI,
        volume
      ];
}

class UserHaSeleccionadoNumeroDeDias extends CuestionarioBlocEvent {
  //ira el modelo como evento

  final int diasEntrenamiento;
  final int materialDisponible;
  final bool showInfo;

  UserHaSeleccionadoNumeroDeDias(
      this.diasEntrenamiento, this.materialDisponible, this.showInfo);

  List<Object> get props => [diasEntrenamiento, materialDisponible, showInfo];
}

class UserHaSeleccionadoMaterial extends CuestionarioBlocEvent {
  //ira el modelo como evento

  final int diasEntrenamiento;
  final int materialDisponible;
  final bool showInfo;

  UserHaSeleccionadoMaterial(
      this.diasEntrenamiento, this.materialDisponible, this.showInfo);

  List<Object> get props => [diasEntrenamiento, materialDisponible, showInfo];
}

class UserHaDecididoQueQuierePriorizar extends CuestionarioBlocEvent {
  final int diasEntrenamiento;
  final int materialDisponible;

  UserHaDecididoQueQuierePriorizar(
      this.diasEntrenamiento, this.materialDisponible);

  List<Object> get props => [diasEntrenamiento, materialDisponible];
}

class UserHaDecididoQueNoQuierePriorizar extends CuestionarioBlocEvent {
  final int diasEntrenamiento;
  final int materialDisponible;

  UserHaDecididoQueNoQuierePriorizar(
      this.diasEntrenamiento, this.materialDisponible);

  List<Object> get props => [diasEntrenamiento, materialDisponible];
}

class UserQuiereSerPro extends CuestionarioBlocEvent {
  UserQuiereSerPro();

  List<Object> get props => [];
}
class PulsaOkDespuesDeError extends CuestionarioBlocEvent {
  PulsaOkDespuesDeError();

  List<Object> get props => [];
}

class SeHaProcesadoPago extends CuestionarioBlocEvent {
  final bool pagoExitoso;

  SeHaProcesadoPago({this.pagoExitoso = false});

  List<Object> get props => [pagoExitoso];
}
