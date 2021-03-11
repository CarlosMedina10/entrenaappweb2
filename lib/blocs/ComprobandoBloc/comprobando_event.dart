part of 'comprobando_bloc.dart';

abstract class ComprobandoEvent extends Equatable {
  const ComprobandoEvent();

  @override
  List<Object> get props => [];
}

class Espera extends ComprobandoEvent {
Espera();
List<Object> get props => [];
}