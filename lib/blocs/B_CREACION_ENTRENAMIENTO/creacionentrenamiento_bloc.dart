
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../models/MesocicloEntrenamiento.dart';
part 'creacionentrenamiento_event.dart';
part 'creacionentrenamiento_state.dart';

class CreacionentrenamientoBloc extends Bloc<CreacionentrenamientoBlocEvent, CreacionentrenamientoBlocState> {
  final PrincipalRepository _principalRepository;
  final CreacionRepository _creacionRepository;
  final MesocicloEntrenamiento mesocicloEntrenamiento;

  CreacionentrenamientoBloc(this._principalRepository,this._creacionRepository,this.mesocicloEntrenamiento) : super((mesocicloEntrenamiento.nombreMesociclo == null) ? CreacionentrenamientoInitial() : UserCreandoEntrenamiento(0));

@override
  void onTransition(Transition<CreacionentrenamientoBlocEvent, CreacionentrenamientoBlocState> transition) {
    super.onTransition(transition);
    print(transition);
  }
  @override
  Stream<CreacionentrenamientoBlocState> mapEventToState(
    CreacionentrenamientoBlocEvent event,
  ) async* {

    if (event is HeSeleccionadoNombre)
     {
       
      
       mesocicloEntrenamiento.nombreMesociclo=event.nombreMesociclo;
     
     yield UserCreandoEntrenamiento(0);}
     
    if (event is HeAcabadoEjercicio)
    {  
print(event.ejercicio);
      if (event.ejercicio!=null) 
    _creacionRepository.buscarEjercicio(event.ejercicio);
      if (_creacionRepository.ejercicioSeleccionado == null ) 
     yield ErrorSeleccionandoEjercicio(event.context);
     else {
  
         (event.indexEjercicio!=null) ?
       mesocicloEntrenamiento.diasEntrenamiento[event.numeroDia].patrones.insert(event.indexEjercicio, _creacionRepository.crearPatron(event.configuracion,event.comentario))
       :
       mesocicloEntrenamiento.diasEntrenamiento[event.numeroDia].patrones.add( _creacionRepository.crearPatron(event.configuracion,event.comentario));
       mesocicloEntrenamiento.diasEntrenamiento[event.numeroDia].patrones.forEach((element) {
         print(element.ejercicioSeleccionado.nombre);
        print(element.comentario);
       });
 
       yield UserCreandoEntrenamiento(event.numeroDia);}

    }
    if (event is HeAcabadoDeEditar)
    {  
  
       
       mesocicloEntrenamiento.diasEntrenamiento[event.numeroDia].patrones[event.indexEjercicio].configuracion=event.configuracion;
       mesocicloEntrenamiento.diasEntrenamiento[event.numeroDia].patrones.forEach((element) {
         print(element.ejercicioSeleccionado.nombre);
        print(element.configuracion.series.semana1);
        print(element.configuracion.repeticiones.semana1);
        print(element.configuracion.rir.semana1);
        print(element.configuracion.tiempoDeDescanso.semana1);
       });
      
       yield UserCreandoEntrenamiento(event.numeroDia);

    }
    if (event is UserNoQuiereEliminarConfiguracion) {
          yield UserCreandoEjercicio(event.numeroDia,false,indexEjercicio: event.position);
    }
    if (event is UserQuiereEliminarConfiguracion) {
       if (event.isConfirm==false)
     {
       
       print(event.configuracion.id);
       yield UserEliminandoConfiguracion(event.configuracion,event.numeroDia,event.position);}
    else 
      {
       
     _creacionRepository.borrarConfiguracion(event.configuracion.id);
      
      yield UserCreandoEjercicio(event.numeroDia,false,indexEjercicio: event.position);
    
      }
    }

    // if (event is UserQuiereVisualizarConfiguracion) {

    //   yield UserVisualizandoConfiguracion(event.mapaConfiguracion,event.numeroDia,event.position);
    // }
    // if (event is UserHaAcabadoDeVisualizarConfiguracion) {
    //       yield UserCreandoEjercicio(event.numeroDia,false,indexEjercicio: event.position);
    // }
    if (event is QuieroAnadirEjercicio)
    {  
      yield UserCreandoEjercicio(event.numeroDia,false,indexEjercicio: event.position);
    }

    if (event is QuieroEditarConfiguracion)
    { 
      yield UserEditandoEjercicio(mesocicloEntrenamiento,event.numeroDia,event.numeroEjercicio);
    }
     if (event is QuieroEliminarEjercicio)
    {  
      if (event.isConfirm==false)
      {yield UserEliminandoEjercicio(mesocicloEntrenamiento,event.numeroDia,event.numeroEjercicio);}
      else {
        _creacionRepository.eliminarEjercicio(mesocicloEntrenamiento, event.numeroDia, event.numeroEjercicio);
       yield UserCreandoEntrenamiento(event.numeroDia);
      }
    }
   if (event is QuieroAnadirConfiguracion) 
   { 
      
     _creacionRepository.buscarEjercicio(event.ejercicio);
      if (_creacionRepository.ejercicioSeleccionado == null ) 
     yield ErrorSeleccionandoEjercicio(event.context);
     else
     yield UserCreandoEjercicio(event.numeroDia,true,ejercicioSeleccionado: event.ejercicio,comentario: event.comentario,indexEjercicio: event.indexEjercicio);
   }
   if (event is QuieroVolverAPaginaDeNombre)
    {
      yield CreacionentrenamientoInitial();
    }
   if (event is QuieroVolverAPaginaDeInicio)
    {
      yield UserCreandoEntrenamiento(event.numeroDia);

    }
  if (event is QuieroVolverAConfiguracion)
    {
      yield VolverAtras();
    }


    // TODO: implement mapEventToState
  }
}
