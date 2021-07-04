import 'dart:async';

import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


part 'paginaprincipal_event.dart';
part 'paginaprincipal_state.dart';

class PaginaprincipalBloc
    extends Bloc<PaginaprincipalEvent, PaginaprincipalState> {
  final PrincipalRepository _principalRepository;
  PaginaprincipalBloc(this._principalRepository) : super(CargandoDatos(true));

  @override
  void onTransition(
      Transition<PaginaprincipalEvent, PaginaprincipalState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<PaginaprincipalState> mapEventToState(
    PaginaprincipalEvent event,
  ) async* {
    if (event is UserStarted) {
     
     
      // await Future.delayed(Duration(seconds: 5));
     

      // bool existe=false;
    
    
     
     
      //   await _principalRepository.database.reference().child('tokenPushNotifications').keepSynced(true);
      //   await _principalRepository.obtenerTokensUser();

      //   _principalRepository.mobilesIdUser.forEach((element) async{
      //     if (element==build.androidId)
      //     {
      //       existe=true;
      //    _principalRepository.crearToken(await firebaseMessaging.getToken(),build.androidId);

      //     }
      //   });

      // //   String token= await firebaseMessaging.getToken();
      // //   print(token);
      //   if (existe==false)

      try {
        
        // await Purchases.setup('XHoVKMeTCfDDUFqSEQLHtOCFFCtyboZJ',
        //     appUserId: event.userID);
        // PurchaserInfo _purchaserInfo = await Purchases.getPurchaserInfo();
        //   print(_purchaserInfo.entitlements.active);
        // if (_purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_mensual") ||
        //     _purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_trimestral") ||
        //     _purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_semestral") ||
        //     _purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_anual") ||
        //     _purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_mensual_p_g") ||
        //     _purchaserInfo.entitlements.active
        //         .containsKey("suscripcion_anual_p_g")
        //         ) {
        //   _principalRepository.isUserPro = true;
        //   print('isPRO');
        // } else {
        //   _principalRepository.isUserPro = false;

        //   print('no es PRO');
        //   await _principalRepository.obtenerUserPro();
        //   if (_principalRepository.userPro == true)
        //     _principalRepository.actualizarUserPro(false);
        // }
        // _principalRepository.offerings = await Purchases.getOfferings();

        

       
   
       
        
        
        
        await _principalRepository.obtenerDatosDeLaBBDD();
      

        
         
       

           
         
            yield UserPaginaPrincipal(
                false,
                false,
                false,
                false,
                _principalRepository
                    .historialEntrenamiento
                    .historialEntrenamiento[_principalRepository
                            .historialEntrenamiento
                            .historialEntrenamiento
                            .length -
                        1]
                    .semanaCompletada,
                _principalRepository
                    .historialEntrenamiento
                    .historialEntrenamiento[_principalRepository
                            .historialEntrenamiento
                            .historialEntrenamiento
                            .length -
                        1]
                    .mesocicloCompletado);
          
        
      } catch (e) {
        print(e);

        if ((e.toString().contains('NetworkError')) ||
            (e.toString().contains('BILLING_UNAVAILABLE'))) {
     
        
          
          
          
          if (
              e.toString().contains('BILLING_UNAVAILABLE')) {
            
            await _principalRepository.obtenerDatosDeLaBBDD();

        

     {
              // await _principalRepository.obtenerPuntos();
              yield UserPaginaPrincipal(
                  false,
                  false,
                  false,
                  false,
                  _principalRepository
                      .historialEntrenamiento
                      .historialEntrenamiento[_principalRepository
                              .historialEntrenamiento
                              .historialEntrenamiento
                              .length -
                          1]
                      .semanaCompletada,
                  _principalRepository
                      .historialEntrenamiento
                      .historialEntrenamiento[_principalRepository
                              .historialEntrenamiento
                              .historialEntrenamiento
                              .length -
                          1]
                      .mesocicloCompletado);
            }
          } else
            yield ErrorState(true, false, false, false, false, false);
        } else {
          // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
          // final SharedPreferences prefs = await _prefs;
          // prefs.clear();
       
          // await _principalRepository.enviarCorreoErrorACarlos(
          //     e.toString(), _principalRepository.entrenamientoApi.userID);

          yield ErrorState(false, true, false, false, false, false);
        }
      }

//       }

//        catch (error) {
// yield ErrorState(true,false,false,false);
// print(error);

//       }

    }
    if (event is UserAAcabadoDeVerPromo) {
      if (event.isNewUser == false)
        yield UserPaginaPrincipal(
            false,
            false,
            false,
            false,
            _principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[_principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .semanaCompletada,
            _principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[_principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .mesocicloCompletado);
      else
        yield UserPaginaPrincipal(false, false, true, false, false, false);
    }
    if (event is UserQuiereIrASalaDeChats) {
    
      yield CargandoDatos(false);
      await Future.delayed(Duration(milliseconds: 100));
      yield UserSalaChat(
          nombreSala: event.nombreSala,
          asuntoSala: event.asuntoSala,
          nombreCreador: event.nombreCreador,
          idCreador: event.idCreador,
          costePuntos: event.costePuntos,
          charlaPremium: event.charlaPremium,
          permitirAudio: event.permitirAudio,
          permitirCamara: event.permitirCamara,
          fechaInicio: event.fechaInicio);
    }
    if (event is UserQuiereVerPro) {
      yield UserViendoSiEsPro(event.isUserPro);
    }
    if (event is UserQuiereReevaluarse) {
      yield UserPaginaPrincipal(false, false, false, false, false, false,
          isReevaluate: true);
    }
    if (event is UserQuiereIrAComunidad) {
      yield UserViendoComunidad();
    }
    if (event is UserVaAVerPromoPremium) {
      yield UserViendoPromoPremium();
    }
    if (event is UserVaAVerPromoRedesSociales) {
      yield UserViendoPromoRedesSociales();
    }
   


    if (event is UserNoEliminaCuenta ||
        event is UserQuiereVolverAPaginaPrincipal) {
      yield UserPaginaPrincipal(
        false,
        false,
        false,
        false,
        false,
        false,
      );
    }
    if (event is UserQuiereVerEstadisticas) {
      yield CargandoDatos(false);
      try {
        
        yield UserViendoEstadisticas(event.mesocicloEntrenamiento,
            event.semanaEntrenamiento, event.tipo);
      } catch (error) {
        yield ErrorState(false, false, false, false, true, false);
      }
    }
    if (event is UserQuiereEditarPerfil) {
      yield UserEditandoPerfil();
    }
    if (event is UserShowSnackBarNotification) {
      print(event.fechaInicio);
      yield MostrandoSnackBar(
        event.nombreSala,
        event.asuntoSala,
        event.nombreCreador,
        event.idCreador,
        event.costePuntos,
        event.permitirAudio,
        event.permitirCamara,
        event.fechaInicio,
        charlaPremium: event.charlaPremium,
      );
    }
    if (event is UserQuiereConfigurar) {
      // Habra que guardar el userFase en la BBDD
      if (_principalRepository.userFase == null || event.isReevaluate == true) {
        // Aqui es donde guardaremos en la BBDD el dato de la fase y del bmi
        _principalRepository.userBMI = event.bmi;
        _principalRepository.sexo = event.sexo;
        if (event.puntuacionExperiencia == 0) {
          _principalRepository.userFase = 0;
        } else if (event.puntuacionFinal < 5) {
          _principalRepository.userFase = 1;
        } else
          _principalRepository.userFase = 3;
      } else if (_principalRepository.userFase < 3) {
        _principalRepository.isSum = true;
        _principalRepository.userFase = _principalRepository.userFase + 1;
      } else
        _principalRepository.userFase = _principalRepository.userFase;

      yield UserConfigurando(
          event.isUserInit,
          event.puntuacionFinal,
          _principalRepository.userFase,
          _principalRepository.userBMI,
          _principalRepository.sexo);
    }

//      if (event is UserPasaAverExplicacion)

//      yield UserViendoExplicacion();
// if (event is UserPasaACalcularIMC)

//      yield UserViendoIMC();

//      if (event is UserHaciendoExamen)

//      yield UserViendoExamen();

//      if (event is UserHaAcabadoExamen)

//      yield UserViendoPuntuacion(event.marks);

    if (event is UserHaAcabadoDeConfigurarNuevoEntrenamiento) {
      // _principalRepository.entrenamientoApi.addMesociclo(event.mesocicloEntrenamiento);

      yield UserPaginaPrincipal(true, false, false, false, false, false);
    }

    if (event is UserNoQuiereConfigurarNuevoEntrenamiento) {
      if (_principalRepository.isSum == true) {
        //isSum es una variable de ayuda
        _principalRepository.isSum = false;
        _principalRepository.userFase = _principalRepository.userFase - 1;
      }
      yield UserPaginaPrincipal(false, false, false, false, false, false);
    }

    if (event is UserQuiereVisualizar) {
      // Aqui cambiaremos en la BBDD el valor de semana completada, en caso de que sea verdadero, lo pasaremos a false.
      if (_principalRepository
              .historialEntrenamiento
              .historialEntrenamiento[_principalRepository
                      .historialEntrenamiento.historialEntrenamiento.length -
                  1]
              .semanaCompletada ==
          true)
        _principalRepository
            .historialEntrenamiento
            .historialEntrenamiento[_principalRepository
                    .historialEntrenamiento.historialEntrenamiento.length -
                1]
            .semanaCompletada = false;
      final MesocicloEntrenamiento mesocicloActual = _principalRepository
          .historialEntrenamiento.historialEntrenamiento.last;
      yield UserVisualizando(mesocicloActual);
    }

    if (event is UserQuiereVisualizarHistorial)
      yield UserVisualizandoHistorial(_principalRepository);

    if (event is UserHaAcabadoDeVisualizarHistorial)
      yield UserPaginaPrincipal(false, false, false, false, false, false);
   
    if (event is UserHaAcabadoDeVisualizarEstadisticas)
      yield UserPaginaPrincipal(false, false, false, false, false, false);

    if (event is UserHaAcabadoDeVisualizar) {
      if (event.actualizarBBDD) {
        yield CargandoDatos(false);
        final MesocicloEntrenamiento mesocicloActual = _principalRepository
            .historialEntrenamiento.historialEntrenamiento.last;
        try {
          await _principalRepository.entrenamientoApi
              .actualizarEntrenamientoCompletado(mesocicloActual.id, mesocicloActual);
          yield UserPaginaPrincipal(false, event.entrenamientoCompletado, false,
              false, event.semanaCompletada, event.mesocicloCompletado);
        } catch (error) {
          yield ErrorState(false, false, true, false, false, false);
        }
      } else
        yield UserPaginaPrincipal(false, event.entrenamientoCompletado, false,
            false, event.semanaCompletada, event.mesocicloCompletado);
    }
    if (event is UserAcabaDeActualizarSemana) {
      yield CargandoDatos(false);
      try {
        await _principalRepository.entrenamientoApi
            .actualizarSemana(event.semanaEntrenamiento - 1);
        yield UserPaginaPrincipal(false, false, false, true, false, false);
      } catch (error) {
        yield ErrorState(false, false, false, true, false, false);
      }
      // Cargariamos la semana actual en la BBDD.
      //  _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual=event.semanaEntrenamiento-1;

    }
  }
}
