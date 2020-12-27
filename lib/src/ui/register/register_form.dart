

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/register_bloc/bloc.dart';
import '../../bloc/authentication_bloc/bloc.dart';
import '../../ui/register/register_button.dart';
import 'package:flutter/material.dart';
import '../../ui/login/bezierContainer.dart';
import '../../repository/user_repository.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:community_material_icon/community_material_icon.dart';


// import '../models/http_exception.dart';

class RegisterPage extends StatefulWidget {
   final UserRepository _userRepository;
   final bool isMobile;
   final bool isTablet;
  

  RegisterPage(this._userRepository,this.isMobile,this.isTablet);
     

  

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Dos variables
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _verifyPasswordController = TextEditingController();
  bool checkbox=false;
  bool isTap1=false;
  bool isTap2=false;
  RegisterBloc _registerBloc;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty ;
  
  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _registerBloc = BlocProvider.of<RegisterBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    _verifyPasswordController.addListener(_isVerify);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


   

  // Widget _backButton() {
  //   return InkWell(
  //     onTap: () {
  //       // Navigator.pop(context);buen codigo
        
  //     },
  //     child: Container(
  //       padding: EdgeInsets.symmetric(horizontal: 10),
  //       child: Row(
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
  //             child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
  //           ),
  //           Text('Back',
  //               style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
  //         ],
  //       ),
  //     ),
  //   );
  // }


  


//    _Register() async {
//  await
//   Provider.of<Auth>(context,listen: false).register(_authData['Email'], _authData['Password']).catchError((error){
//          print('An error occur');
//          print('$error');
//          var errorMessage = 'Authentication failed';
//       if (error.toString().contains('EMAIL_EXISTS')) {
//         errorMessage = 'This email address is already in use.';
//       } else if (error.toString().contains('INVALID_EMAIL')) {
//         errorMessage = 'This is not a valid email address';
//       } else if (error.toString().contains('WEAK_PASSWORD')) {
//         errorMessage = 'This password is too weak.';
//       } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
//         errorMessage = 'Could not find a user with that email.';
//       } else if (error.toString().contains('INVALID_PASSWORD')) {
//         errorMessage = 'Invalid password.';
//       }
//       _showErrorDialog(errorMessage);
//        });
//     //  Provider.of<Auth>(context).veryfyEmail(_authData['Email']);

// setState(() {
//       _isLoading = false;
//     });


//   }
 

  Widget _loginAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '¿Ya tienes una cuenta?',
            style: TextStyle(fontSize: 14,color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
                Navigator.pop(context);
          
        
            },
            child: Text(
              'Inicia sesión',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10),
      height: (MediaQuery.of(context).size.height<500) ? 62.5 : MediaQuery.of(context).size.height*0.125,
     
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
   double altura= MediaQuery.of(context).size.height;
   
                
                   
