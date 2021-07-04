import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:entrenaapp/models/Diadeentrenamiento.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:equatable/equatable.dart';



part 'mesociclo_bloc_event.dart';
part 'mesociclo_bloc_state.dart';

class MesocicloBlocBloc extends Bloc<MesocicloBlocEvent, MesocicloBlocState> {
  final PrincipalRepository _principalRepository;
  MesocicloBlocBloc(this._principalRepository) : super(UserEligiendoEntrenamiento(_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual));
  

  @override
  Stream<MesocicloBlocState> mapEventToState(
    MesocicloBlocEvent event,
  ) async* {
 
    
    
    
    
    
    
    
    if (event is UserQuiereVisualizarEntrenamiento)
    yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento,event.entrenamientoCompletado,false,false);
    
    if( event is UserQuiereEditarMesociclo)
    yield UserEditandoMesociclo(event.mesocicloEntrenamiento);
    
    if (event is UserHaMarcadadoCheckBox)
    {
     _principalRepository.actualizarBBDD= true;
if (event.semanaEntrenamiento == 0) {
   
   
    _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].entrenamientoCompletado.semana1=event.entrenamientoCompletado;
     //Comprobamos si todos los entrenamientos de esa semana se han completado:
     //1º Vemos numero de dias 
     
      int numeroDiasMesociclo=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.length;
     // 2º Comprobamos numero de dias completados de esa semana
     _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.forEach((diaE){
       if (diaE.entrenamientoCompletado.semana1==true){
         _principalRepository.sumaDiasCompletados=_principalRepository.sumaDiasCompletados+1;
       }
     });
     // 3º Comprobamos si el numero de dias completados de esa semana es igual al numero de dias de entrenamiento y en caso afirmativo actualizamos semana
     if (_principalRepository.sumaDiasCompletados==numeroDiasMesociclo) {
       _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual=1;
       // reseteamos a 0 variable de conteo de dias completados del repositorio.
       _principalRepository.sumaDiasCompletados=0;
      _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaCompletada=true;
     } else _principalRepository.sumaDiasCompletados=0;
    
    } 
    
    
    
    
    
    
    else if (event.semanaEntrenamiento == 1) {
     _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].entrenamientoCompletado.semana2=event.entrenamientoCompletado;
     //Comprobamos si todos los entrenamientos de esa semana se han completado:
     //1º Vemos numero de dias 
     
      int numeroDiasMesociclo=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.length;
     // 2º Comprobamos numero de dias completados de esa semana
     _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.forEach((diaE){
       if (diaE.entrenamientoCompletado.semana2==true){
         _principalRepository.sumaDiasCompletados=_principalRepository.sumaDiasCompletados+1;
       }
     });
     // 3º Comprobamos si el numero de dias completados de esa semana es igual al numero de dias de entrenamiento y en caso afirmativo actualizamos semana
     if (_principalRepository.sumaDiasCompletados==numeroDiasMesociclo) {
       _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual=2;

       // reseteamos a 0 variable de conteo de dias completados del repositorio.
       _principalRepository.sumaDiasCompletados=0;
       _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaCompletada=true;
     } else _principalRepository.sumaDiasCompletados=0;
     
    } else if (event.semanaEntrenamiento == 2) {
      _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].entrenamientoCompletado.semana3=event.entrenamientoCompletado;
    
