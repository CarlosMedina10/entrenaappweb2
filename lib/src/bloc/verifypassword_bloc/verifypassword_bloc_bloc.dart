import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import '../../repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import '../../util/validators.dart';
part 'verifypassword_bloc_event.dart';
part 'verifypassword_bloc_state.dart';

class VerifypasswordBloc extends Bloc<VerifypasswordEvent, VerifypasswordState> {
  final UserRepository _userRepository;

  VerifypasswordBloc({@required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository, super(VerifypasswordState.empty());

  
@override
  Stream<Transition<VerifypasswordEvent, VerifypasswordState>> transformEvents(
    Stream<VerifypasswordEvent> events,
    TransitionFunction<VerifypasswordEvent, VerifypasswordState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return (event is! EmailChanged );
    });
    final debounceStream = events.where((event) {
      return (event is EmailChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }
  @override
  Stream<VerifypasswordState> mapEventToState(
    VerifypasswordEvent event,
  ) async* {
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    }
    if (event is Submitted) {
      yield* _mapFormSubmittedToState(event.email);
    }
  }
  Stream<VerifypasswordState> _mapEmailChangedToState(String email) async*{
    yield state.update(
      isEmailValid: Validators.isValidEmail(email)
    );
  }
  Stream<VerifypasswordState> _mapFormSubmittedToState(
    String email
  ) async*{
    yield VerifypasswordState.loading();
    try {
      await _userRepository.sendPaswordResetEmail(email);
      yield VerifypasswordState.success();
    } catch (error) {
    
      yield VerifypasswordState.failure();
    }
  }
  
}


