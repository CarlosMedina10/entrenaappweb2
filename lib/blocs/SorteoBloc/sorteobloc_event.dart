part of 'sorteobloc_bloc.dart';

abstract class SorteoblocEvent extends Equatable {
  const SorteoblocEvent();

  @override
  List<Object> get props => [];
}
class VaAInscribirse extends SorteoblocEvent {
 final String nombreUsuario;
VaAInscribirse(this.nombreUsuario);
List<Object> get props => [nombreUsuario];
}
class Espera extends SorteoblocEvent {
Espera();
List<Object> get props => [];
}
class VerSiSeHaParticipado extends SorteoblocEvent {
final bool haParticipado;
VerSiSeHaParticipado(this.haParticipado);
List<Object> get props => [haParticipado];
}