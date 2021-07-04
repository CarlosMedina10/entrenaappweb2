part of 'creacionentrenamiento_bloc.dart';

abstract class CreacionentrenamientoBlocEvent extends Equatable {
  const CreacionentrenamientoBlocEvent();

  @override
  List<Object> get props => [];
}


class HeSeleccionadoNombre extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
 
  final String nombreMesociclo;
 


  HeSeleccionadoNombre(this.nombreMesociclo,);
@override
   List<Object> get props => [nombreMesociclo,]; 
   
   }

   class QuieroAnadirEjercicio extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    final int position;
  
  


  QuieroAnadirEjercicio(this.numeroDia,{this.position});
@override
   List<Object> get props => [numeroDia,position]; 
   
   }
class QuieroVolverAPaginaDeInicio extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
  
  


  QuieroVolverAPaginaDeInicio(this.numeroDia);
@override
   List<Object> get props => [numeroDia]; 
   
   }
class QuieroAnadirConfiguracion extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    final String ejercicio;
    final String comentario;
    final BuildContext context;
    final int indexEjercicio;
    
  
  


  QuieroAnadirConfiguracion(this.numeroDia,this.ejercicio,{this.comentario,this.context,this.indexEjercicio});
@override
   List<Object> get props => [numeroDia,ejercicio,comentario,context,indexEjercicio]; 
   
   }

class QuieroEditarConfiguracion extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    final int numeroEjercicio;
    
  
  


  QuieroEditarConfiguracion(this.numeroDia,this.numeroEjercicio);
@override
   List<Object> get props => [numeroDia,numeroEjercicio]; 
   
   }
class QuieroEliminarEjercicio extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    final int numeroEjercicio;
    final bool isConfirm;
    
  
  


  QuieroEliminarEjercicio(this.numeroDia,this.numeroEjercicio,{this.isConfirm=false});
@override
   List<Object> get props => [numeroDia,numeroEjercicio,isConfirm]; 
   
   }

class HeAcabadoEjercicio extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    
    final Configuracion configuracion;
    final String comentario;
    final int indexEjercicio;
    final String ejercicio;
    final BuildContext context;

  
  


  HeAcabadoEjercicio(this.numeroDia,this.configuracion,this.comentario,this.indexEjercicio,this.context,{this.ejercicio});
@override
   List<Object> get props => [numeroDia,configuracion,comentario,indexEjercicio,context,ejercicio]; 
   
   }

class HeAcabadoDeEditar extends CreacionentrenamientoBlocEvent {
  //ira el modelo como evento
    
    final int numeroDia;
    final int indexEjercicio;
    final Configuracion configuracion;
    
  
  


  HeAcabadoDeEditar(this.numeroDia,this.indexEjercicio,this.configuracion);
@override
   List<Object> get props => [numeroDia,indexEjercicio,configuracion]; 
   
   }
class QuieroVolverAPaginaDeNombre extends CreacionentrenamientoBlocEvent {
  
  QuieroVolverAPaginaDeNombre();
@override
   List<Object> get props => []; 
   
   }
class UserQuiereEliminarConfiguracion extends CreacionentrenamientoBlocEvent {

final Configuracion configuracion;
 final int numeroDia;
 final int position;
 final bool isConfirm;
  UserQuiereEliminarConfiguracion(this.configuracion,this.numeroDia,this.position,this.isConfirm);
@override
   List<Object> get props => [configuracion,numeroDia,position,isConfirm]; 
   
   }
class UserNoQuiereEliminarConfiguracion extends CreacionentrenamientoBlocEvent {


 final int numeroDia;
 final int position;

  UserNoQuiereEliminarConfiguracion(this.numeroDia,this.position);
@override
   List<Object> get props => [numeroDia,position]; 
   
   }
//  class UserQuiereVisualizarConfiguracion extends CreacionentrenamientoBlocEvent {

// final Map<String,Configuracion> mapaConfiguracion;
// final int numeroDia;
//  final int position;
 
//   UserQuiereVisualizarConfiguracion(this.mapaConfiguracion,this.numeroDia,this.position);
// @override
//    List<Object> get props => [mapaConfiguracion,numeroDia,position]; 
   
//    }

//  class UserHaAcabadoDeVisualizarConfiguracion extends CreacionentrenamientoBlocEvent {

//  final int numeroDia;
//  final int position;
 
//   UserHaAcabadoDeVisualizarConfiguracion(this.numeroDia,this.position);
// @override
//    List<Object> get props => [numeroDia,position]; 
   
//    } 
  class QuieroVolverAConfiguracion extends CreacionentrenamientoBlocEvent {
  
  QuieroVolverAConfiguracion();
@override
   List<Object> get props => []; 
   
   }