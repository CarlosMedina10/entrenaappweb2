
import 'package:entrenaapp/blocs/LandingPageBloc/landingpage_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mailto/mailto.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';


class SendEmail extends StatefulWidget {
  final bool isOnContactanos;
  SendEmail(this.isOnContactanos);
  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {


    
    final _formKey = GlobalKey<FormState>();
     launchMailto(String asunto,cuestion) async {
  final mailtoLink = Mailto(
    to: ['carlos10zrg@hotmail.com'],

    subject: asunto,
    body: cuestion,
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
  @override
  void initState() {
    super.initState();
  //  BlocProvider.of<LandingpageBloc>(
  //                                                                         context)
  //                                                                     .add(WantIsDesktop(false, false, true));
  }
  @override
  Widget build(BuildContext context) {
      // final myControllerEmail = TextEditingController();
        final myControllerAsunto = TextEditingController();
          final myControllerBody = TextEditingController();
         
var size = MediaQuery.of(context).size;
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
     if (isMobile || isTablet)
            {
              BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantMobileOrTablet(false,false,true,false));
            }
            if (!isMobile && !isTablet && widget.isOnContactanos  )
            {
     BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(false, false, true,false));
            }

    return SingleChildScrollView(
          child: Center(
            child: Container(
              
            
              width: (isMobile) ? MediaQuery.of(context).size.width : (isTablet) ? MediaQuery.of(context).size.width*0.85 :  MediaQuery.of(context).size.width*0.65,
              padding: const EdgeInsets.symmetric(horizontal: 20),
        height: (size.height>500) ? size.height-75 : 425 ,
        child: Column(
         
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
        SizedBox(height:50),
        Text('Contacto',
        style:TextStyle(fontSize: 32, fontWeight:FontWeight.bold )),
        Text('En EntrenaAPP estamos a tu disposición para resolver cualquier duda'),
        Form(
            key: _formKey,
                    child: Container(
              
              
              child: Column(
              children: [
                SizedBox(height:16),
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
                  controller: myControllerAsunto,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Por favor, introduce un asunto para tu mensaje.';
                  }
                  return null;
                },
                  decoration:InputDecoration(
                    
                   
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Asunto',
                  border:InputBorder.none
                )),
                SizedBox(height:8),
                TextFormField(
                   validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Por favor,redacta tu cuestión.';
                  }
                  return null;
                },
                  maxLines: 7,
                  controller: myControllerBody,
                  decoration:InputDecoration(
                
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Cuestión',
                  border:InputBorder.none
                )),
                 SizedBox(height:8),

             MaterialButton(
               height: 60,
               color:Color(0xff0A183D),
               minWidth: double.infinity,
               onPressed: (){
                if (_formKey.currentState.validate())
                
                 
                 launchMailto(myControllerAsunto.text,myControllerBody.text,);
               },
               child: Text('Enviar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             )
              ],),
            ),
        ),
        
  ]),
      ),
          ),
    );

  }
}

//Mobile NavBar

