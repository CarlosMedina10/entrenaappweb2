import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'stepper_event.dart';
part 'stepper_state.dart';

class StepperBloc extends Bloc<StepperEvent, StepperState> {
  final int maxSteps;
  final int initial;

  StepperBloc({@required this.maxSteps,this.initial=0}) : super(StepperState(step: initial, maxSteps: maxSteps));



 

  @override
  Stream<StepperState> mapEventToState(StepperEvent event) async* {
    if (event is StepTapped) {
      yield state.copyWith(step: event.step);
    } else if (event is StepCancelled) {
      yield state.copyWith(
        step: state.step - 1 >= 0 ? state.step - 1 : 0,
      );
    } else if (event is StepContinue) {
      yield state.copyWith(
        // step: state.step + 1 < maxSteps ? state.step + 1 : 0,
        step: state.step +1,
      );
    }
  }
}
