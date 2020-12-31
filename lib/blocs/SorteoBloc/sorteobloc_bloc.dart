import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaappweb/src/repository/user_repository.dart';
import 'package:equatable/equatable.dart';

part 'sorteobloc_event.dart';
part 'sorteobloc_state.dart';

class SorteoblocBloc extends Bloc<SorteoblocEvent, SorteoblocState> {
  UserRepository userRepository;
  SorteoblocBloc(this.userRepository) : super(PaginaEspera());

  @override
  Stream<SorteoblocState> mapEventToState(
    SorteoblocEvent event,
  ) async* {
   if (event is VaAInscribirse)
    {
      try{
         String userID =  userRepository.getUserID();
                  print(userID);
               await userRepository.darPremiumGratuito(userID);
                  userRepository.inscribirseEnElSorteo(event.nombreUsuario);
       yield YaSeHaInscrito();
      } catch (error) {
        yield ErrorState();
      }

        
    }
   if (event is Espera)
    { 
      await userRepository.comprobandoInscripcion();
      await Future.delayed(Duration(seconds: 3));
      if (userRepository.haParticipado==true) 
        yield YaSeHaInscrito(); else yield NoSeHaInscritoAun() ;
    }
  }
}
