part of 'creacionentrenamiento_bloc.dart';

abstract class CreacionentrenamientoBlocState extends Equatable {
  const CreacionentrenamientoBlocState();
}

class CreacionentrenamientoInitial extends CreacionentrenamientoBlocState {

  @override
  List<Object> get props => [];
}
class UserCreandoEntrenamiento extends CreacionentrenamientoBlocState {
 final int numeroDia;
 UserCreandoEntrenamiento(this.numeroDia);
  @override
  List<Object> get props => [numeroDia];
}
class UserCreandoEjercicio extends CreacionentrenamientoBlocState {
 final int numeroDia;
 final bool seHaSeleccionadoEjercicio;
  
    final String ejercicioSeleccionado;
    final String comentario;
    final int indexEjercicio;
 UserCreandoEjercicio(this.numeroDia,this.seHaSeleccionadoEjercicio,{this.ejercicioSeleccionado,this.comentario,this.indexEjercicio});
  @override
  List<Object> get props => [numeroDia,seHaSeleccionadoEjercicio,ejercicioSeleccionado,comentario,indexEjercicio];
}
class UserEliminandoConfiguracion extends CreacionentrenamientoBlocState {
 final Configuracion configuracion;
 final int numeroDia;
 final int numeroEjercicio;

 UserEliminandoConfiguracion(this.configuracion,this.numeroDia,this.numeroEjercicio);

  @override
  List<Object> get props => [configuracion,numeroDia,numeroEjercicio];
}
// class UserVisualizandoConfiguracion extends CreacionentrenamientoBlocState {
//  final Map<String,Configuracion> mapaConfiguracion;
//  final int numeroDia;
//  final int position;
 
//  UserVisualizandoConfiguracion(this.mapaConfiguracion,this.numeroDia,this.position);

//   @override
//   List<Object> get props => [mapaConfiguracion,numeroDia,position];
// }
class UserEditandoEjercicio extends CreacionentrenamientoBlocState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
 final int numeroDia;
 
    final int numeroEjercicioSeleccionado;
 UserEditandoEjercicio(this.mesocicloEntrenamiento,this.numeroDia,this.numeroEjercicioSeleccionado);
  @override
  List<Object> get props => [mesocicloEntrenamiento,numeroDia,numeroEjercicioSeleccionado];
}
class UserEliminandoEjercicio extends CreacionentrenamientoBlocState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
 final int numeroDia;
 
    final int numeroEjercicioSeleccionado;
    
 UserEliminandoEjercicio(this.mesocicloEntrenamiento,this.numeroDia,this.numeroEjercicioSeleccionado,);
  @override
  List<Object> get props => [mesocicloEntrenamiento,numeroDia,numeroEjercicioSeleccionado,];
}
class VolverAtras extends CreacionentrenamientoBlocState  {
  
  VolverAtras();
@override
   List<Object> get props => []; 
   
   }
class ErrorSeleccionandoEjercicio extends CreacionentrenamientoBlocState  {
 final BuildContext context;
 ErrorSeleccionandoEjercicio(this.context);
@override
   List<Object> get props => [context]; 
   
   }

 