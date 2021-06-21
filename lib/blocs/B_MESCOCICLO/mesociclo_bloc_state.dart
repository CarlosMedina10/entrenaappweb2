part of 'mesociclo_bloc_bloc.dart';

abstract class MesocicloBlocState extends Equatable {
  const MesocicloBlocState();
}

class UserEligiendoEntrenamiento extends MesocicloBlocState {
 final int semanaEntrenamiento;
 UserEligiendoEntrenamiento(this.semanaEntrenamiento);

  @override
  List<Object> get props => [semanaEntrenamiento];
  @override
  String toString() => 'UserEligiendoEntrenamiento { Semana: $semanaEntrenamiento }';
}

class UserVisualizandoEntrenamiento extends MesocicloBlocState {
  final int numeroDia;
 final int semanaEntrenamiento;
 final DiaEntrenamiento diaEntrenamiento;
 final bool entrenamientoCompletado;
 final bool semanaCompletada;
 final bool mesocicloCompletado;
 UserVisualizandoEntrenamiento(this.numeroDia, this.semanaEntrenamiento,this.diaEntrenamiento,this.entrenamientoCompletado,this.semanaCompletada,this.mesocicloCompletado);

  @override
  List<Object> get props => [numeroDia,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletado,semanaCompletada,mesocicloCompletado];

@override
  String toString() => 'UserVisualizandoEntrenamiento {$entrenamientoCompletado }';

}

class UserEditandoMesociclo extends MesocicloBlocState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
 UserEditandoMesociclo(this.mesocicloEntrenamiento);

  @override
  List<Object> get props => [mesocicloEntrenamiento];
}
class UserCompartiendo extends MesocicloBlocState {
final int numeroDia;
 final int semanaEntrenamiento;
  final DiaEntrenamiento diaEntrenamiento;
  final isFromInstagram;
 
  final bool entrenamientoCompletado;
  UserCompartiendo(this.numeroDia,this.semanaEntrenamiento,this.diaEntrenamiento,this.entrenamientoCompletado,this.isFromInstagram);

  @override
  List<Object> get props => [numeroDia,semanaEntrenamiento,diaEntrenamiento,entrenamientoCompletado];
}