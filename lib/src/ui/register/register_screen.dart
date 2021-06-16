import 'package:entrenaapp/blocs/register_bloc/bloc.dart';
import 'package:entrenaapp/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../ui/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
   final UserRepository _userRepository;
   final bool isMobile;
   final bool isTablet;
  

  RegisterScreen(this._userRepository,this.isMobile,this.isTablet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xff0A183D),
      body: BlocProvider<RegisterBloc>(
        create: (context) => RegisterBloc(userRepository: _userRepository),
        child: RegisterPage( _userRepository,isMobile,isTablet),
      ),
    );
  }
}