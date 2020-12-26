part of 'card_bloc.dart';

abstract class CardState extends Equatable {
  const CardState();
  
  @override
  List<Object> get props => [];
}

class TarjetaDeVuelta extends CardState {
  final int numeroTarjeta;

 TarjetaDeVuelta(this.numeroTarjeta);
  @override
  List<Object> get props => [numeroTarjeta];
    @override
  String toString() => 'Estado {Numero Tarjeta: $numeroTarjeta }';

}
class SinTarjetaDeVuelta extends CardState {


  @override
  List<Object> get props => [];


}