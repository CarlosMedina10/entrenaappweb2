import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';import '../../models/MesocicloEntrenamiento.dart';

part 'configuracionentrenamiento_event.dart';
part 'configuracionentrenamiento_state.dart';

class ConfiguracionentrenamientoBloc extends Bloc<ConfiguracionentrenamientoEvent, ConfiguracionentrenamientoState> {
  final PrincipalRepository _principalRepository;
  final SeleccionRepository _ejRepository;
  ConfiguracionentrenamientoBloc(this._principalRepository,this._ejRepository) : super(EligiendoConfiguracionentrenamiento());
  
@override
  void onTransition(Transition<ConfiguracionentrenamientoEvent, ConfiguracionentrenamientoState> transition) {
    super.onTransition(transition);
    print(transition);
  }
  @override
  Stream<ConfiguracionentrenamientoState> mapEventToState(
    ConfiguracionentrenamientoEvent event,
  ) async* {



    if (event is QuieroVerOtraEstructura) {
      print(_ejRepository.estructuracionApi.mesocicloEntrenamiento.nombreMesociclo);
      yield EsperandoACargarNuevoEntrenamiento();
      await Future.delayed(Duration(milliseconds: 200));
     _ejRepository.estructuracionApi.validacion(event.fechaInicio,event.numeroDias,event.materialDisponible1,event.materialDisponible2,event.sexo,event.prioridad,event.userFase,event.userBmi,isFromVerOtraEstructura: true,mesocicloActual: _ejRepository.estructuracionApi.mesocicloEntrenamiento);
    MesocicloEntrenamiento mesocicloEntrenamiento = _ejRepository.estructuracionApi.mesocicloEntrenamiento;
      
      // print('${mesocicloEntrenamiento.toJson()}');
     MesocicloEntrenamiento mesocicloEntrenamientoFinal =   _ejRepository.guardarMusculosTrabajadosCadaDia(_ejRepository.seleccionarEjerciciosRandom(mesocicloEntrenamiento));
     yield QuieroSeleccionar(mesocicloEntrenamientoFinal,event.userFase,event.userBmi,event.sexo,event.numeroDias,event.fechaInicio,event.materialDisponible1,event.materialDisponible2,event.prioridad,event.volume); 
    }
    if (event is HeAcabadoCuestionario) {

      if (event.checkbox2 == true )

     {
      
        
       MesocicloEntrenamiento mesocicloEntrenamiento = _ejRepository.estructuracionApi.mesocicloEntrenamiento;
      if (_principalRepository.entrenamientoApi.userID=='vjPlfIOxv1aLlgdDqxcNDCpzQJh2') 
      yield QuieroCrearMiMesociclo(mesocicloEntrenamiento,event.userFase,event.userBmi,event.sexo,event.materialDisponible1,event.materialDisponible2,isTrainer: true);
      else yield QuieroCrearMiMesociclo(mesocicloEntrenamiento,event.userFase,event.userBmi,event.sexo,event.materialDisponible1,event.materialDisponible2);
      }
       else {
  // Aqui sacamos la funcion que nos convierte el modelo en mesociclo.
      MesocicloEntrenamiento mesocicloEntrenamiento = _ejRepository.estructuracionApi.mesocicloEntrenamiento;
      
      // print('${mesocicloEntrenamiento.toJson()}');
     MesocicloEntrenamiento mesocicloEntrenamientoFinal=   _ejRepository.guardarMusculosTrabajadosCadaDia(_ejRepository.seleccionarEjerciciosRandom(mesocicloEntrenamiento));
     
     
      if (event.checkbox == true) {
       
    yield QuieroSeleccionar(mesocicloEntrenamientoFinal,event.userFase,event.userBmi,event.sexo,event.numeroDias,event.fechaInicio,event.materialDisponible1,event.materialDisponible2,event.prioridad,event.volume);} 

    else 
    
    {
     try{ 
       
       yield EsperandoACargarNuevoEntrenamiento();
        // Aqui es donde filtraremos el mesociclo para cargar de forma random los ejercicios
     
    
       await _principalRepository.guardarEnBBDD(mesocicloEntrenamientoFinal);
      //  await _principalRepository.obtenerUltimoMesociclo();
       await  _principalRepository.guardarUserBMI(event.userBmi);
       await  _principalRepository.guardarUserFase(event.userFase);
       await  _principalRepository.guardarUserSexo(event.sexo);
      //  await _principalRepository.guardarUserVolume(event.volume);
      //  print(_principalRepository.userVolume);
      //  print('directoooooooooooooooooooo');
     yield NoQuieroSeleccionaroYaHeAcabado(mesocicloEntrenamiento);
     } catch (error){
       _ejRepository.estructuracionApi.setMesociclo();
       yield Error (event.volume);
     }
    
    
    }
      }
  } 
  if (event is VolveraCuestionario) {
    if(event.volume!=null)
    _principalRepository.guardarUserVolume(event.volume,isBack:true);
   yield EligiendoConfiguracionentrenamiento();
  }
  if (event is HeAcabadoDeCrear) {
      
   
    try{ 
      yield EsperandoACargarNuevoEntrenamiento();
    
   await _principalRepository.guardarEnBBDD(event.mesocicloEntrenamiento,idUser: event.userID);
      // await _principalRepository.obtenerUltimoMesociclo();
       await  _principalRepository.guardarUserBMI(event.userBmi);
       await _principalRepository.guardarUserFase(event.userFase);
       await  _principalRepository.guardarUserSexo(event.sexo);
      
       
     yield NoQuieroSeleccionaroYaHeAcabado(event.mesocicloEntrenamiento,);
     } catch (error){
       yield Error2(isFromCrear: true,materialDisponible1: event.materialDisponible1,materialDisponible2: event.materialDisponible2);
     }

  }
  if (event is HeAcabadoDeEstructurar) {
      MesocicloEntrenamiento mesocicloEntrenamiento= _ejRepository.mesocicloEntrenamiento;

   
    try{ 
      yield EsperandoACargarNuevoEntrenamiento();
 
      await _principalRepository.guardarEnBBDD(mesocicloEntrenamiento);
      // await _principalRepository.obtenerUltimoMesociclo();
       await  _principalRepository.guardarUserBMI(event.userBmi);
       await  _principalRepository.guardarUserFase(event.userFase);
       await  _principalRepository.guardarUserSexo(event.sexo);
        // await _principalRepository.guardarUserVolume(event.volume);
     
      //  print(_principalRepository.userVolume);
      //  print('NOOOOOO directoooooooooooooooooooo');
     yield NoQuieroSeleccionaroYaHeAcabado(mesocicloEntrenamiento,);
     } catch (error){
       yield Error2(materialDisponible1: event.materialDisponible1,materialDisponible2: event.materialDisponible2,prioridad: event.prioridad,numeroDias: event.numeroDias,fechaInicio: event.fechaInicio,volume:event.volume);
     }

  }
 

  }
}