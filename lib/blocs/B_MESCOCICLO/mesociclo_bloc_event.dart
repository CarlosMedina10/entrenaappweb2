part of 'mesociclo_bloc_bloc.dart';

abstract class MesocicloBlocEvent extends Equatable {
  const MesocicloBlocEvent();

  @override
  List<Object> get props => [];
}

class UserQuiereVisualizarEntrenamiento extends MesocicloBlocEvent {
  final int numeroDia;

final int semanaEntrenamiento;
final DiaEntrenamiento diaEntrenamiento;
final bool entrenamientoCompletado;
  UserQuiereVisualizarEntrenamiento(this.numeroDia,this.semanaEntrenamiento,this.diaEntrenamiento,this.entrenamientoCompletado);

  @override
  List<Object> get props => [numeroDia,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletado];


}

class UserHaMarcadadoCheckBox extends MesocicloBlocEvent {
  final int numeroDia;

final int semanaEntrenamiento;
final DiaEntrenamiento diaEntrenamiento;
final bool entrenamientoCompletado;
  UserHaMarcadadoCheckBox(this.numeroDia,this.semanaEntrenamiento,this.diaEntrenamiento,this.entrenamientoCompletado);

  @override
  List<Object> get props => [numeroDia,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletado];


}

class UserQuiereCambiarSemana extends MesocicloBlocEvent {
  final int semanaEntrenamiento;
  UserQuiereCambiarSemana(this.semanaEntrenamiento);

  @override
  List<Object> get props => [semanaEntrenamiento];
}
class UserQuiereEditarMesociclo extends MesocicloBlocEvent {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
 UserQuiereEditarMesociclo(this.mesocicloEntrenamiento);

  @override
  List<Object> get props => [mesocicloEntrenamiento];
}
class UserHaAcabadoDeEditarMesociclo extends MesocicloBlocEvent {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
 UserHaAcabadoDeEditarMesociclo(this.mesocicloEntrenamiento);

  @override
  List<Object> get props => [mesocicloEntrenamiento];
}
class UserQuiereVolveraElegirEntrenamiento extends MesocicloBlocEvent {

final int semanaEntrenamiento;
final bool actualizarBBDD;

  UserQuiereVolveraElegirEntrenamiento(this.semanaEntrenamiento,this.actualizarBBDD,);

  @override
  List<Object> get props => [semanaEntrenamiento,actualizarBBDD,];


}

class UserQuiereCompartir extends MesocicloBlocEvent {
final int numeroDia;
final int semanaEntrenamiento;
final DiaEntrenamiento diaEntrenamiento;
final bool entrenamientoCompletado;
final bool isFromInstagram;
  UserQuiereCompartir(this.numeroDia,this.semanaEntrenamiento,this.diaEntrenamiento,this.entrenamientoCompletado,{this.isFromInstagram});

  @override
  List<Object> get props => [numeroDia,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletado,isFromInstagram];
}