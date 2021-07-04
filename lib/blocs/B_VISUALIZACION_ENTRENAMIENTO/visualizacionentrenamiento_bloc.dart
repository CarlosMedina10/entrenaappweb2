import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:equatable/equatable.dart';

part 'visualizacionentrenamiento_event.dart';
part 'visualizacionentrenamiento_state.dart';

class VisualizacionentrenamientoBloc extends Bloc<VisualizacionentrenamientoEvent, VisualizacionentrenamientoState> {
  PrincipalRepository principalRepository;
  VisualizacionentrenamientoBloc(this.principalRepository) : super(VisualizacionentrenamientoInitial(-1));
  
  

  @override
  Stream<VisualizacionentrenamientoState> mapEventToState(
    VisualizacionentrenamientoEvent event,
  ) async* {
    if (event is UserHaSeleccionadoMesociclo)
     {
       yield VisualizacionentrenamientoInitial(event.mesocicloSelected);
     }

     if (event is UserVaAVisualizarEntrenamiento)
     {
       yield VisualizandoEntrenamiento(event.numeroMesociclo,event.numeroSemana,event.numeroDia);
     }
    if (event is UserVaAEliminarMesociclo)
     {
       if (!event.isConfirm)
      { yield Confirmando(event.numeroMesociclo);
        yield VisualizacionentrenamientoInitial(event.numeroMesociclo);}
       else {
        yield EliminandoEntrenamiento(event.numeroMesociclo);
     await  principalRepository.eliminarMesociclo(event.numeroMesociclo);
     
       yield VisualizacionentrenamientoInitial(-1);
       }
     }
     if (event is UserVuelveAPaginaInicial)
     {
        if (event.semana!=null)
          yield VisualizacionentrenamientoInitial(event.numeroMesociclo,semana: event.semana); else
       yield VisualizacionentrenamientoInitial(event.numeroMesociclo);
     }
    // TODO: implement mapEventToState
  }
}
