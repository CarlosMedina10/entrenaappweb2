import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:equatable/equatable.dart';

part 'cuestionario_bloc_event.dart';
part 'cuestionario_bloc_state.dart';

class CuestionarioBlocBloc
    extends Bloc<CuestionarioBlocEvent, CuestionarioBlocState> {
  final SeleccionRepository _ejRepository;
  CuestionarioBlocBloc(this._ejRepository)
      : super(CuestionarioEstado(false, false, false, false, 0, 0, false));

  @override
  void onTransition(
      Transition<CuestionarioBlocEvent, CuestionarioBlocState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<CuestionarioBlocState> mapEventToState(
    CuestionarioBlocEvent event,
  ) async* {
    // if (event is CheckBoxEvent)

    // yield CuestionarioBlocState(event.checkbox,false,false,event.diasEntrenamiento);

    if (event is EnviarEvent) {
      print('${event.volume}');
      (event.checkbox2 == true)
          ? _ejRepository.estructuracionApi.entrenamientoDeCero(
              event.fechaInicio, event.diasEntrenamiento, event.prioridad,event.materialDisponible,event.materialDisponible2)
          : _ejRepository.estructuracionApi.validacion(
              event.fechaInicio,
              event.diasEntrenamiento,
              event.materialDisponible,
              event.materialDisponible2,
              event.sexo,
              event.prioridad,
              event.userFase,
              event.userBMI,
              volume: event.volume);
      
      //validamos
      if (_ejRepository.mesocicloEntrenamiento != null) {
        print('aquii1i');
          if (_ejRepository.estructuracionApi.principalRepository.validarFecha(DateTime.parse(_ejRepository.mesocicloEntrenamiento.fechaInicio)))
        yield CuestionarioEstado(event.checkbox, event.checkbox2, true, false,
            event.diasEntrenamiento, event.material, false,
            materialDisponible1: event.materialDisponible,
            materialDisponible2: event.materialDisponible2,
            prioridad: event.prioridad,
            fechaInicio: event.fechaInicio); else{
        print('aquiiiiiiiiiiii2');
             yield CuestionarioEstado(event.checkbox, event.checkbox2, false, true,
            event.diasEntrenamiento, event.material, false,errorFecha: true);}
      } else {
        yield CuestionarioEstado(event.checkbox, event.checkbox2, false, true,
            event.diasEntrenamiento, event.material, false);
      }
    }
    if (event is PulsaOkDespuesDeError) {
       yield CuestionarioEstado(false, false, false, false,
           0, 0, false);

    }
    if (event is UserHaSeleccionadoNumeroDeDias) {
      yield CuestionarioEstado(false, false, false, false,
          event.diasEntrenamiento, event.materialDisponible, event.showInfo);
    }

    if (event is UserHaSeleccionadoMaterial) {
      yield CuestionarioEstado(false, false, false, false,
          event.diasEntrenamiento, event.materialDisponible, event.showInfo);
    }
    if (event is UserHaDecididoQueQuierePriorizar) {
      yield CuestionarioEstado(false, false, false, false,
          event.diasEntrenamiento, event.materialDisponible, true);
    }
    if (event is UserHaDecididoQueNoQuierePriorizar) {
      yield CuestionarioEstado(false, false, false, false,
          event.diasEntrenamiento, event.materialDisponible, false);
    }
    if (event is UserQuiereSerPro) yield ProcesandoPago();

    if (event is SeHaProcesadoPago)
      yield CuestionarioEstado(false, false, false, false, 0, 0, false,
          fromPayment: event.pagoExitoso);
  }
}
