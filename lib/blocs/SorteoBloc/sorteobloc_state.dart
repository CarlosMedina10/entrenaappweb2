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
  final bool isPremium;

 YaSeHaInscrito({this.isPremium=false});
  @override
  List<Object> get props => [isPremium];


}
class ErrorState extends SorteoblocState {
  final bool isPremium;

 ErrorState({this.isPremium=false});
  @override
  List<Object> get props => [isPremium];


}
class PaginaEspera extends SorteoblocState {
  final bool isFromIscribiendose;

 PaginaEspera({this.isFromIscribiendose=false});
  @override
  List<Object> get props => [isFromIscribiendose];


}

