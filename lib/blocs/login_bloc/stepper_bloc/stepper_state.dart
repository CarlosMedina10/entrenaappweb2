

part of 'stepper_bloc.dart';

class StepperState extends Equatable {
  final int step;
  final int maxSteps;

  StepperState({
    @required this.step,
    @required this.maxSteps,
  }) ;
 List<Object> get props => [step];
  
  StepperState copyWith({int step, int maxSteps}) {
    return StepperState(
      step: step ?? this.step,
      maxSteps: maxSteps ?? this.maxSteps,
    );
  }

  @override
  String toString() => 'StepperState { step: $step, maxSteps: $maxSteps }';
}

