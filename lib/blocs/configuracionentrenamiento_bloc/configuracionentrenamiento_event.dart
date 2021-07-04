part of 'configuracionentrenamiento_bloc.dart';


abstract class ConfiguracionentrenamientoEvent extends Equatable {
  const ConfiguracionentrenamientoEvent();
  List<Object> get props => [];
}

class HeAcabadoCuestionario extends ConfiguracionentrenamientoEvent {
  //ira el modelo como evento
  final bool checkbox;
  final bool checkbox2;
  final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final int numeroDias;
  final DateTime fechaInicio;
  final String volume;
  


  HeAcabadoCuestionario(this.checkbox,this.checkbox2,this.userFase,this.userBmi,this.sexo,this.volume,{this.materialDisponible1,this.materialDisponible2,this.prioridad,this.numeroDias,this.fechaInicio,});
@override
   List<Object> get props => [checkbox,checkbox2,userFase,userBmi,sexo,materialDisponible1,materialDisponible2,prioridad,numeroDias,fechaInicio,volume]; 
   
   }
 class QuieroVerOtraEstructura extends ConfiguracionentrenamientoEvent {
  //ira el modelo como evento
  
  final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final int numeroDias;
  final DateTime fechaInicio;
   final String volume;
  
  


  QuieroVerOtraEstructura(this.userFase,this.userBmi,this.sexo,this.materialDisponible1,this.materialDisponible2,this.prioridad,this.numeroDias,this.fechaInicio,this.volume);
@override
   List<Object> get props => [userFase,userBmi,sexo,materialDisponible1,materialDisponible2,prioridad,numeroDias,volume]; 
   
   }
 class HeAcabadoDeEstructurar extends ConfiguracionentrenamientoEvent {
  final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final int numeroDias;
  final DateTime fechaInicio;
   final String volume;
  HeAcabadoDeEstructurar(this.userFase,this.userBmi,this.sexo,this.materialDisponible1,this.materialDisponible2,this.prioridad,this.numeroDias,this.fechaInicio,this.volume);
  
 @override
   List<Object> get props => [userFase,userBmi,sexo,materialDisponible1,materialDisponible2,prioridad,numeroDias,fechaInicio,volume]; 
   
   }  

class HeAcabadoDeCrear extends ConfiguracionentrenamientoEvent {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int userFase;
  final double userBmi;
  final String sexo;

  final String userID;
    final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  HeAcabadoDeCrear(this.mesocicloEntrenamiento,this.userFase,this.userBmi,this.sexo,this.userID,this.materialDisponible1,this.materialDisponible2);
  
 @override
   List<Object> get props => [mesocicloEntrenamiento,userFase,userBmi,sexo,userID,materialDisponible1,materialDisponible2]; 
   
   }  

class VolveraCuestionario extends ConfiguracionentrenamientoEvent {
    final String volume;
    VolveraCuestionario({this.volume});
  @override
  List<Object> get props => [volume]; 
   
   }