//Comprobamos si todos los entrenamientos de esa semana se han completado:
     //1º Vemos numero de dias 
     
      int numeroDiasMesociclo=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.length;
     // 2º Comprobamos numero de dias completados de esa semana
     _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.forEach((diaE){
       if (diaE.entrenamientoCompletado.semana3==true){
         _principalRepository.sumaDiasCompletados=_principalRepository.sumaDiasCompletados+1;
       }
     });
     // 3º Comprobamos si el numero de dias completados de esa semana es igual al numero de dias de entrenamiento y en caso afirmativo actualizamos semana
     if (_principalRepository.sumaDiasCompletados==numeroDiasMesociclo) {
       _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual=3;
       // reseteamos a 0 variable de conteo de dias completados del repositorio.
       _principalRepository.sumaDiasCompletados=0;
        _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaCompletada=true;
     } else _principalRepository.sumaDiasCompletados=0;




    } else if (event.semanaEntrenamiento == 3) {
      _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento[event.numeroDia].entrenamientoCompletado.semana4=event.entrenamientoCompletado;
    //Comprobamos si todos los entrenamientos de esa semana se han completado:
     //1º Vemos numero de dias 
     
      int numeroDiasMesociclo=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.length;
     // 2º Comprobamos numero de dias completados de esa semana
     _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].diasEntrenamiento.forEach((diaE){
       if (diaE.entrenamientoCompletado.semana4==true){
         _principalRepository.sumaDiasCompletados=_principalRepository.sumaDiasCompletados+1;
       }
     });
     // 3º Comprobamos si el numero de dias completados de esa semana es igual al numero de dias de entrenamiento y en caso afirmativo pasamos a estado de entrenamiento acabado!
     if (_principalRepository.sumaDiasCompletados==numeroDiasMesociclo) {
      //  _principalRepository.semanaActual=0;
       // reseteamos a 0 variable de conteo de dias completados del repositorio.
       _principalRepository.sumaDiasCompletados=0;
        _principalRepository.mesocicloCompletado=true;
     } else {_principalRepository.sumaDiasCompletados=0;
      _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].mesocicloCompletado=false;}
    }
      
      if (event.entrenamientoCompletado==true) {
       { _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].numeroDiasCompletados=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].numeroDiasCompletados + 1 ;
        //Si el mesociclo esta completado, para no devolver de nuevo el cartelito de mesociclo completado
        if (_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].mesocicloCompletado==true)
       
       
       yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento, event.entrenamientoCompletado,false,false);
       
        
        else if (_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaCompletada==true)
      { 
        


        yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento, event.entrenamientoCompletado,true,false);}

        else if (_principalRepository.mesocicloCompletado==true) 
      { 
        _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].mesocicloCompletado=true;
        _principalRepository.mesocicloCompletado=false;
        yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento, event.entrenamientoCompletado,false,true);
      } else yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento, event.entrenamientoCompletado,false,false);
       
      }}
      else {
      _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].numeroDiasCompletados=_principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].numeroDiasCompletados - 1 ;
      yield UserVisualizandoEntrenamiento(event.numeroDia, event.semanaEntrenamiento,event.diaEntrenamiento, event.entrenamientoCompletado,false,false);
      }
      
     }
    
    
    if (event is UserQuiereCompartir)
    yield UserCompartiendo(event.numeroDia,event.semanaEntrenamiento,event.diaEntrenamiento,event.entrenamientoCompletado,event.isFromInstagram);
    
    
    if (event is UserHaAcabadoDeEditarMesociclo)
{ 
    
   await _principalRepository.entrenamientoApi.actualizarMesociclo(event.mesocicloEntrenamiento.id, event.mesocicloEntrenamiento);
     await _principalRepository.obtenerUltimoMesociclo();

          


    
    yield UserEligiendoEntrenamiento(event.mesocicloEntrenamiento.semanaActual);
}
    
    
    
   if (event is UserQuiereCambiarSemana)
    yield UserEligiendoEntrenamiento(event.semanaEntrenamiento);
    if (event is UserQuiereVolveraElegirEntrenamiento){
  
    if (event.actualizarBBDD) {
    _principalRepository.actualizarBBDD= false;
    final MesocicloEntrenamiento  mesocicloActual = _principalRepository.historialEntrenamiento.historialEntrenamiento.last;
   await _principalRepository.entrenamientoApi.actualizarMesociclo(mesocicloActual.id, mesocicloActual);
    yield UserEligiendoEntrenamiento(event.semanaEntrenamiento);} else 
   yield UserEligiendoEntrenamiento(event.semanaEntrenamiento);
  }
  }
}
