

part of 'seleccionej_bloc.dart';


abstract class SeleccionejEvent extends Equatable {
  const SeleccionejEvent();

  @override
  List<Object> get props => [];
}



class ChangeEvent extends SeleccionejEvent{
  final String ejericicioSeleccionado;
  final int dia;
  final int ejercicio;
  ChangeEvent(this.ejericicioSeleccionado,this.dia,this.ejercicio);

   @override
  List<Object> get props => [ejericicioSeleccionado];

}
class ActualizarEvent extends SeleccionejEvent{
  final int dia;
  ActualizarEvent(this.dia);

   @override
  List<Object> get props => [dia];

}
