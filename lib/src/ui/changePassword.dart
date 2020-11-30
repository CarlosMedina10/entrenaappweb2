import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../repository/user_repository.dart';
import '../bloc/verifypassword_bloc/verifypassword_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ResetPasswordPage extends StatefulWidget {


  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
final TextEditingController _emailController = TextEditingController();
 

  VerifypasswordBloc _verifyPasswordBloc;

  

  bool get isPopulated =>
      _emailController.text.isNotEmpty ;

  bool isVerifyButtonEnabled(VerifypasswordState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _verifyPasswordBloc = BlocProvider.of<VerifypasswordBloc>(context);
    _emailController.addListener(_onEmailChanged);
   
  }
@override
  void dispose() {
    _emailController.dispose();
    
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return 
    BlocListener<VerifypasswordBloc, VerifypasswordState>(
      listener: (context, state) {
        // Si estado es submitting
        if (state.isSubmitting) {
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Cambiando Contraseña'),
              CircularProgressIndicator()
            ],
          ),
        )
      );
        }
        // Si estado es success
        if (state.isSuccess) {
    Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('¡Mensaje enviado correctamente!'),
            Icon(FontAwesomeIcons.check)
          ],
        ),
        backgroundColor: Colors.orange,
      )
    );
        }
        // Si estado es failure
        if (state.isFailure) {
    Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Cambio de contraseña fallido'),
            Icon(Icons.error)
          ],
        ),
        backgroundColor: Colors.red,
      )
    );
        }
      },
      child: BlocBuilder<VerifypasswordBloc, VerifypasswordState>(
        builder: (context, state) {
    return
    
    
    
    Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 40, 0.65),
    //   appBar: AppBar(
    //     backgroundColor: Color.fromRGBO(3, 9, 40, 0.65),
    //     leading: IconButton(
    // icon: Icon(Icons.arrow_back),
    // color: Colors.black38,
    // onPressed: () => Navigator.pop(context, false),
    //     ),
    //   ),
      body: Container(
        // padding: EdgeInsets.only(left: 40, right: 40),
        
        child: ListView(
    children: <Widget>[

       Padding(
         padding: EdgeInsets.only(left: 20.0, top: 20.0),
         child: InkWell(onTap: (){
         Navigator.pop(context, false);
         },
                                   child: new Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               new Icon(
                 Icons.arrow_back,
                 color: Colors.white,
                 size: 22.0,
               ),
               Padding(
                 padding: EdgeInsets.only(left: 25.0),
                 child: new Text('PERFIL',
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                         // fontFamily: 'sans-serif-light',
                         color: Colors.white)),
               )
             ],
           ),
         ),
       ),
       SizedBox(height:50),
      Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
         
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset("assets/images/ResetPasswordIcon.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color:Colors.grey[300]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Por favor,Informe la dirección de correo electrónico asociada con su cuenta y le enviaremos un enlace para que pueda restablecer su contraseña.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                 Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
             'Correo' ,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color:Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
             TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        // labelText: 'Correo',
                    border: InputBorder.none,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFFF58524),
                          Color(0XFFF92B7F),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Text(
                          "Enviar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                       onPressed: isVerifyButtonEnabled(state)
                      ? _onFormSubmitted
                      : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ],
        ),
      ),
    );
    
    }));
  }
  void _onEmailChanged() {
    _verifyPasswordBloc.add(EmailChanged(email: _emailController.text));
  }

 

  void _onFormSubmitted() {
    _verifyPasswordBloc.add(
      Submitted(
        email: _emailController.text,
        
      )
    );
  }
}


// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:sweet_alert_dialogs/sweet_alert_dialogs.dart';
// import '../repository/user_repository.dart';


// // enum AuthMode { Signup, Login }

// class ChangePasswordScreen extends StatelessWidget {
//    final UserRepository _userRepository;

//    ChangePasswordScreen(this._userRepository);

//   @override
//   Widget build(BuildContext context) {
//     final deviceSize = MediaQuery.of(context).size;
//     // final transformConfig = Matrix4.rotationZ(-8 * pi / 180);
//     // transformConfig.translate(-10.0);
//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [


//                   Colors.orange,
                  

//                   Colors.white,
                  
