import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrena_app_2/Repositorios/repo_principal.dart';
import 'package:equatable/equatable.dart';
import '../B_CARD_EJERCICIO/card_ejercicio_bloc.dart';

part 'inputusuario_event.dart';
part 'inputusuario_state.dart';

class InputusuarioBloc extends Bloc<InputusuarioEvent, InputusuarioState> {
 final PrincipalRepository principalRepository;
 
 final int numeroDia;
 final int numeroEjercicio;
 final int serie;
final CardEjercicioBloc otherBloc;
StreamSubscription otherBlocSubscription1;


  // InputusuarioBloc(this.principalRepository);
  InputusuarioBloc(this.principalRepository,this.otherBloc,this.numeroDia,this.numeroEjercicio,this.serie) : super(InputusuarioInitial())
{
    
   otherBlocSubscription1 = otherBloc.listen((state) {
     
       if (state is CardEjercicioS)
       {
         
          add(Inicializar(numeroDia, numeroEjercicio,state.semanaEntrenamiento , serie));}
         
          

        
        // Add events here to trigger changes in MyBloc.
    });
  }


 

  @override
  Stream<InputusuarioState> mapEventToState(
    InputusuarioEvent event,
  ) async* {

    if (event is Inicializar)
   { 

     
    if (event.semanaActual == 0) {

      // serie va desde 0 en cambio las series en el entrenamiento van desde 1 por eso el < unicamente. Si es igual mostramos el boton de añadir comentarios.
      if (serie < principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana1){
     String carga = (principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1.length>=event.serie) ? principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie] : 'No';
    String repeticiones = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);} 
    else if (serie == principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana1)
    {
     
    String comentarios= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana1;
    
    yield ViendoBotonComentarios(comentarios);}
    else
    yield InputInexistente();
    } else if (event.semanaActual == 1) {
      if (serie+1 <= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana2){
    String carga = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie];
    String repeticiones = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie];
   yield ViendoCargayRepeticiones(carga,repeticiones);} 
   else if (serie == principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana2){
       String comentarios= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana2;

    yield ViendoBotonComentarios(comentarios);}
   else 
    yield InputInexistente();
    } else if (event.semanaActual == 2) {
      if (serie+1 <= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana3){
    String carga = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie];
    String repeticiones = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);} 
    else if (serie == principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana3){
        String comentarios= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana3;
    yield ViendoBotonComentarios(comentarios);}
    else 
    yield InputInexistente();
    } else if (event.semanaActual == 3) {
      if (serie+1 <= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana4){
    
    print('${principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.nombre}');
    print('${principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga} gaaaaaaaaaaaaaaaaaaaaaaag');
     String carga = (principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4.length>event.serie) ? principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie] : 'no';
    String repeticiones = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);} 
    else if (serie == principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[numeroDia].patrones[numeroEjercicio].configuracion.series.semana4){
        String comentarios= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana4;
        print('$comentarios');
    yield ViendoBotonComentarios(comentarios);}
    else 
    yield InputInexistente();
    }
    
   
    
      
    }


   if (event is QuieroActualizarComentario)

    
   { 
   yield ActualizandoComentario(event.text);
    }

     
     
     
  if (event is QuieroActualizar) {
  

  
    
    
   yield ActualizandoCargayRepeticiones();
    }
    

    if (event is HeAcabadoDeActualizarComentario)


 {
   if (event.semanaActual == 0) {
     yield Cargando();
 try {
    if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
   principalRepository.entrenamientoApi.actualizarComentarioPro(event.comentario, event.numeroDia, event.numeroEjercicio, event.semanaActual);
    
    yield ViendoBotonComentarios(event.comentario);} catch (error){
     yield OcurrioErrorComentario(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana1);
    }

   }
    if (event.semanaActual == 1) {
      yield Cargando();
 try {
    if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
 principalRepository.entrenamientoApi.actualizarComentarioPro(event.comentario, event.numeroDia, event.numeroEjercicio, event.semanaActual);
    
    yield ViendoBotonComentarios(event.comentario);} catch (error){
     yield OcurrioErrorComentario(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana2);
    }

   }
    if (event.semanaActual == 2) {
    yield Cargando();
 try {
   
    if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
 principalRepository.entrenamientoApi.actualizarComentarioPro(event.comentario, event.numeroDia, event.numeroEjercicio, event.semanaActual);
    
    yield ViendoBotonComentarios(event.comentario);} catch (error){
      yield OcurrioErrorComentario(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana3);
    }

   }
    if (event.semanaActual == 3) {
    yield Cargando();
 try {
    if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
    principalRepository.entrenamientoApi.actualizarComentarioPro(event.comentario, event.numeroDia, event.numeroEjercicio, event.semanaActual);
    
    yield ViendoBotonComentarios(event.comentario);} catch (error){
     yield OcurrioErrorComentario(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana4);
    }

   }
 
    
    }


    if (event is HeAcabadoDeActualizar)


 {
   if (event.semanaActual == 0) {
     yield Cargando();
 try {
   
     if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
 await principalRepository.guardarPuntos(-1);
  }


   principalRepository.entrenamientoApi.actualizarCargayRepeticionesPro(event.carga,event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    
    yield ViendoCargayRepeticiones(event.carga,event.repeticiones);}
     catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie]);
    }

   
    } else if (event.semanaActual == 1) {
    yield Cargando();
    try {
      
       if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
       principalRepository.entrenamientoApi.actualizarCargayRepeticionesPro(event.carga,event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    
    yield ViendoCargayRepeticiones(event.carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie]);
    }
    } else if (event.semanaActual == 2) {
  yield Cargando();
  try {
    
     if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
     principalRepository.entrenamientoApi.actualizarCargayRepeticionesPro(event.carga,event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    
    yield ViendoCargayRepeticiones(event.carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie]);
    }
    } else if (event.semanaActual == 3) {
      print('actualizaaaaa');
    yield Cargando();
     try {
        if (!principalRepository.isUserPro) {
 // La funcion guardar puntos suma los puntos actuales a los que le mandamos. Por ejemplo con un anuncio bonificado mandamos 10 puntos o con una compra 100. En las acciones restamos puntos.
  await principalRepository.guardarPuntos(-1);
  }
       
      principalRepository.entrenamientoApi.actualizarCargayRepeticionesPro(event.carga,event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    
    yield ViendoCargayRepeticiones(event.carga,event.repeticiones);} catch (error){
      print(error);
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie]);
    }
    }
    
    }


  if (event is HeAcabadoDeActualizarCarga)
