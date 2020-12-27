part of 'card_bloc.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object> get props => [];
}
class DarVuelta extends CardEvent {
final bool abrir;  
final int numeroTarjeta;
 
 DarVuelta(this.numeroTarjeta,this.abrir);


  

  List<Object> get props => [numeroTarjeta,abrir];


}