//                   // Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
//                   // Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 stops: [0, 1],
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Container(
//               height: deviceSize.height,
//               width: deviceSize.width,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Flexible(
//                     child: Container(
//                       margin: EdgeInsets.only(bottom: 20.0),
//                       padding:
//                           EdgeInsets.symmetric(vertical: 8.0, horizontal: 94.0),
//                       transform: Matrix4.rotationZ(-8 * pi / 180)
//                         ..translate(-5.0),
//                       // ..translate(-10.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.black87,
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 8,
//                             color: Colors.black26,
//                             offset: Offset(0, 2),
//                           )
//                         ],
//                       ),
//                       child: Text(
//                         'EntrenaAPP',
//                         style: TextStyle(
//                           color: Colors.white,
//                           // Theme.of(context).accentTextTheme.title.color,
//                           fontSize: 40,
//                           fontFamily: 'Anton',
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     flex: deviceSize.width > 600 ? 2 : 1,
//                     child: AuthCard(_userRepository),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class AuthCard extends StatefulWidget {
//   final UserRepository _userRepository;

//   // static const routename = '/ressetPassword';
//  AuthCard(this._userRepository);
//   @override
//   _AuthCardState createState() => _AuthCardState();
// }

// class _AuthCardState extends State<AuthCard> {
//   final GlobalKey<FormState> _formKey = GlobalKey();
  
//   Map<String, String> _authData = {
//     'email': '',
    
//   };
//   var _isLoading = false;
//   // final _passwordController = TextEditingController();
    
//    void _showErrorDialog(String message) {
//      showDialog(
    
//     context: context,
//     builder: (BuildContext ctx) {
//        return RichAlertDialog(
           
//           alertTitle: Text('WARNING!',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Color(0xffe46b10)),),
//           alertSubtitle: Text(message,style: TextStyle(fontWeight:FontWeight.bold),),
//           // richSubtitle(message),
//           alertType: RichAlertType.ERROR,
//           actions: <Widget>[
//             FlatButton(
//               color: Colors.grey[850],
//               child: Text("OK",style: TextStyle(fontWeight:FontWeight.bold,color:Color(0xffe46b10),),),
//               onPressed: (){
//                 Navigator.of(ctx).pop();},
//             ),
            
            
            
//           ],
         
//        );
//     }
// );


    
//   }

//   void _showVerifyDialog(String message) {
//      showDialog(
    
//     context: context,
//     builder: (BuildContext ctx) {
//        return RichAlertDialog(
           
//           alertTitle: Text('Correo Enviado',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Color(0xffe46b10)),),
//           alertSubtitle: Text('Por favor, vaya a su cuenta de correo ($message) para cambiar la contraseña',style: TextStyle(fontWeight:FontWeight.bold),),
//           // richSubtitle(message),
//           alertType: RichAlertType.SUCCESS,
//           actions: <Widget>[
//             FlatButton(
//               color: Colors.grey[850],
//               child: Text("OK",style: TextStyle(fontWeight:FontWeight.bold,color:Color(0xffe46b10),),),
//               onPressed: (){
//                 Navigator.pop(context);
//                 },
//             ),
            
            
            
//           ],
         
//        );
//     }
// );
// }

//   Future<void> _submit() async{
//     if (!_formKey.currentState.validate()) {
//       // Invalid!
      
//       return;
//     }
//     _formKey.currentState.save();
//     setState(() {
//       _isLoading = true;
//     });
//     try {await
//      widget._userRepository.sendPaswordResetEmail(_authData['email']);
//      _showVerifyDialog(_authData['email']);
     
//      } 
     
//      catch(error){
//         //  print('An error occur');
//         //  print('$error');
//          var errorMessage = 'Authentication failed';
//       if (error.toString().contains('EMAIL_EXISTS')) {
//         errorMessage = 'This email address is already in use.';
//       } else if (error.toString().contains('INVALID_EMAIL')) {
//         errorMessage = 'This is not a valid email address';
//       } else if (error.toString().contains('WEAK_PASSWORD')) {
//         errorMessage = 'This password is too weak.';
//       } else if (error.toString().contains('USER_NOT_FOUND')) {
//         errorMessage = 'Could not find a user with that email.';
//       } else if (error.toString().contains('INVALID_PASSWORD')) {
//         errorMessage = 'Invalid password.';
//       }
   
//       _showErrorDialog(errorMessage);
      
      
//        }
    
//     setState(() {
//       _isLoading = false;
//     });

//     // Navigator.pop(context);
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     final deviceSize = MediaQuery.of(context).size;
    
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 8.0,
//       child: Container(
//         height:  200,
//         constraints:
//             BoxConstraints(minHeight: 200),
//         width: deviceSize.width * 0.75,
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Ingresa tu E-Mail'),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value.isEmpty || !value.contains('@')) {
//                       return 
//                        'Invalid email!';
//                     } 
//                       else return null;
//                   },
//                   onSaved: (value) {
                    
//                     _authData['email'] = value;
//                     // Navigator.pop(context);
//                   },
//                 ),
//                 // TextFormField(
//                 //   decoration: InputDecoration(labelText: 'Password'),
//                 //   obscureText: true,
//                 //   controller: _passwordController,
//                 //   validator: (value) {
//                 //     if (value.isEmpty || value.length < 5) {
//                 //       return 
//                 //       'Password is too short!';
//                 //     } 
//                 //     else return null;
//                 //   },
//                 //   onSaved: (value) {
//                 //     _authData['password'] = value;
//                 //   },
//                 // ),
//                 // if (_authMode == AuthMode.Signup)
//                 //   TextFormField(
//                 //     enabled: _authMode == AuthMode.Signup,
//                 //     decoration: InputDecoration(labelText: 'Confirm Password'),
//                 //     obscureText: true,
//                 //     validator: _authMode == AuthMode.Signup
//                 //         ? (value) {
//                 //             if (value != _passwordController.text) {
//                 //               return 
//                 //                'Passwords do not match!';
//                 //             } 
//                 //              else return null;
//                 //           }
//                 //         : null,
//                 //   ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 if (_isLoading)
//                   CircularProgressIndicator()
//                 else
//                   RaisedButton(
//                     child:
//                         Text( 'Resset Password' ),
//                     onPressed: _submit,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
//                     color: Theme.of(context).primaryColor,
//                     textColor: Theme.of(context).primaryTextTheme.button.color,
//                   ),
            
//                 IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);})
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }