import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  print(userRepository.imgUrl);
   await userRepository.verSiEsEntrenador();
    
   
    
      await Future.delayed(Duration(seconds: 2));
      if (userRepository.esEntrenador==true) 
        yield EsEntrenador(); else yield NoEsEntrenador() ;
    }
  }
}
