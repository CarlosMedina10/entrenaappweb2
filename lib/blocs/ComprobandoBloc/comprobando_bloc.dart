import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:entrenaapp/repository/user_repository.dart';
import 'package:equatable/equatable.dart';
part 'comprobando_event.dart';
part 'comprobando_state.dart';

class ComprobandoBloc extends Bloc<ComprobandoEvent, ComprobandoState> {
  UserRepository userRepository;
  ComprobandoBloc(this.userRepository) : super(PaginaEspera());

  @override
  Stream<ComprobandoState> mapEventToState(
    ComprobandoEvent event,
  ) async* {
  
        
   
   if (event is Espera)
    { 
  await userRepository.cargandoDatos();
 
   await userRepository.verSiEsEntrenador();
    
   
    print('${userRepository.esEntrenador} aaaaaaaaaaaaaaaaaa');
      
      if (userRepository.esEntrenador==true) 
        yield EsEntrenador(); else yield NoEsEntrenador() ;
    }
  }
}
