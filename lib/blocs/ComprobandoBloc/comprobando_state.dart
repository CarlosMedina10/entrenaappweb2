part of 'comprobando_bloc.dart';

abstract class ComprobandoState extends Equatable {
  const ComprobandoState();
  
  @override
  List<Object> get props => [];
}

class NoEsEntrenador extends ComprobandoState {
  

 NoEsEntrenador();
  @override
  List<Object> get props => [];


}
class EsEntrenador extends ComprobandoState {


 EsEntrenador();
  @override
  List<Object> get props => [];


}
class ErrorState extends ComprobandoState {
 

 ErrorState();
  @override
  List<Object> get props => [];


}
class PaginaEspera extends ComprobandoState {
  

 PaginaEspera();
  @override
  List<Object> get props => [];


}