// Este evento debera llevar tambien la carga y repeticiones

 {

   if (event.semanaActual == 0) {

     yield Cargando();
    try {
      
           if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
   principalRepository.entrenamientoApi.actualizarCargaPro(event.carga, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie];
    yield ViendoCargayRepeticiones(event.carga,repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie]);
    }
    } else if (event.semanaActual == 1) {
    yield Cargando();
   try {
          if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
     
      principalRepository.entrenamientoApi.actualizarCargaPro(event.carga, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie];
    yield ViendoCargayRepeticiones(event.carga,repeticiones);
    } catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie]);
    }
    } else if (event.semanaActual == 2) {
    yield Cargando();
      try {
             if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
        
        
        principalRepository.entrenamientoApi.actualizarCargaPro(event.carga, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie];
    yield ViendoCargayRepeticiones(event.carga,repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie]);
    }
    } else if (event.semanaActual == 3) {
    yield Cargando();
      try {
             if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
        
      principalRepository.entrenamientoApi.actualizarCargaPro(event.carga, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie];
    yield ViendoCargayRepeticiones(event.carga,repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie]);
    }
    }
    
    }


   if (event is HeAcabadoDeActualizarRepeticiones)


 {
    
 if (event.semanaActual == 0) {
   yield Cargando();
   try {
          if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
     principalRepository.entrenamientoApi.actualizarRepeticionesPro(event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie];
    yield ViendoCargayRepeticiones(carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie]);
    }
    } else if (event.semanaActual == 1) {
      yield Cargando();
     try {
            if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
        principalRepository.entrenamientoApi.actualizarRepeticionesPro(event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie];
    yield ViendoCargayRepeticiones(carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie]);
    }
    } else if (event.semanaActual == 2) {
  yield Cargando();
  try {
         if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
     principalRepository.entrenamientoApi.actualizarRepeticionesPro(event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie];
    yield ViendoCargayRepeticiones(carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie]);
    }
    } else if (event.semanaActual == 3) {
      yield Cargando();
      try {
             if (!principalRepository.isUserPro) {
 
  await principalRepository.guardarPuntos(-1);
  }
        principalRepository.entrenamientoApi.actualizarRepeticionesPro(event.repeticiones, event.numeroDia, event.numeroEjercicio, event.semanaActual, event.serie);
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie];
    yield ViendoCargayRepeticiones(carga,event.repeticiones);} catch (error){
      yield OcurrioError(principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie],principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie]);
    }
    }
  
    }

    if (event is QuieroActualizarCarga)
  {
   
   yield ActualizandoCarga();
  
  }
  if (event is QuieroActualizarRepeticiones)
  {
   
   yield ActualizandoRepeticiones();
  
  }

  if (event is HeCancelado)


 {
    if (event.isComentario==false)
 {if (event.semanaActual == 0) {
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana1[event.serie];
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana1[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);
    } else if (event.semanaActual == 1) {
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana2[event.serie];
    String repeticiones = principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana2[event.serie];
   yield ViendoCargayRepeticiones(carga,repeticiones);
    } else if (event.semanaActual == 2) {
    String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana3[event.serie];
    String repeticiones=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana3[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);
    } else if (event.semanaActual == 3) {
      String carga=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntescarga.semana4[event.serie];
    String repeticiones= principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.apuntesreps.semana4[event.serie];
    yield ViendoCargayRepeticiones(carga,repeticiones);
    }
  
    } else { 
      if (event.semanaActual == 0)
      
    {String comentario=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana1;
    
    yield ViendoBotonComentarios(comentario);
    } else if (event.semanaActual == 1) 
      {String comentario=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana2;
    
    yield ViendoBotonComentarios(comentario);
    }
     else if (event.semanaActual == 2)   {String comentario=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana3;
    
    yield ViendoBotonComentarios(comentario);
    
    } else if (event.semanaActual == 3) {
        {String comentario=principalRepository.historialEntrenamiento.historialEntrenamiento[principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].patrones[event.numeroEjercicio].ejercicioSeleccionado.comentarios.semana4;
    
    yield ViendoBotonComentarios(comentario);
    }}


    }
    
    
    }


  
  }
}
