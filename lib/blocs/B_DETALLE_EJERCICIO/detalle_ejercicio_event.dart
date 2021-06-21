
part of 'detalle_ejercicio_bloc.dart';

abstract class DetalleEjercicioEvent extends Equatable {
  const DetalleEjercicioEvent();
}
class ActualizarSerie extends DetalleEjercicioEvent {
  

final int serie;
final bool parar;
  ActualizarSerie(this.serie,{this.parar=false});

  @override
  List<Object> get props => [serie,parar];


}

class Parar extends DetalleEjercicioEvent {
  

final int serie;

  Parar(this.serie);

  @override
  List<Object> get props => [serie];


}
 class HeAcabadoDeActualizar extends DetalleEjercicioEvent {
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;
  final int serie;
  final String carga;
  final String repeticiones;
  final bool parar;
  

  


 HeAcabadoDeActualizar(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.serie,this.carga,this.repeticiones,{this.parar=false});
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,serie,carga,repeticiones,parar]; 
   
   } 

class HeAcabadoDeActualizarComentario extends DetalleEjercicioEvent{
  final int numeroDia;
  final int numeroEjercicio;
  final int semanaActual;

  final String comentario;
  

  


 HeAcabadoDeActualizarComentario(this.numeroDia,this.numeroEjercicio,this.semanaActual,this.comentario);
@override
   List<Object> get props => [numeroDia,numeroEjercicio,semanaActual,comentario]; 
   
   } 
  
 class QuieroActualizarComentario extends DetalleEjercicioEvent {


  


 QuieroActualizarComentario();
@override
   List<Object> get props => []; 
   
   } 

class QuieroCambiarEjercicio extends DetalleEjercicioEvent {

   int numeroEjercicio;
   int numeroDia;
  final Ejercicio newEjercicio;


 QuieroCambiarEjercicio(this.numeroEjercicio,this.numeroDia,this.newEjercicio);

 

@override
   List<Object> get props => [numeroEjercicio,numeroDia,newEjercicio]; 
   
   } 
   class QuieroActualizar extends DetalleEjercicioEvent {
 final int serie;
 final bool parar;
  


 QuieroActualizar(this.serie,this.parar);
@override
   List<Object> get props => [serie,parar]; 
   
   } 

    class HeCancelado extends DetalleEjercicioEvent {

  final int serie;
  final bool parar;

 
 

  


 HeCancelado(this.serie,{this.parar=false});
@override
   List<Object> get props => [serie,parar]; 
   
   } 

   