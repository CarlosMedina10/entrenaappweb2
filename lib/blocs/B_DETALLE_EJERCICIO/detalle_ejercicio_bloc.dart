import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrena_app_2/Repositorios/repo_principal.dart';
import 'package:entrena_app_2/widgets/detalle_ejercicios.dart';
import 'package:equatable/equatable.dart';
import '../../models/Ejercicio.dart';
part 'detalle_ejercicio_event.dart';
part 'detalle_ejercicio_state.dart';

class DetalleEjercicioBloc extends Bloc<DetalleEjercicioEvent, DetalleEjercicioState> {
  PrincipalRepository principalRepository;
  DetalleEjercicioBloc(this.principalRepository) : super(DetalleEjercicioS(1));
 

  @override
  Stream<DetalleEjercicioState> mapEventToState(
    DetalleEjercicioEvent event,
  ) async* {
     if (event is ActualizarSerie)

{
 
      yield DetalleEjercicioS(event.serie,parar:event.parar,cargando: false);
    }
  if (event is Parar)

{
 yield DetalleEjercicioS(event.serie,parar: true,cargando:false);

    }
 
 if (event is QuieroActualizar) {


  
    
    
   yield ActualizandoCargayRepeticiones(event.serie,event.parar,false);
    }
 if (event is QuieroActualizarComentario)

    
   { 
   yield ActualizandoComentario();
    }
 
 if (event is QuieroCambiarEjercicio) {
  
  yield CambiandoEjercicio();
    
 principalRepository.cambiarEjercicio(event.numeroDia, event.numeroEjercicio, event.newEjercicio);
    yield DetalleEjercicioS(1);

 }
 if (event is HeAcabadoDeActualizar)


 {
 
    if (!event.parar) 
     yield DetalleEjercicioS(event.serie+1,parar:false,cargando:true,isCompleted: false);
     else  yield DetalleEjercicioS(event.serie+2,parar:false,cargando:true,isCompleted: false);
 try {
   
     if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }


   principalRepository.entrenamientoApi.actualizarCargayRepeticionesPro(event.carga,event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie,);
     if (!event.parar) 
    yield DetalleEjercicioS(event.serie+1,parar:event.parar,cargando:false,isCompleted: true);
    else yield DetalleEjercicioS(event.serie+2,parar:event.parar,cargando:false,isCompleted: true);
    } catch (error){
      if (!event.parar) 
       yield OcurrioError(serie:event.serie+1); else 
       yield OcurrioError(serie:event.serie+1);
     
    }

   
    
    
    }
  if (event is HeAcabadoDeActualizarComentario)

     {
  
    
     yield Acabando();
    
 try {
   
     if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }


    await principalRepository.entrenamientoApi.actualizarComentarioPro(event.comentario, event.numeroDia, event.numeroEjercicio, event.semanaActual);
     
    yield Acabado();
   
    } catch (error){

       yield OcurrioError();
      // yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie]);
    }

   
    
    }
    
    
    if (event is HeCancelado) {
      yield DetalleEjercicioS(event.serie,parar:event.parar,cargando:false); 
      
      } 
    
  }
  }

