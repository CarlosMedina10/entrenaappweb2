part of 'visualizacionentrenamiento_bloc.dart';

abstract class VisualizacionentrenamientoState extends Equatable {
  const VisualizacionentrenamientoState();
}

class VisualizacionentrenamientoInitial extends VisualizacionentrenamientoState {
  
  final int mesocicloSelected;
  final int semana;
  final int numeroDia;

VisualizacionentrenamientoInitial(this.mesocicloSelected,{this.semana,this.numeroDia});
  
  @override
  List<Object> get props => [mesocicloSelected,semana,numeroDia];
}
class VisualizandoEntrenamiento extends VisualizacionentrenamientoState {
  
   final int numeroMesociclo;
  final int numeroSemana;
  final int numeroDia;

VisualizandoEntrenamiento(this.numeroMesociclo,this.numeroSemana,this.numeroDia);
  
  @override
  List<Object> get props => [numeroMesociclo,numeroSemana,numeroDia];
}

class EliminandoEntrenamiento extends VisualizacionentrenamientoState {
  
  final int mesocicloSelected;
 

EliminandoEntrenamiento(this.mesocicloSelected,);
  
  @override
  List<Object> get props => [mesocicloSelected,];
}

class Confirmando extends VisualizacionentrenamientoState {
  final int mesocicloSelected;
 
  
 

Confirmando(this.mesocicloSelected);
  
  @override
  List<Object> get props => [mesocicloSelected];
}