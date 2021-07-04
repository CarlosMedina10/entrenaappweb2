import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/blocs/login_bloc/stepper_bloc/stepper_bloc.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:equatable/equatable.dart';

part 'seleccionej_event.dart';



class SeleccionejBloc extends Bloc<SeleccionejEvent, String> {
  
  final SeleccionRepository _ejRepository;
  final int numeroDiaEntrenamiento;
  final int numeroEj;
  final StepperBloc otherBloc;
  StreamSubscription otherBlocSubscription;


  SeleccionejBloc(this._ejRepository,this.numeroDiaEntrenamiento,this.numeroEj,this.otherBloc) : super(  _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones[numeroEj].ejercicioSeleccionado.nombre){
    
   otherBlocSubscription = otherBloc.listen((state) {
     
       
       print('evento2');
          
          add(ActualizarEvent(state.step));
         
          

        
        // Add events here to trigger changes in MyBloc.
    });
  }
  
 
// @override
//   void onTransition(Transition<SeleccionejEvent,String> transition) {
//     super.onTransition(transition);
//     print(transition);
//   }
  @override
  Stream<String> mapEventToState(
    SeleccionejEvent event,
  ) async* { 
    if (event is ChangeEvent) {
    
       _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones[event.ejercicio].ejercicios.forEach((ej){
         print(ej.nombre);
                          if (ej.nombre == event.ejericicioSeleccionado) {
                            
                              _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones[event.ejercicio].ejercicioSeleccionado=ej;
                             
                             
                          
                            
                          
                          }  else {print('mal');}}
                          
                          );

      



      yield   _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones[event.ejercicio].ejercicioSeleccionado.nombre;
    
    
  }
 if (event is ActualizarEvent) {
      
      //  _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones[numeroEj].ejercicios.forEach((ej){
       
                            
      //                         _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones[numeroEj].ejercicioSeleccionado=ej;
                             
      //                        print('${ _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[numeroDiaEntrenamiento].patrones[numeroEj].ejercicioSeleccionado.nombre}');
                          
                            
                          
      //                     }  );

      
          
      if (numeroEj <= _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones.length-1)   {

      yield   _ejRepository.mesocicloEntrenamiento.diasEntrenamiento[event.dia].patrones[numeroEj].ejercicioSeleccionado.nombre; }
      

    
    
  }
}

Future<void> close() {
    otherBlocSubscription.cancel();
    return super.close();
  }
}


