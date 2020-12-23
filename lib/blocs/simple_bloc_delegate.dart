import 'package:bloc/bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class SimpleBlocDelegate extends FormBlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}