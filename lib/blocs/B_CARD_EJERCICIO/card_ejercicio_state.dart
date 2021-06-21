part of 'card_ejercicio_bloc.dart';

abstract class CardEjercicioState extends Equatable {
  const CardEjercicioState();
}



class CardEjercicioS extends CardEjercicioState {
  final int semanaEntrenamiento;
  final bool isToggle;
   final bool inicializando;
  final bool cargando;
 
  CardEjercicioS(this.semanaEntrenamiento,this.isToggle,this.inicializando,{this.cargando=false});
  @override
  List<Object> get props => [semanaEntrenamiento,isToggle,inicializando,cargando,];
  @override
  String toString() => 'Estado { Semana: $semanaEntrenamiento isToggle: $isToggle,cargando : $cargando }';
}

class OtroEstado extends CardEjercicioState {
  
  @override
  List<Object> get props => [];
 
}


