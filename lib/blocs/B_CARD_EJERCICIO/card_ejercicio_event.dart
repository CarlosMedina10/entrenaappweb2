part of 'card_ejercicio_bloc.dart';

abstract class CardEjercicioEvent extends Equatable {
  const CardEjercicioEvent();
}

// class InicializarSemana extends CardEjercicioEvent {
  

// final int semanaEntrenamiento;

//   InicializarSemana(this.semanaEntrenamiento);

//   @override
//   List<Object> get props => [semanaEntrenamiento];


// }
class CambioSemana extends CardEjercicioEvent {
  

final int semanaEntrenamiento;

  CambioSemana(this.semanaEntrenamiento);

  @override
  List<Object> get props => [semanaEntrenamiento];


}

class Toggle extends CardEjercicioEvent {
  

final bool isToggle ;

  Toggle(this.isToggle);

  @override
  List<Object> get props => [isToggle];


}

class CargarPaginaDetalle extends CardEjercicioEvent {
  
  


  CargarPaginaDetalle();

  @override
  List<Object> get props => [];


}
class InicializarTarjeta extends CardEjercicioEvent {
  



  InicializarTarjeta();

  @override
  List<Object> get props => [];


}
class TerminarDeCargar extends CardEjercicioEvent {
  



  TerminarDeCargar();

  @override
  List<Object> get props => [];


}

