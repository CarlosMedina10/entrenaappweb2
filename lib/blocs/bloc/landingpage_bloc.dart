import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
part 'landingpage_event.dart';
part 'landingpage_state.dart';

class LandingpageBloc extends Bloc<LandingpageEvent, LandingpageState> {
  final bool isMobile;
  final bool isTablet;
  LandingpageBloc(this.isMobile,this.isTablet) : super( (isMobile || isTablet) ? IsMobileOrTablet(true,false,false,false) : IsDesktop(true,false,false,false));

  @override
  Stream<LandingpageState> mapEventToState(
    LandingpageEvent event,
  ) async* {


    if (event is WantIsDesktop)
    { print('${event.isOnPrincipal} oooo');
      print('${event.isOnConocenos} ooops');
     if (event.isOnPrincipal)
    yield IsDesktop(true,false,false,false);
      if (event.isOnConocenos)
      yield IsDesktop(false,true,false,false);
      if (event.isOnContactanos)
      yield IsDesktop(false,false,true,false);
      if (event.isOnLogin)
      yield IsDesktop(false,false,false,true);

     }
    
    if (event is WantMobileOrTablet)
    {
        yield IsMobileOrTablet(event.isOnPrincipal,event.isOnConocenos,event.isOnContactanos,event.isOnLogin);
    }
  }
}
