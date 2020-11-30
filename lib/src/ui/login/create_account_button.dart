import 'package:flutter/material.dart';
import '../../repository/user_repository.dart';
import '../../ui/register/register_screen.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
    :assert(userRepository!= null),
    _userRepository = userRepository,
    super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.25,
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.15,
            child: Text(
              '¿Todavia no tienes una cuenta?',
              style: TextStyle(fontSize: 14,color: Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
           width: MediaQuery.of(context).size.width*0.1-10,
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
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
    
    
    

  }
}