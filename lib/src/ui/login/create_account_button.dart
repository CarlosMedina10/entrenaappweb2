import 'package:flutter/material.dart';
import '../../repository/user_repository.dart';
import '../../ui/register/register_screen.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;
  final bool isMobile;
  final bool isTablet;

  CreateAccountButton(this._userRepository,this.isMobile,this.isTablet);
   

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (isMobile) ? MediaQuery.of(context).size.width : (isTablet) ? MediaQuery.of(context).size.width*0.5 :  MediaQuery.of(context).size.width*0.3,
      margin: EdgeInsets.symmetric(vertical: (isMobile) ? 10 : 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
             width: (isMobile) ? MediaQuery.of(context).size.width*0.6 : (isTablet) ? MediaQuery.of(context).size.width*0.3 :  MediaQuery.of(context).size.width*0.2,
            child: Text(
              '¿Todavia no tienes una cuenta?',
              style: TextStyle(fontSize: (isMobile) ? 12 : 16,color: Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
           width: (isMobile) ? MediaQuery.of(context).size.width*0.25-10 : (isTablet) ? MediaQuery.of(context).size.width*0.2-10 :  MediaQuery.of(context).size.width*0.1-10,
            child: InkWell(
              onTap: () {
                  Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return RegisterScreen(userRepository: _userRepository,);
            })
        );
              },
              child: Text(
                'Registrate',
                style: TextStyle(
                    color: Color(0xfff79c4f),
                    fontSize: (isMobile) ? 12 : 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
    
    
    

  }
}