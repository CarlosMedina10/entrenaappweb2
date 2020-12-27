import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(SinTarjetaDeVuelta());

  @override
  Stream<CardState> mapEventToState(
    CardEvent event,
  ) async* {
     if (event is DarVuelta)
     {
       if (event.abrir) {
         yield TarjetaDeVuelta(event.numeroTarjeta);
       } else 
       yield SinTarjetaDeVuelta();
     }
     
    // TODO: implement mapEventToState
  }
}
