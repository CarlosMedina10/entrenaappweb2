part of 'verifypassword_bloc_bloc.dart';

class VerifypasswordState {
  final bool isEmailValid;

  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid ;

  VerifypasswordState({
    @required this.isEmailValid,
    
    @required this.isSubmitting,
    @required this.isSuccess,
    @required this.isFailure
  });

  // Estados:
  // Empty - vacio
  factory VerifypasswordState.empty(){
    return VerifypasswordState(
      isEmailValid: true,
      
      isSubmitting: false,
      isSuccess: false,
      isFailure: false
    );
  }

  // Loading - cargando
  factory VerifypasswordState.loading(){
    return VerifypasswordState(
      isEmailValid: true,
      
      isSubmitting: true,
      isSuccess: false,
      isFailure: false
    );
  }

  // Failure - falla
  factory VerifypasswordState.failure(){
    return VerifypasswordState(
      isEmailValid: true,
     
      isSubmitting: false,
      isSuccess: false,
      isFailure: true
    );
  }

  // Sucess - exito
  factory VerifypasswordState.success(){
    return VerifypasswordState(
      isEmailValid: true,
     
      isSubmitting: false,
      isSuccess: true,
      isFailure: false
    );
  }

  // Update y copywith
  VerifypasswordState copyWith({
    bool isEmailValid,
 
    bool isSubmitting,
    bool isSucess,
    bool isFailure
  }){
    return VerifypasswordState(
      isEmailValid: isEmailValid ?? this.isEmailValid,
      
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSucess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure
    );
  }

  VerifypasswordState update({
    bool isEmailValid,
  
  }){
    return copyWith(
      isEmailValid: isEmailValid,
     
     
      isSubmitting: false,
      isSucess: false,
      isFailure: false
    );
  }

  @override
  String toString() {
    return ''' VerifypasswordState{
      isEmailValid: $isEmailValid,
     
      isSubmitting: $isSubmitting,
      isSuccess: $isSuccess,
      isFailure: $isFailure
    }
    ''';
  }
}
