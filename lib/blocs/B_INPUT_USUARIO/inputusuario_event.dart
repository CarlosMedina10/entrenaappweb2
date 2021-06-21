part of 'inputusuario_bloc.dart';

abstract class InputusuarioEvent extends Equatable {
  const InputusuarioEvent();
  @override
   List<Object> get props => []; 
}
class Inicializar extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;

  


 Inicializar(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie]; 
   
   }


   class QuieroActualizarComentario extends InputusuarioEvent {

 final String text;
  


 QuieroActualizarComentario(this.text);
@override
   List<Object> get props => [text]; 
   
   } 

  class QuieroActualizar extends InputusuarioEvent {


  


 QuieroActualizar();
@override
   List<Object> get props => []; 
   
   } 



   class QuieroActualizarCarga extends InputusuarioEvent {
  

  


 QuieroActualizarCarga();
@override
   List<Object> get props => []; 
   
   } 
class QuieroActualizarRepeticiones extends InputusuarioEvent {
  

  


 QuieroActualizarRepeticiones();
@override
   List<Object> get props => []; 
   
   } 

  class HeAcabadoDeActualizarComentario extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;

  final String comentario;
  

  


 HeAcabadoDeActualizarComentario(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.comentario);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,comentario]; 
   
   } 
  

   class HeAcabadoDeActualizar extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;
  final String carga;
  final String repeticiones;

  


 HeAcabadoDeActualizar(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie,this.carga,this.repeticiones);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie,carga,repeticiones]; 
   
   } 

   class HeAcabadoDeActualizarCarga extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;
  final String carga;
 

  


 HeAcabadoDeActualizarCarga(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie,this.carga);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie,carga]; 
   
   } 

      class HeAcabadoDeActualizarRepeticiones extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;
  final String repeticiones;
 

  


 HeAcabadoDeActualizarRepeticiones(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie,this.repeticiones);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie,repeticiones]; 
   
   } 

   class HeCancelado extends InputusuarioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;
  final bool isComentario;
 
 

  


 HeCancelado(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie,this.isComentario);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie,isComentario]; 
   
   } 