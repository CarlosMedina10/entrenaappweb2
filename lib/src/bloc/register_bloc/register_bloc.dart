import 'package:bloc/bloc.dart';
import '../register_bloc/bloc.dart';
import '../../repository/user_repository.dart';
import '../../util/validators.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepository _userRepository;

  RegisterBloc({@required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository, super(RegisterState.empty());

 

  @override
  Stream<Transition<RegisterEvent, RegisterState>> transformEvents(
    Stream<RegisterEvent> events,
    TransitionFunction<RegisterEvent, RegisterState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged && event is! VerifyPassword);
    });
    final debounceStream = events.where((event) {
      return (event is EmailChanged || event is PasswordChanged || event is VerifyPassword);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }
  
  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    // Tres casos
    // Si el evento es EmailChanged
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    }
    // Si el evento es PasswordChanged
    if (event is PasswordChanged) {
      yield* _mapPasswordChangedToState(event.password);
    }
    // Si el evento es verifyPassword
    if (event is VerifyPassword) {
      yield* _mapVerifyPasswordToState(event.password,event.verifyPassword);
    }
    // Si el evento es Submitted
    if (event is Submitted) {
      yield* _mapFormSubmittedToState(event.email, event.password);
    }
  }

  Stream<RegisterState> _mapEmailChangedToState(String email) async*{
    yield state.update(
      isEmailValid: Validators.isValidEmail(email)
    );
  }

  Stream<RegisterState> _mapPasswordChangedToState(String password) async*{
    yield state.update(
      isPasswordValid: Validators.isValidPassword(password)
    );
  }
  Stream<RegisterState> _mapVerifyPasswordToState(String password,String verifyPassword) async*{
    yield state.update(
      isVerify: Validators.isVerify(password, verifyPassword)
    );
  }

  Stream<RegisterState> _mapFormSubmittedToState(
    String email, String password
  ) async*{
    yield RegisterState.loading();
    try {
      await _userRepository.signUp(email, password);
      yield RegisterState.success();
    } catch (error) {
      print(error);
       _userRepository.errorString = 'Registro fallido.';
      if (error.toString().contains('ERROR_EMAIL_ALREADY_IN_USE')) {
         _userRepository.errorString = 'Este usuario ya esta registrado.';
      } else if (error.toString().contains('INVALID_EMAIL')) {
         _userRepository.errorString = 'Esta cuenta de correo no es valida';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
         _userRepository.errorString = 'Esta contraseña no es valida';
      } else if (error.toString().contains('USER_NOT_FOUND')) {
         _userRepository.errorString = 'Este usuario no esta registrado.';
      }  else if (error.toString().contains('ERROR_WRONG_PASSWORD')) {
         _userRepository.errorString = 'Contaseña incorrecta';
      }
      yield RegisterState.failure();
    }
  }
  
}