   _aceptarPolitica(){
     Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),),
              content: Row(
               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Por favor, acepta la política de privacidad.'),
                  Icon(Icons.error)
                ],
              ),
              backgroundColor: Colors.red,
            )
          );
        }
   
   


   
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        // Si estado es submitting
        if (state.isSubmitting) {
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Registrando... '),
                CircularProgressIndicator(),
              ],
            ),
          ));
      }
        // Si estado es success
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context)
            .add(LoggedIn());
          Navigator.of(context).pop();
        }
        // Si estado es failure
        if (state.isFailure) {
          Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),),
              content: Row(
               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('${widget._userRepository.errorString}'),
                  Icon(Icons.error)
                ],
              ),
              backgroundColor: Colors.red,
            )
          );
        }
      },
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return
    
  
        Center(
          child: Container(
             
             width: (widget.isMobile) ? MediaQuery.of(context).size.width : (widget.isTablet) ? MediaQuery.of(context).size.width*0.5 :  MediaQuery.of(context).size.width*0.35,
            
                  
      
            child: ListView(
              
                children: [Container(
                  
            
                 
      height: (MediaQuery.of(context).size.height<500) ? 500 : MediaQuery.of(context).size.height ,
      child: Stack(
            children: <Widget>[
              Container(
               
                 
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: (altura>700) ? 3 : 1,
                      child: SizedBox(),
                    ),
                    _title(),
                    SizedBox(
                      height: altura/30,
                    ),
                    Form(
              
              child: Column(
            children: <Widget>[
              Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
      (MediaQuery.of(context).size.height>550) ?  Text(
               'Correo',
                style: TextStyle(fontSize: 15,color: Colors.white),
              ) : Container(),
             (MediaQuery.of(context).size.height>550) ?  SizedBox(
                height: 10,
              ) : Container(),
               TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                        contentPadding:  EdgeInsets.symmetric(vertical: 0, horizontal: 0) ,
                        labelText:(MediaQuery.of(context).size.height>550) ? '' : 'Correo' ,
                      border: InputBorder.none,
                      errorStyle: TextStyle(fontSize:10),
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        autovalidate: true,
                        validator: (_){
                          return !state.isEmailValid? 'Email Invalido' : null;
                        },
                      ),
            ],
      ),
    ),
             Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              (MediaQuery.of(context).size.height>550) ?  Text(
               'Contraseña' ,
                style: TextStyle(fontSize: 15,color: Colors.white),
              ) : Container(),
              (MediaQuery.of(context).size.height>550) ? SizedBox(
                height: 10,
              ) : Container(),
              TextFormField(
                        controller: _passwordController,
                         decoration: InputDecoration(
                           suffixIcon: (isTap1== false) ? InkWell(child: Icon(CommunityMaterialIcons.eye,),
                           onTap: (){
                             setState(() {
                               isTap1=true;
                             });
                           },) :
                           
                           InkWell(child: Icon(CommunityMaterialIcons.eye_off,),
                           onTap: (){
                             setState(() {
                               isTap1=false;
                             });
                           },) ,
                           errorStyle: TextStyle(fontSize:10),
                           contentPadding:  EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                           labelText:(MediaQuery.of(context).size.height>550) ? '' : 'Contraseña',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                        obscureText: (isTap1 == true) ? false : true,
                        autocorrect: false,
                        autovalidate: true,
                    
                        validator: (_){
                          return !state.isPasswordValid ? 'Al menos 8 carácteres con letras y números.': null;
                        },
                      ),
            ],
      ),
    ),
             
                      Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             (MediaQuery.of(context).size.height>550) ?  Text(
               'Verificar Contraseña' ,
                style: TextStyle(fontSize: 15,color: Colors.white),
              ) : Container(),
              (MediaQuery.of(context).size.height>550) ? SizedBox(
                height: 10,
              ) : Container(),
            
               TextFormField(
                        controller: _verifyPasswordController,
                         decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                          labelText:(MediaQuery.of(context).size.height>550) ? '' : 'Verificar Contraseña',
                      border: InputBorder.none,
                      errorStyle: TextStyle(fontSize:10),
                       suffixIcon: (isTap2== false) ? InkWell(child: Icon(CommunityMaterialIcons.eye,),
                           onTap: (){
                             setState(() {
                               isTap2=true;
                             });
                           },) :
                           
                           InkWell(child: Icon(CommunityMaterialIcons.eye_off,),
                           onTap: (){
                             setState(() {
                               isTap2=false;
                             });
                           },) ,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                        obscureText: (isTap2 == true) ? false : true,
                        autocorrect: false,
                        autovalidate: true,
                        validator: (_){
                          return !state.isVerify ? 'No coinciden las contraseñas': null;
                        },
                      ),
                SizedBox(
                height: 10,
              ),
                Container(
                  width: (widget.isMobile) ? MediaQuery.of(context).size.width : (widget.isTablet) ? MediaQuery.of(context).size.width*0.5 :  MediaQuery.of(context).size.width*0.35,
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: (widget.isMobile) ? MediaQuery.of(context).size.width*0.75 : (widget.isTablet) ? MediaQuery.of(context).size.width*0.45 :  MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: <Widget>[
                           (MediaQuery.of(context).size.width<406) ? Container(child: AutoSizeText('Estoy de acuerdo',style: TextStyle(color:Colors.grey[50]),maxFontSize: 14,minFontSize: 8,maxLines: 1,)) : Container(child: AutoSizeText('Estoy de acuerdo con los términos y condiciones.',style: TextStyle(color:Colors.grey[50]),maxFontSize: 14,minFontSize: 8,maxLines: 1,)),
                            SizedBox(height: 8),
                            InkWell(
                              onTap: () async{
                                   if (await canLaunch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit")) {
                               await launch("https://docs.google.com/document/d/18oJrOwZRm57BbnSwpPCtKtXdGufQwARFfQPeLiTyN28/edit");
                                     }
                              },
                              child: AutoSizeText('Ver términos y condiciones',style: TextStyle(color:Colors.grey[50],decoration: TextDecoration.underline),maxFontSize: 14,minFontSize: 8,maxLines: 1,)),
                          ],
                        )),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.0125
                      ),
                      Theme(
data: ThemeData(unselectedWidgetColor: Colors.white),child:
                      Checkbox(         
                                        activeColor: Colors.orange,
                                        checkColor: Colors.white,
                                        
                                        value: checkbox ,
                                        onChanged: (bool value) {
                                          print('$value');
                                          setState(() {
                                             checkbox=value;
                                          });
                                        
                                        } ),),
                    ],
                  ),
                ),
            ],
      ),
    ),
                
            
            ],
      ),
    ),
                    SizedBox(
                      height: 20,
                    ),
                     isRegisterButtonEnabled(state) ?
                      RegisterButton(
                            onPressed:() {
                              if (checkbox==true) {
                                 FocusScope.of(context).requestFocus(new FocusNode());
                               _onFormSubmitted();} else _aceptarPolitica();
                            }
                             
                              
                          ) :
                      RegisterButton(
                            onPressed: 
                              
                               null,
                          ),
                    Expanded(
                      flex: (altura>700) ? 2 : 3,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _loginAccountLabel(),
              ),
              // Positioned(top: 40, left: 0, child: _backButton()),
              (altura>700 && widget.isMobile) ? Positioned(
                top: -MediaQuery.of(context).size.height * .175,
                right: -MediaQuery.of(context).size.width * .5,
                child: BezierContainer())  : Container()
            ],
      ),
    )]),
          ),
        );}),);
  }
  void _onEmailChanged() {
    _registerBloc.add(
      EmailChanged(email: _emailController.text)
    );
  }

  void _onPasswordChanged() {
    _registerBloc.add(
      PasswordChanged(password: _passwordController.text)
    );
  }

  void _isVerify() {
    _registerBloc.add(
      VerifyPassword(password: _passwordController.text,verifyPassword: _verifyPasswordController.text)
    );
  }

  void _onFormSubmitted() {
    _registerBloc.add(
      Submitted(
        email: _emailController.text,
        password: _passwordController.text
      )
    );
  }
}