import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final VoidCallback _onPressed;
  final bool isMobile;
  final bool isTablet;

  LoginButton(this._onPressed,this.isMobile,this.isTablet);
   

  @override
  Widget build(BuildContext context) {
    
      return InkWell(
      onTap: _onPressed,
          child: Container(
      width: (isMobile) ? MediaQuery.of(context).size.width : (isTablet) ? MediaQuery.of(context).size.width*0.5 :  MediaQuery.of(context).size.width*0.3,
        padding:(MediaQuery.of(context).size.height>600) ?   EdgeInsets.symmetric(vertical: 15) : EdgeInsets.symmetric(vertical: 10) ,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: Text(
          'Iniciar sesión',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
      
      
     
  }
}