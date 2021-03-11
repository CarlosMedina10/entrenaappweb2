import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

        yield PaginaEspera(isFromIscribiendose: true);
        
        userRepository.comprobandoPremium();
await Future.delayed(Duration(seconds: 2));
 if (userRepository.isUserPro == null) {
         String userID =  userRepository.getUserID();
                 
               await userRepository.darPremiumGratuito(userID);
                  userRepository.inscribirseEnElSorteo(event.nombreUsuario);
       yield YaSeHaInscrito();
       }
       else {
       
                
                  userRepository.inscribirseEnElSorteo(event.nombreUsuario);
          yield YaSeHaInscrito(isPremium: true);
         yield ErrorState(isPremium: true);
       
         }
      } catch (error) {
      
        yield ErrorState();
      }

        
    }
   if (event is Espera)
    { 

      await userRepository.comprobandoInscripcion();
       Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
       var prefs = await _prefs;
       prefs.setString('userID', userRepository.getUserID());
   
    
      await Future.delayed(Duration(seconds: 2));
      if (userRepository.haParticipado==true) 
        yield YaSeHaInscrito(); else yield NoSeHaInscritoAun() ;
    }
  }
}
