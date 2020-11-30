

import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaappweb/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
// import './signup.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'dart:math';
// import './welcomePage.dart';

// import '../models/http_exception.dart';
// import './inicio.dart';
// import './estructuracion_entrenamiento.dart';
// import './principal.dart';
// import './semana_entrenamiento.dart';
// import 'color_loader_3.dart';
// import './ressetPassword.dart';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import './bezierContainer.dart';
import '../../repository/user_repository.dart';
import '../../ui/login/google_login_button.dart';
import '../../ui/login/facebook_login_button.dart';
import '../../bloc/login_bloc/bloc.dart';
import '../../bloc/authentication_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../ui/login/login_button.dart';
import '../../ui/login/create_account_button.dart';
import '../../ui/login/change_password_button.dart';


class LoginPage extends StatefulWidget {
  static const routename = '/loginPage';

  final UserRepository _userRepository;

  LoginPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isTap = false;
  LoginBloc _loginBloc;

  UserRepository get _userRepository => widget._userRepository;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  Widget _divider() {
    return Container(
      margin: (MediaQuery.of(context).size.height > 580)
          ? EdgeInsets.only(top: 5, bottom: 15)
          : EdgeInsets.only(bottom: 10),
      // EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'o',
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
      
      height: MediaQuery.of(context).size.height*0.125,
      width: MediaQuery.of(context).size.width*0.6,
      // padding: EdgeInsets.only(
      //     right: MediaQuery.of(context).size.width * 0.2,
      //     left: MediaQuery.of(context).size.width * 0.1),
      child: new Image.asset('assets/images/LogoEntrenaAppFondoNegro.png'),
    );
    // return Container(
    //   // margin: EdgeInsets.all(50),
    //   alignment: Alignment.bottomLeft,
    //   child: RichText(
    //     textAlign: TextAlign.center,
    //     text: TextSpan(
    //         text: 'E',
    //         style: GoogleFonts.portLligatSans(
    //           textStyle: Theme.of(context).textTheme.display1,
    //           fontSize: (MediaQuery.of(context).size.height>580) ? 50 :  40 ,
    //           fontWeight: FontWeight.w700,
    //           color: Color(0xffe46b10),
    //         ),
    //         children: [
    //           TextSpan(
    //             text: 'ntrena',
    //             style: TextStyle(color: Colors.white, fontSize:(MediaQuery.of(context).size.height>600) ? 50  : 40 , ),
    //           ),
    //           TextSpan(
    //             text: 'APP',
    //             style: TextStyle(color: Color(0xffe46b10), fontSize: (MediaQuery.of(context).size.height>600) ? 50  : 40 ),
    //           ),
    //         ]),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size.height}');
    print('${MediaQuery.of(context).size.width}');

    double pulgadas = sqrt((MediaQuery.of(context).size.height *
            MediaQuery.of(context).size.height) *
        (MediaQuery.of(context).size.width *
            MediaQuery.of(context).size.width));
    double altura = MediaQuery.of(context).size.height;
    print('$pulgadas');

    return BlocListener<LoginBloc, LoginState>(listener: (context, state) {
      // tres casos, tres if:
      if (state.isFailure) {
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (_userRepository.errorString != null)
                      ? Text('${_userRepository.errorString}')
                      : Text('No se ha podido iniciar sesión'),
                  Icon(Icons.error)
                ],
              ),
              backgroundColor: Colors.red,
            ),
          );
      }
      if (state.isSubmitting) {
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Iniciando sesión... '),
                CircularProgressIndicator(),
              ],
            ),
          ));
      }
      if (state.isSuccess) {
        BlocProvider.of<AuthenticationBloc>(context).add(LoggedIn());
      }
    }, child: BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Color.fromRGBO(3, 9, 40, 1),
            body: new GestureDetector(
                onTap: () {
                  // call this method here to hide soft keyboard
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Center(
                  child: SingleChildScrollView(
                      child: Container(
                          alignment: Alignment.center,
                          
                    // color: Color.fromRGBO(3, 9, 40, 0.65),
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height:MediaQuery.of(context).size.height*0.05),
                        Container(
                          alignment: Alignment.center,
                          
                        
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Expanded(
                              //   flex: 6,
                              //   child: SizedBox(),
                              // ),
                              _title(),
                              SizedBox(
                               
                                height: (altura > 600) ? 30 : 10,
                              ),
                              Container(
                               
                                width: 
                                MediaQuery.of(context).size.width*0.25,
                                child: Form(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                       
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            (MediaQuery.of(context).size.height >
                                                    550)
                                                ? Text(
                                                    'Correo',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                : Container(),
                                            (MediaQuery.of(context).size.height >
                                                    550)
                                                ? SizedBox(
                                                    height: 10,
                                                  )
                                                : Container(),
                                            TextFormField(
                                              controller: _emailController,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      new EdgeInsets.symmetric(
                                                          vertical: 0,
                                                          horizontal: 0),
                                                  labelText: (MediaQuery.of(context)
                                                              .size
                                                              .height >
                                                          550)
                                                      ? ''
                                                      : 'Correo',
                                                  border: InputBorder.none,
                                                  errorStyle:
                                                      TextStyle(fontSize: 10),
                                                  fillColor: Color(0xfff3f3f4),
                                                  filled: true),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              autovalidate: (MediaQuery.of(context)
                                                          .size
                                                          .height >
                                                      500)
                                                  ? true
                                                  : false,
                                              autocorrect: false,
                                              validator: (_) {
                                                return !state.isEmailValid
                                                    ? 'Correo Invalido'
                                                    : null;
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            (MediaQuery.of(context).size.height >
                                                    550)
                                                ? Text(
                                                    'Contraseña',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                : Container(),
                                            (MediaQuery.of(context).size.height >
                                                    550)
                                                ? SizedBox(
                                                    height: 10,
                                                  )
                                                : Container(),
                                            TextFormField(
                                              controller: _passwordController,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      new EdgeInsets.symmetric(
                                                          vertical: 0,
                                                          horizontal: 0),
                                                  labelText: (MediaQuery.of(context)
                                                              .size
                                                              .height >
                                                          550)
                                                      ? ''
                                                      : 'Contraseña',
                                                  border: InputBorder.none,
                                                  errorStyle:
                                                      TextStyle(fontSize: 10),
                                                  suffixIcon: (isTap == false)
                                                      ? InkWell(
                                                          child: Icon(
                                                            CommunityMaterialIcons
                                                                .eye,
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              isTap = true;
                                                            });
                                                          },
                                                        )
                                                      : InkWell(
                                                          child: Icon(
                                                            CommunityMaterialIcons
                                                                .eye_off,
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              isTap = false;
                                                            });
                                                          },
                                                        ),
                                                  fillColor: Color(0xfff3f3f4),
                                                  filled: true),
                                              obscureText:
                                                  (isTap == true) ? false : true,
                                              autovalidate: true,
                                              autocorrect: false,
                                              validator: (_) {
                                                return !state.isPasswordValid
                                                    ? 'Contraseña Invalida'
                                                    : null;
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: (MediaQuery.of(context).size.height > 600)
                                    ? 20
                                    : 10,
                              ),
                              isLoginButtonEnabled(state)
                                  ? LoginButton(onPressed: () {
                                      FocusScope.of(context)
                                          .requestFocus(new FocusNode());
                                      _onFormSubmitted();
                                    })
                                  : LoginButton(
                                      onPressed: null,
                                    ),
                              CreateChangePasswordButton(
                                  userRepository: _userRepository),
                              Container(
                                 width: MediaQuery.of(context).size.width*0.25,
                                
                                child: _divider()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GoogleLoginButton(),
                                  // SizedBox(
                                  //   height: 30,
                                  // ),
                                  FbLoginButton(),
                                  // SizedBox(
                                  //   height: 30,
                                  // ),
                               
                                ],
                              ),

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                     width: MediaQuery.of(context).size.width*0.25,
                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        
                          width: MediaQuery.of(context).size.width*0.2-2,
                        child: AutoSizeText('Al entrar aceptas nuestros términos y condiciones.',style: TextStyle(color:Colors.grey[50]),maxFontSize: 10,minFontSize: 6,maxLines: 2,)),
                        SizedBox(width:2),
                        Container(
                           width: MediaQuery.of(context).size.width*0.05,
                          child: InkWell(
                            onTap: () async{
                                 if (await canLaunch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit")) {
                             await launch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit");
                                   }
                            },
                            child: AutoSizeText('Ver',style: TextStyle(color:Colors.grey[50],decoration: TextDecoration.underline),maxFontSize: 10,minFontSize: 6,maxLines: 2,)),
                        ),
                      ],
                    )),

                           Container(
                          alignment: Alignment.bottomCenter,
                          child: CreateAccountButton(
                            userRepository: _userRepository,
                          ),
                        ),
                              // Expanded(
                              //   flex: (altura > 650) ? 6 : 12,
                              //   child: SizedBox(),
                              // ),
                            ],
                          ),
                        ),
                        
                        // // Positioned(top: 40, left: 0, child: _backButton()),
                        // // (altura > 700)
                        // //     ? 
                        //     Positioned(
                        //         top: -MediaQuery.of(context).size.height * .15,
                        //         right: -MediaQuery.of(context).size.width * .50,
                        //         child: BezierContainer())
                        //     // : Container()
                      ],
                    ),
                  )),
                )));
      },
    ));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _loginBloc.add(EmailChanged(email: _emailController.text));
  }

  void _onPasswordChanged() {
    _loginBloc.add(PasswordChanged(password: _passwordController.text));
  }

  void _onFormSubmitted() {
    _loginBloc.add(LoginWithCredentialsPressed(
        email: _emailController.text, password: _passwordController.text));
  }
}
