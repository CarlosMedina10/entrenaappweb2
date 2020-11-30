
import 'package:entrenaappweb/src/ui/changePasswordScreen.dart';
import 'package:flutter/material.dart';
import '../../repository/user_repository.dart';
import '../../ui/changePassword.dart';

class CreateChangePasswordButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateChangePasswordButton({Key key, @required UserRepository userRepository})
    :assert(userRepository!= null),
    _userRepository = userRepository,
    super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
       width: MediaQuery.of(context).size.width*0.25,
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
                            TextStyle(fontSize: 15,color: Colors.white)),
                  ),
                );
    
    
    
    
  }
}