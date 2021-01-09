

import 'package:entrenaapp/src/ui/changePasswordScreen.dart';
import 'package:flutter/material.dart';
import '../../repository/user_repository.dart';
import '../../ui/changePassword.dart';

class CreateChangePasswordButton extends StatelessWidget {
  final UserRepository _userRepository;
   final bool isMobile;
  final bool isTablet;

 

  CreateChangePasswordButton( this._userRepository,this.isMobile,this.isTablet);
  


  @override
  Widget build(BuildContext context) {
    return  Container(
       width: (isMobile) ? MediaQuery.of(context).size.width : (isTablet) ? MediaQuery.of(context).size.width*0.5 :  MediaQuery.of(context).size.width*0.25,
                  padding: 
                  // EdgeInsets.only(top:10),
                  EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.centerRight,
                  child: InkWell( onTap: (){
                     Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return VerifypasswordScreen(userRepository: _userRepository);
          })
        );
                  },
                                      child: Text('¿Olvidaste tu contraseña?',
                        style:
                            TextStyle(fontSize: (isMobile) ? 12 :  16,color: Colors.white)),
                  ),
                );
    
    
    
    
  }
}