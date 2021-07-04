part of 'configuracionentrenamiento_bloc.dart';

abstract class ConfiguracionentrenamientoState extends Equatable {
  const ConfiguracionentrenamientoState();
}

class EligiendoConfiguracionentrenamiento extends ConfiguracionentrenamientoState {

  @override
  List<Object> get props => [];
}

class QuieroSeleccionar extends ConfiguracionentrenamientoState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int userFase;
  final double userBmi;
  final String sexo;
  final int numeroDiasEntrenamiento;
  final DateTime fechaInicio;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
   final List<dynamic> prioridad;
    final String volume;

 
  QuieroSeleccionar(this.mesocicloEntrenamiento,this.userFase,this.userBmi,this.sexo,this.numeroDiasEntrenamiento,this.fechaInicio,this.materialDisponible1,this.materialDisponible2,this.prioridad,this.volume);
  @override
  List<Object> get props => [mesocicloEntrenamiento,userFase,userBmi,sexo,numeroDiasEntrenamiento,fechaInicio];
}
class QuieroCrearMiMesociclo extends ConfiguracionentrenamientoState {
  
 final MesocicloEntrenamiento mesocicloEntrenamiento;
 final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
 
  final bool isTrainer;
   QuieroCrearMiMesociclo(this.mesocicloEntrenamiento,this.userFase,this.userBmi,this.sexo,this.materialDisponible1,this.materialDisponible2,{this.isTrainer=false});
  @override
  List<Object> get props => [mesocicloEntrenamiento,userFase,userBmi,sexo,materialDisponible1,materialDisponible2,isTrainer];
}


class NoQuieroSeleccionaroYaHeAcabado extends ConfiguracionentrenamientoState {
  final MesocicloEntrenamiento mesocicloEntrenamiento;


  NoQuieroSeleccionaroYaHeAcabado(this.mesocicloEntrenamiento,);
  @override
  List<Object> get props => [mesocicloEntrenamiento,];
}
class Error extends ConfiguracionentrenamientoState {
final String volume;
Error(this.volume);
  @override
  List<Object> get props => [volume];
}
class Error2 extends ConfiguracionentrenamientoState {
  final bool isFromCrear;
 
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final int numeroDias;
  final DateTime fechaInicio;
  final String volume;
  Error2({this.isFromCrear=false,this.materialDisponible1,this.materialDisponible2,this.prioridad,this.numeroDias,this.fechaInicio,this.volume});
  @override
  List<Object> get props => [materialDisponible1,materialDisponible2,prioridad,numeroDias,fechaInicio,volume];
}
class EsperandoACargarNuevoEntrenamiento extends ConfiguracionentrenamientoState {

  @override
  List<Object> get props => [];
}