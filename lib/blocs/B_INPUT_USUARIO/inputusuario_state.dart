part of 'inputusuario_bloc.dart';

abstract class InputusuarioState extends Equatable {
  const InputusuarioState();
}

class InputusuarioInitial extends InputusuarioState {
  @override
  List<Object> get props => [];
}
class ViendoCargayRepeticiones extends InputusuarioState {
  final String carga;
  final String repeticiones;
  
  ViendoCargayRepeticiones(this.carga,this.repeticiones);
  @override
  List<Object> get props => [carga,repeticiones];
}

class ActualizandoComentario extends InputusuarioState {
 final String text;
  
  ActualizandoComentario(this.text);
  @override
  List<Object> get props => [text];
}

class ActualizandoCargayRepeticiones extends InputusuarioState {

  
  ActualizandoCargayRepeticiones();
  @override
  List<Object> get props => [];
}

class Cargando extends InputusuarioState {

  
  Cargando();
  @override
  List<Object> get props => [];
}
class ActualizandoCarga extends InputusuarioState {

  
  ActualizandoCarga();
  @override
  List<Object> get props => [];
}
class ActualizandoRepeticiones extends InputusuarioState {

  
  ActualizandoRepeticiones();
  @override
  List<Object> get props => [];

}
class InputInexistente extends InputusuarioState {

  
  InputInexistente();
  @override
  List<Object> get props => [];
}
class ViendoBotonComentarios extends InputusuarioState {
  final String comentarios;

  
  ViendoBotonComentarios(this.comentarios);
  @override
  List<Object> get props => [comentarios];
}
class OcurrioError extends InputusuarioState {
  final String carga;
  final String repeticiones;
  
  OcurrioError(this.carga,this.repeticiones);
  @override
  List<Object> get props => [carga,repeticiones];
}

class OcurrioErrorComentario extends InputusuarioState {
  final String comentario;

  
  OcurrioErrorComentario(this.comentario);
  @override
  List<Object> get props => [comentario];
}