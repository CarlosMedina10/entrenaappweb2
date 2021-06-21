import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/blocs/B_INPUT_USUARIO/inputusuario_bloc.dart';
import 'package:entrenaapp/models/Ejercicio.dart';
import 'package:equatable/equatable.dart';

part 'card_ejercicio_event.dart';
part 'card_ejercicio_state.dart';

class CardEjercicioBloc extends Bloc<CardEjercicioEvent, CardEjercicioState> {
  final int semanaEntrenamiento;
  CardEjercicioBloc(this.semanaEntrenamiento) : super(CardEjercicioS(semanaEntrenamiento,false,true));
 

  @override
  Stream<CardEjercicioState> mapEventToState(
    CardEjercicioEvent event,
  ) async* {
    // if (event is InicializarSemana)


    // {
    //   yield CardEjercicioS(event.semanaEntrenamiento);
    // }
   if (event is InicializarTarjeta)

{
 
      yield CardEjercicioS(semanaEntrenamiento,true,false);
    }

     if (event is CambioSemana)

{
 
      yield CardEjercicioS(event.semanaEntrenamiento,true,false);
    }
  if (event is Toggle)

{
 
      yield CardEjercicioS(semanaEntrenamiento,event.isToggle,false);
    }

   if (event is CargarPaginaDetalle)

{
 
      yield CardEjercicioS(semanaEntrenamiento,false,false,cargando: true);
    }
  if (event is TerminarDeCargar)

{
 
      yield CardEjercicioS(semanaEntrenamiento,false,false,cargando: false);
    }
  
  }
}
