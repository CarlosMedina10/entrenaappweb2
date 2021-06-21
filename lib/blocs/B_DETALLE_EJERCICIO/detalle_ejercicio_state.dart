part of 'detalle_ejercicio_bloc.dart';

abstract class DetalleEjercicioState extends Equatable {
  const DetalleEjercicioState();
}


class DetalleEjercicioS extends DetalleEjercicioState {
  final int serie;
  final bool parar;
  final bool cargando;
  final bool isCompleted;
  DetalleEjercicioS(this.serie,{this.parar=false,this.cargando=false,this.isCompleted=false});
  @override
  List<Object> get props => [serie,parar,cargando,isCompleted];
  @override
  String toString() => 'Estado { Serie: $serie, $parar, $cargando , $isCompleted }';
}
class ActualizandoCargayRepeticiones extends DetalleEjercicioState {
 final int serie;
   final bool parar;
  final bool cargando;
  ActualizandoCargayRepeticiones(this.serie,this.parar,this.cargando);
  @override
  List<Object> get props => [serie,parar,cargando];
}

class ActualizandoComentario extends DetalleEjercicioState {
 
  
  ActualizandoComentario();
  @override
  List<Object> get props => [];
}

class Acabando extends DetalleEjercicioState {
 
  
  Acabando();
  @override
  List<Object> get props => [];
}

class Acabado extends DetalleEjercicioState {
 
  
  Acabado();
  @override
  List<Object> get props => [];
}
class CambiandoEjercicio extends DetalleEjercicioState {
 
  
  CambiandoEjercicio();
  @override
  List<Object> get props => [];
}
class OcurrioError extends DetalleEjercicioState {
 
  final int serie;
  OcurrioError({this.serie});
  @override
  List<Object> get props => [serie];
}