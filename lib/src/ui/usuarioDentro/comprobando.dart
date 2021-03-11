import 'package:entrenaapp/blocs/ComprobandoBloc/comprobando_bloc.dart';
import 'package:entrenaapp/src/bloc/authentication_bloc/bloc.dart';
import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/screens/home_screen.dart';
import 'package:entrenaapp/src/ui/landingPage/HomePage.dart';
import '../../widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class Comprobando extends StatelessWidget {
final UserRepository userRepository;

  
  Comprobando(this.userRepository);
  
  @override
  Widget build(BuildContext context) {

    void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("Ha ocurrido un error. Por favor, revisa tu conexión a internet y si el problema persiste contáctanos."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text("Cerrar",style: TextStyle(color: Colors.orange),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
     // ignore: close_sinks
    ComprobandoBloc Comprobando = ComprobandoBloc(userRepository);

   
     
     return 
    
    BlocProvider<ComprobandoBloc>(create: (context) => Comprobando,
     
     child: BlocListener<ComprobandoBloc,ComprobandoState>(
        listener: (context, state) {
         if (state is ErrorState)
         _showDialog();

             
        },
     
     
      
        
        child:
      BlocBuilder<ComprobandoBloc,ComprobandoState>(
           
          buildWhen: (prevState, currState) =>
                (currState is! ErrorState),
          
          builder:(BuildContext context, ComprobandoState state){
           if (state is PaginaEspera)
           {

             
                BlocProvider.of<ComprobandoBloc>(
                                                                          context)
                                                                      .add(Espera());
           
            return Scaffold(
                          body: Center(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Por favor, espere...'),
                  SizedBox(height:20),
                  CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.orange),),
                ],
              )),
            );}
          
          if (state is EsEntrenador)
          {
            return Home(userRepository);
          }
          if (state is NoEsEntrenador)
          {
            
             return Scaffold(
                          body: Center(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.error_sharp,color: Colors.red,),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Esta sección es sólo para entrenadores que trabajan con Entrenaapp para mejorar la productividad y satisfacción de sus clientes. Contáctanos si estas interesado en saber mas :)'),
                  ),
                   SizedBox(
                            height: 25,
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RoundedButton(
                                color: Color(0xff0A183D),
                                textTitle: 'Solicitar información',
                                isMobile: false,
                                isTablet: false,
                               
                              ),
                              SizedBox(width:20),
                              InkWell(
                                onTap: () => BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut()),
                                                              child: Row(
                                  children: [
                                    Text('Salir'),
                                    SizedBox(width:10),
                                    Icon(Icons.exit_to_app),
                                  ],
                                ),
                              )
                            ],
                          ),
                 
                 
                ],
              )),
            ); ;
          }
          
    
    }),));
        
  }
}