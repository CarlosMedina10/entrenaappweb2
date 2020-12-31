part of 'sorteobloc_bloc.dart';

abstract class SorteoblocState extends Equatable {
  const SorteoblocState();
  
  @override
  List<Object> get props => [];
}

class NoSeHaInscritoAun extends SorteoblocState {
  

 NoSeHaInscritoAun();
  @override
  List<Object> get props => [];


}
class YaSeHaInscrito extends SorteoblocState {
  

 YaSeHaInscrito();
  @override
  List<Object> get props => [];


}
class ErrorState extends SorteoblocState {
  

 ErrorState();
  @override
  List<Object> get props => [];


}
class PaginaEspera extends SorteoblocState {
  

 PaginaEspera();
  @override
  List<Object> get props => [];


}

