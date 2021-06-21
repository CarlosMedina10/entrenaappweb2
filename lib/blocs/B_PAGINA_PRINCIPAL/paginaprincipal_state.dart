part of 'paginaprincipal_bloc.dart';

@immutable

abstract class PaginaprincipalState extends Equatable {
  const PaginaprincipalState();

  @override
  List<Object> get props => [];
}

// Tres estados:
// No inicializado -> splash screen
// Autenticado -> Home
// No autenticado -> Login

class CargandoDatos extends PaginaprincipalState{
 
 final bool inicializando;
  CargandoDatos(this.inicializando);
  @override
  List<Object> get props => [inicializando];
 
}
// class CargandoDatosNuevoMesociclo extends PaginaprincipalState{
//   final MesocicloEntrenamiento mesocicloEntrenamiento;

//   CargandoDatosNuevoMesociclo(this.mesocicloEntrenamiento);
//   @override
//   List<Object> get props => [mesocicloEntrenamiento];
 
// }
class UserPaginaPrincipal extends PaginaprincipalState {
  final bool isNewMesociclo;
  final bool diaCompletado;
  final bool isUserInit;
  final bool isChangedSemana;
  //Creo que no es necesario.
  final bool isSemanaCompletada;
  final bool isMesocicloCompletado;
  final bool isReevaluate;
  final bool userEliminandoCuenta;
  final bool userEliminaCuenta;
 

  const UserPaginaPrincipal(this.isNewMesociclo,this.diaCompletado,this.isUserInit,this.isChangedSemana,this.isSemanaCompletada,this.isMesocicloCompletado,{this.isReevaluate=false,this.userEliminandoCuenta=false,this.userEliminaCuenta=false});

  @override
  List<Object> get props => [isNewMesociclo,diaCompletado,isUserInit,isChangedSemana,isSemanaCompletada,isMesocicloCompletado,isReevaluate,userEliminandoCuenta];
  @override
  String toString() => 'UserPaginaPrincipal { Nuevo mesociclo:$isNewMesociclo, dia completado: $diaCompletado, Es un nuevo usuario: $isUserInit, cambio de semana:  $isChangedSemana, semana completada: $isSemanaCompletada, mesociclo completado: $isMesocicloCompletado , reevaluacion:  $isReevaluate , elimiar cuenta: $userEliminandoCuenta }';

  
}

class UserConfigurando extends PaginaprincipalState {
  final bool isUserInit;
  final double puntuacionFinal;
  final int userFase;
  final double userBMI;
  final String sexo;
  UserConfigurando(this.isUserInit,this.puntuacionFinal,this.userFase,this.userBMI,this.sexo);
  @override
  List<Object> get props => [isUserInit,puntuacionFinal,userFase,userBMI,sexo];

}
//   class UserViendoExplicacion extends PaginaprincipalState {}
//   class UserViendoExamen extends PaginaprincipalState {}
//   class UserViendoIMC extends PaginaprincipalState {}

//    class UserViendoPuntuacion extends PaginaprincipalState {
//  final double marks;
//  UserViendoPuntuacion(this.marks);
// @override
//    List<Object> get props => [marks];

//    }

class ErrorState extends PaginaprincipalState {
final bool errorDeConexion;
final bool errorDesconocidoObteniendoMesociclos;
final bool errorActualizandoUnMesociclo;
final bool errorActualizandoSemana;
final bool errorOtro;
final bool errorEliminandoCuenta;
  
  const ErrorState(this.errorDeConexion,this.errorDesconocidoObteniendoMesociclos,this.errorActualizandoUnMesociclo,this.errorActualizandoSemana,this.errorOtro,this.errorEliminandoCuenta);
 @override
  List<Object> get props => [errorDeConexion,errorDesconocidoObteniendoMesociclos,errorActualizandoUnMesociclo,errorActualizandoSemana,errorOtro,errorEliminandoCuenta];

}
class UserVisualizando extends PaginaprincipalState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  
  const UserVisualizando(this.mesocicloEntrenamiento);
 @override
  List<Object> get props => [mesocicloEntrenamiento];
 
}
class UserEditandoPerfil extends PaginaprincipalState {
  
  
  
  

 @override
  List<Object> get props => [];
 
}

class MostrandoSnackBar extends PaginaprincipalState {
  final String nombreSala,asuntoSala,nombreCreador,idCreador;
  final int costePuntos;
  final bool charlaPremium;
  final String permitirAudio;
final String permitirCamara;
final String fechaInicio;

  MostrandoSnackBar(this.nombreSala,this.asuntoSala,this.nombreCreador,this.idCreador,this.costePuntos,this.permitirAudio,this.permitirCamara,this.fechaInicio,{this.charlaPremium=false});
  
  
  

 @override
  List<Object> get props => [ nombreSala,asuntoSala,nombreCreador,idCreador,costePuntos,charlaPremium,permitirAudio,permitirCamara,fechaInicio];
 
}
class UserViendoPromo extends PaginaprincipalState {
 final bool isNewUser;
UserViendoPromo({this.isNewUser=false});

  
  
  

 @override
  List<Object> get props => [];
 
}
class UserViendoComunidad extends PaginaprincipalState {


@override
  List<Object> get props => [];
 
}
class UserViendoPromoPremium extends PaginaprincipalState {


@override
  List<Object> get props => [];
 
}

class UserViendoPromoRedesSociales extends PaginaprincipalState {


@override
  List<Object> get props => [];
 
}

class UserSalaChat extends PaginaprincipalState {
  final String nombreSala,asuntoSala,nombreCreador,idCreador;
  final int costePuntos;
   final bool charlaPremium;
   final String permitirAudio;
final String permitirCamara;
final String fechaInicio;

  UserSalaChat({this.nombreSala,this.asuntoSala,this.nombreCreador,this.idCreador,this.costePuntos,this.charlaPremium=false,this.permitirAudio,this.permitirCamara,this.fechaInicio});
  
  
  

 @override
  List<Object> get props => [nombreSala,asuntoSala,nombreCreador,idCreador,costePuntos,charlaPremium,fechaInicio];
 
}
class UserViendoEstadisticas extends PaginaprincipalState {
   final MesocicloEntrenamiento mesocicloEntrenamiento;
   final int semanaEntrenamiento;
   final int tipo;
  UserViendoEstadisticas(this.mesocicloEntrenamiento,this.semanaEntrenamiento,this.tipo);
  
  

 @override
  List<Object> get props => [mesocicloEntrenamiento,semanaEntrenamiento,tipo];
 
}


class UserVisualizandoHistorial extends PaginaprincipalState {
  
  final PrincipalRepository principalRepository;
  
  
UserVisualizandoHistorial(this.principalRepository);
 @override
  List<Object> get props => [principalRepository];
 
}

class UserViendoSiEsPro extends PaginaprincipalState {
  
  final bool isUserPro;
  
  
UserViendoSiEsPro(this.isUserPro);
 @override
  List<Object> get props => [isUserPro];
 
}