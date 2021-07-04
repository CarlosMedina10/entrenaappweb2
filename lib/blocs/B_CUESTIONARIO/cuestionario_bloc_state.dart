
part of 'cuestionario_bloc_bloc.dart';

abstract class CuestionarioBlocState extends Equatable{
  // Definir variables
 
      
      }



      class CuestionarioEstado extends CuestionarioBlocState {
         final bool checkBox;
  final bool checkBox2;
  final bool isSucess;
  final bool isFailure;
  final int numeroDiasEntrenamiento;
  final int materialDisponible;
  final bool showInfo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  final List<dynamic> prioridad;
  final DateTime fechaInicio;
  final bool fromPayment;
  final bool errorFecha;

  

 

 

  // Constructor
  CuestionarioEstado(
       this.checkBox,
        this.checkBox2,
       this.isSucess,
       this.isFailure,
       this.numeroDiasEntrenamiento,
       this.materialDisponible,
       this.showInfo,
       {this.materialDisponible1,
       this.materialDisponible2,this.prioridad,this.fechaInicio,this.fromPayment=false,this.errorFecha=false,}
       
      );
  @override
  List<Object> get props => [checkBox,checkBox2,isSucess,isFailure,numeroDiasEntrenamiento,materialDisponible,showInfo,materialDisponible1,materialDisponible2,prioridad,fechaInicio,fromPayment,errorFecha];
}
      class ProcesandoPago extends CuestionarioBlocState {
  @override
  List<Object> get props => [];
}
  