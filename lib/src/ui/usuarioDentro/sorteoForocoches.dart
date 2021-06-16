import 'package:entrenaapp/blocs/SorteoBloc/sorteobloc_bloc.dart';
import 'package:entrenaapp/blocs/authentication_bloc/bloc.dart';
import 'package:entrenaapp/checkout/stripe_checkout.dart';
import 'package:entrenaapp/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_builder/responsive_builder.dart';



class SorteoInicioFC extends StatefulWidget {
  final UserRepository userRepository;
  SorteoInicioFC(this.userRepository);

  @override
  _SorteoInicioFCState createState() => _SorteoInicioFCState();
}

class _SorteoInicioFCState extends State<SorteoInicioFC> {
    final _formKey = GlobalKey<FormState>();
   TextEditingController myControllerNombre;
  @override
  void initState() {
  
     
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     
        myControllerNombre = TextEditingController();
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
    return 
    WillPopScope(
    onWillPop: () async {
BlocProvider.of<AuthenticationBloc>(
                                                                              context)
                                                                          .add(LoggedOut());
       return false;
    }, child:
    Scaffold(
          body:  SingleChildScrollView(
                      child: Container(
               height: (isMobile) ? (size.height>500) ? (size.height>600) ? size.height*1.35 : size.height*1.5 : 750 : (size.height>500) ? size.height*1.2 : 600,
        color: Colors.white,
        child: Column(
            children: [
              //Home Music for everyone
              (isMobile) ?
              Container(
                  padding: EdgeInsets.symmetric(vertical:16),
                  height: (size.height>500) ? size.height*4/8 : 250,
                      width:  size.width,
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage("assets/images/sorteoForocoches.jpg"),
                      ),
                    ) : Container(),
              Container(
                height: (isMobile) ? (size.height>500) ? (size.height>600) ? size.height*4.5/8 : size.height*5/8 : 312.5 : (size.height>500) ? size.height*0.8 : 400,
                width: size.width,
             
                child: Row(
                  children: [
                     (!isMobile) ?
                    Container(
                     
                      width:   size.width*3/8,
                      alignment: Alignment.center,
                      child: Image(
                        image:  AssetImage("assets/images/sorteoForocoches.jpg"),
                      ),
                    ) : Container(), 
                    Container(
                      color:Colors.white,
       padding: EdgeInsets.symmetric(horizontal: 30),   
       
              width: (isMobile) ? size.width : size.width*5/8,
   
        child: Column(
       
        children:[
        Text('¡PARTICIPA!',
        style:TextStyle(fontSize: (isMobile || isTablet) ? size.width/17.5 : size.width/22.76, fontWeight:FontWeight.bold,color: Color(0xff0A183D) )),
         SizedBox(height:(isMobile) ? 8 : 16),
        Text('Para participar en el sorteo simplemente tienes que escribir un nombre.\n\nEl día 31 de enero se anunciara el listado de ganadores y se les enviará un correo electrónico.\nAdemás como te hemos comentado...\n¡Solo por participar ganas un mes premium gratis! (SIN dejar tu tarjeta)',style: TextStyle(fontSize: (isMobile) ? 12 : 16,color: Color(0xff0A183D))),
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
              ),
               Column(children:[
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text('Super promoción inauración web.',
                          style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),),
   Text('Premium vitalicio por sólo 60 €.  ',
                          style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile ? 16 : (isTablet) ? 18 : 22.0),
    fontWeight: FontWeight.w700
  ),),
   Text('Aprovecha todas las ventajas premium actuales y futuras para siempre. ',
                          style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: (isMobile ? 14 : (isTablet) ? 16 : 20.0),
    fontWeight: FontWeight.w600
  ),),
     FittedBox(
        child: Text('**Este premium se asociara a la cuenta con la que has iniciado sesión.',
                          style: TextStyle(
      color: Color(0xff0A183D),
      fontSize: (isMobile ? 10 : (isTablet) ? 12 : 16.0),
      fontWeight: FontWeight.w600
  ),),
   ),
                        ],
                      )),
                  GFButton(
    onPressed: ()  async{

      return redirectToCheckout(context);},
    color: Color(0xFFFF813F),
   
            
    boxShadow: 
              BoxShadow(
                color: Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1),
              )
            ,
       
     
    padding: EdgeInsets.symmetric(horizontal:16,vertical:4),
    text: "Comprar",
    icon: Icon(Icons.shopping_cart),
  ),
                  ])
                ,
              
              ]),
    ),
          )));
  }
}