part of 'visualizacionentrenamiento_bloc.dart';

abstract class VisualizacionentrenamientoEvent extends Equatable {
  const VisualizacionentrenamientoEvent();
}
class UserHaSeleccionadoMesociclo extends VisualizacionentrenamientoEvent{
  final int mesocicloSelected;
  UserHaSeleccionadoMesociclo(this.mesocicloSelected);
  
  
  @override
   List<Object> get props => [mesocicloSelected];
}

class UserVaAVisualizarEntrenamiento extends VisualizacionentrenamientoEvent{
  final int numeroMesociclo;
  final int numeroSemana;
  final int numeroDia;
  UserVaAVisualizarEntrenamiento(this.numeroMesociclo,this.numeroSemana,this.numeroDia);
  
  
  @override
   List<Object> get props => [numeroMesociclo,numeroSemana,numeroDia];
}

class UserVuelveAPaginaInicial extends VisualizacionentrenamientoEvent{
  final int numeroMesociclo;
  final int semana;
  
  UserVuelveAPaginaInicial(this.numeroMesociclo,{this.semana});
  
  
  @override
   List<Object> get props => [numeroMesociclo,semana];
}

class UserVaAEliminarMesociclo extends VisualizacionentrenamientoEvent{
  final int numeroMesociclo;
  final bool isConfirm;
  
  UserVaAEliminarMesociclo(this.numeroMesociclo,this.isConfirm);
  
  
  @override
   List<Object> get props => [numeroMesociclo,isConfirm];
}