import 'package:entrenaappweb/blocs/SorteoBloc/sorteobloc_bloc.dart';

import 'package:entrenaappweb/src/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:url_launcher/url_launcher.dart';

class SorteoInicioFC extends StatelessWidget {
  final UserRepository userRepository;
  SorteoInicioFC(this.userRepository);
  @override
  Widget build(BuildContext context) {
      final _formKey = GlobalKey<FormState>();
       final myControllerNombre = TextEditingController();
      
    var deviceType = getDeviceType(MediaQuery.of(context).size);
bool isMobile = false;
bool isTablet = false;
switch(deviceType) {
  case DeviceScreenType.watch:
    isMobile=false;
    isTablet=false;
    break;
  case DeviceScreenType.desktop:
     isMobile=false;
     isTablet=false;
    break;
  case DeviceScreenType.tablet:
     isMobile=false;
     isTablet=true;
    break;
  case DeviceScreenType.mobile:
     isMobile=true;
     isTablet=false;
    break;
  case DeviceScreenType.Mobile:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Tablet:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Desktop:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Watch:
    // TODO: Handle this case.
    break;
}
    var size = MediaQuery.of(context).size;
    return Scaffold(
          body:  Container(
        color: Colors.white,
        child: Column(
          children: [
            //Home Music for everyone
            (isMobile) ?
            Container(
            
                height: (size.height>500) ? size.height*4/8 : 250,
                    width:  size.width,
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("assets/images/SorteoForocoches.png"),
                    ),
                  ) : Container(),
            Container(
              height: (isMobile) ? (size.height>500) ? size.height*4/8 : 250 : (size.height>500) ? size.height : 500,
              width: size.width,
           
              child: Row(
                children: [
                   (!isMobile) ?
                  Container(
                    width:  (isTablet==false) ? size.width / 2 : size.width*3/8,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Image(
                        image:  AssetImage("assets/images/SorteoForocoches.png"),
                      ),
                    ),
                  ) : Container(), 
                  Container(
       padding: EdgeInsets.symmetric(horizontal: (isMobile) ? 10 : (isTablet) ? 62.5 : 125),   
       color: Colors.white,
            width: (isMobile) ? size.width : size.width/2,
        height: (size.height>500) ? size.height : 500 ,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Text('¡PARTICIPA!',
        style:TextStyle(fontSize: (isMobile || isTablet) ? size.width/17.5 : size.width/22.76, fontWeight:FontWeight.bold )),
         SizedBox(height:(isMobile) ? 8 : 16),
        Text('Para participar en el sorteo simplemente tienes que escribir tu nombre de usuario en forocoches.\n\nEl día 6 de enero se anunciara el listado de ganadores en el foro.\nAdemás como te hemos comentado...\n¡Solo por participar ganas un mes premium gratis! (SIN dejar tu tarjeta)',style: TextStyle(fontSize: (isMobile) ? 12 : 16),),
        Form(
          key: _formKey,
                  child: Container(
            
            child: Column(
            children: [
               SizedBox(height:(isMobile) ? 8 : 16),
              // TextField(
              //   controller: myControllerEmail,
              //   decoration:InputDecoration(
                
              //   fillColor: Colors.grey[200],
              //   filled: true,
              //   hintText: 'Email',
              //   border:InputBorder.none
              // )),
              // SizedBox(height:8),
              TextFormField(
                controller: myControllerNombre,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Por favor, introduce un nombre de usuario.';
                }
                return null;
              },
                decoration:InputDecoration(
                  
                 
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Nombre de usuario',
                border:InputBorder.none
              )),
              SizedBox(height:(isMobile) ? 8 : 16),
            

           MaterialButton(
             height: 60,
             color:Color(0xff0A183D),
             minWidth: double.infinity,
             onPressed: () {
                if (_formKey.currentState.validate()){
                 
                    BlocProvider.of<SorteoblocBloc>(
                                                                          context)
                                                                      .add(VaAInscribirse(myControllerNombre.text));
                }

             },
             child: Text('Participar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
           )
            ],),
          ),
        ),
        
  ]),
      ),
              
                ],
              ),
            ),]),
    ));
  }
}