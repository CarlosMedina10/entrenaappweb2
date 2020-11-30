import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/verifypassword_bloc/verifypassword_bloc_bloc.dart';
import '../repository/user_repository.dart';
import './changePassword.dart';

class VerifypasswordScreen extends StatelessWidget {
  final UserRepository _userRepository;

  VerifypasswordScreen({Key key, @required UserRepository userRepository})
    :assert(userRepository != null),
    _userRepository = userRepository,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: BlocProvider<VerifypasswordBloc>(
          create: (context) => VerifypasswordBloc(userRepository: _userRepository),
          child: ResetPasswordPage(),
        ),
      ),
    );
  }
}