part of 'paginaprincipal_bloc.dart';

@immutable

abstract class PaginaprincipalEvent extends Equatable {
  const PaginaprincipalEvent();

  @override
  List<Object> get props => [];
}



class UserStarted extends PaginaprincipalEvent{
  final String userID;
  final idToken;
  final PushNotificationService pushNotificationService;
  UserStarted(this.userID,this.idToken,this.pushNotificationService);
  @override
   List<Object> get props => [userID,idToken,pushNotificationService];
}
class UserAAcabadoDeVerPromo extends PaginaprincipalEvent{
  final isNewUser;
  UserAAcabadoDeVerPromo(this.isNewUser);
  
  @override
   List<Object> get props => [];
}
class UserQuiereIrASalaDeChats extends PaginaprincipalEvent{
 final String nombreSala,asuntoSala,nombreCreador,idCreador;
 final int costePuntos;
 final bool charlaPremium;
 final String permitirAudio;
 final String permitirCamara;
 final String fechaInicio;

 UserQuiereIrASalaDeChats({this.nombreSala,this.asuntoSala,this.nombreCreador,this.idCreador,this.costePuntos,this.charlaPremium=false,this.permitirAudio,this.permitirCamara,this.fechaInicio});
  
  
  @override
   List<Object> get props => [nombreSala,asuntoSala,nombreCreador,idCreador,costePuntos,charlaPremium,permitirAudio,permitirCamara,fechaInicio];
}
class UserQuiereConfigurar extends PaginaprincipalEvent{
  final bool isUserInit;
  final double bmi;
  final double puntuacionFinal;
  final double puntuacionExperiencia;
  final String sexo;
  final bool isReevaluate;
  
  UserQuiereConfigurar(this.isUserInit,{this.bmi,this.puntuacionFinal,this.puntuacionExperiencia,this.sexo,this.isReevaluate});
  @override
   List<Object> get props => [isUserInit,bmi,puntuacionFinal,puntuacionExperiencia,sexo,isReevaluate];
}

class UserQuiereVisualizarHistorial extends PaginaprincipalEvent{
  
  
  UserQuiereVisualizarHistorial();
  @override
   List<Object> get props => [];
}
class UserShowSnackBarNotification extends PaginaprincipalEvent{
 final String nombreSala,asuntoSala,nombreCreador,idCreador;
 final int costePuntos;
final bool charlaPremium;
final String permitirAudio;
final String permitirCamara;
final String fechaInicio;

  
  UserShowSnackBarNotification(this.nombreSala,this.asuntoSala,this.nombreCreador,this.idCreador,this.costePuntos,this.permitirAudio,this.permitirCamara,this.fechaInicio,{this.charlaPremium=false});
  @override
   List<Object> get props => [nombreSala,asuntoSala,nombreCreador,idCreador,costePuntos,charlaPremium,permitirAudio,permitirCamara,fechaInicio];
}
class UserQuiereEliminarCuenta extends PaginaprincipalEvent{
  
  
  UserQuiereEliminarCuenta();
  @override
   List<Object> get props => [];
}
class UserQuiereIrAComunidad extends PaginaprincipalEvent{
  
  

  @override
   List<Object> get props => [];
}
class UserNoEliminaCuenta extends PaginaprincipalEvent{
  
  
  UserNoEliminaCuenta();
  @override
   List<Object> get props => [];
}
class UserEliminaCuenta extends PaginaprincipalEvent{
  
  
  UserEliminaCuenta();
  @override
   List<Object> get props => [];
}
class UserQuiereVerEstadisticas extends PaginaprincipalEvent{
   final MesocicloEntrenamiento mesocicloEntrenamiento;
   final int semanaEntrenamiento;
   final int tipo; 
   // si tipo 1 son globales si no individuales
  
  UserQuiereVerEstadisticas(this.mesocicloEntrenamiento,this.semanaEntrenamiento,this.tipo);
  @override
   List<Object> get props => [mesocicloEntrenamiento,semanaEntrenamiento,tipo];
}
class UserHaAcabadoDeVisualizarHistorial extends PaginaprincipalEvent{
UserHaAcabadoDeVisualizarHistorial();
@override
   List<Object> get props => []; 
   }

class UserQuiereSalirDeLaSalaDeChats extends PaginaprincipalEvent{

@override
   List<Object> get props => []; 
   }
class UserQuiereVerPro extends PaginaprincipalEvent{
final bool isUserPro;
UserQuiereVerPro(this.isUserPro);
@override
   List<Object> get props => [isUserPro]; 
   }


class UserHaAcabadoDeVisualizarEstadisticas extends PaginaprincipalEvent{
UserHaAcabadoDeVisualizarEstadisticas();
@override
   List<Object> get props => []; 
   }

class UserHaAcabadoDeConfigurarNuevoEntrenamiento extends PaginaprincipalEvent{
 

  


  UserHaAcabadoDeConfigurarNuevoEntrenamiento();
@override
   List<Object> get props => []; }

// Con esto queremos decir que el usuario sale de la pagina de configuracion sin añadir ningun nuevo mesociclo. 
  class UserNoQuiereConfigurarNuevoEntrenamiento extends PaginaprincipalEvent{
 
  


  UserNoQuiereConfigurarNuevoEntrenamiento();
@override
   List<Object> get props => []; }
   
class UserQuiereEditarPerfil extends PaginaprincipalEvent{
 
 
  


 
@override
   List<Object> get props => []; 
   }


class UserQuiereVisualizar extends PaginaprincipalEvent{
final int semanaEntrenamiento;
  


  UserQuiereVisualizar(this.semanaEntrenamiento);
@override
   List<Object> get props => [semanaEntrenamiento];

}
class UserHaAcabadoDeVisualizar extends PaginaprincipalEvent{
final bool entrenamientoCompletado;
final bool semanaCompletada;
final bool mesocicloCompletado;
final bool actualizarBBDD;
  


  UserHaAcabadoDeVisualizar(this.entrenamientoCompletado,this.semanaCompletada,this.mesocicloCompletado,this.actualizarBBDD);
@override
   List<Object> get props => [entrenamientoCompletado,semanaCompletada,mesocicloCompletado,actualizarBBDD];

}

class UserAcabaDeActualizarSemana extends PaginaprincipalEvent{
  final int semanaEntrenamiento;
  UserAcabaDeActualizarSemana(this.semanaEntrenamiento);
  @override
  List<Object> get props => [semanaEntrenamiento]; 
  }

class UserQuiereReevaluarse extends PaginaprincipalEvent{
 
 UserQuiereReevaluarse();
  @override
  List<Object> get props => []; 
  }

class UserQuiereVolverAPaginaPrincipal extends PaginaprincipalEvent{
 

  @override
  List<Object> get props => []; 
  }

  class UserVaAVerPromoPremium extends PaginaprincipalEvent{
 

  @override
  List<Object> get props => []; 
  }

  class UserVaAVerPromoRedesSociales extends PaginaprincipalEvent{
 

  @override
  List<Object> get props => []; 
  }