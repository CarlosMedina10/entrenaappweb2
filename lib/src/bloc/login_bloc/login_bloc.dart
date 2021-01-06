import 'package:bloc/bloc.dart';
import '../../bloc/login_bloc/bloc.dart';
import '../../util/validators.dart';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import '../../repository/user_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserRepository _userRepository;

  //Constructor
  LoginBloc({@required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(LoginState.empty());

  @override
  Stream<Transition<LoginEvent, LoginState>> transformEvents(
    Stream<LoginEvent> events,
    TransitionFunction<LoginEvent, LoginState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged);
    });
    final debounceStream = events.where((event) {
      return (event is EmailChanged || event is PasswordChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    }
    if (event is PasswordChanged) {
      yield* _mapPasswordChangedToState(event.password);
    }
    if (event is LoginWithGooglePressed) {
      yield* _mapLoginWithGooglePressedToState();
    }
    if (event is LoginWithFbPressed) {
      yield* _mapLoginWithFbPressedToState();
    }
   if (event is LoginWithApplePressed) {
      yield* _mapLoginWithApplePressedToState();
    }
    if (event is LoginWithCredentialsPressed) {
      yield* _mapLoginWithCredentialsPressedToState(
          email: event.email, password: event.password);
    }
  }

  Stream<LoginState> _mapEmailChangedToState(String email) async* {
    yield state.update(isEmailValid: Validators.isValidEmail(email));
  }

  Stream<LoginState> _mapPasswordChangedToState(String password) async* {
    yield state.update(isPasswordValid: Validators.isValidPassword(password));
  }

  Stream<LoginState> _mapLoginWithGooglePressedToState() async* {
    try {
      await _userRepository.signInWithGoogle();
      yield LoginState.success();
    } catch (error) {
      print(error);
      yield LoginState.failure(error.toString());
    }
  }

  Stream<LoginState> _mapLoginWithFbPressedToState() async* {
    try {
      print('pres aqui');
      await _userRepository.signInWithFb();
      yield LoginState.success();
    } catch (error) {
      print(error);
      yield LoginState.failure(error.toString());
    }
  }

 Stream<LoginState> _mapLoginWithApplePressedToState() async* {
    try {
      await _userRepository.signInWithApple();
      yield LoginState.success();
    } catch (error) {
      print(error);
      yield LoginState.failure(error.toString());
    }
  }

  Stream<LoginState> _mapLoginWithCredentialsPressedToState(
      {String email, String password}) async* {
    yield LoginState.loading();
    try {
      await _userRepository.signInWithCredentials(email, password);
      yield LoginState.success();
    } catch (error) {
      print('$error');
      print('An error occur');
      print('$error');
      _userRepository.errorString = 'Inicio de sesión fallido.';
      if (error.toString().contains('ERROR_EMAIL_ALREADY_IN_USE')) {
        _userRepository.errorString = 'Este usuario ya esta registrado.';
      } else if (error.toString().contains('INVALID_EMAIL')) {
        _userRepository.errorString = 'Esta cuenta de correo no es valida';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
        _userRepository.errorString = 'Esta contraseña no es valida';
      } else if (error.toString().contains('USER_NOT_FOUND')) {
        _userRepository.errorString = 'Este usuario no esta registrado.';
      } else if (error.toString().contains('ERROR_WRONG_PASSWORD')) {
        _userRepository.errorString = 'Contaseña incorrecta';
      }

      yield LoginState.failure(error.toString());
    }
  }
}
