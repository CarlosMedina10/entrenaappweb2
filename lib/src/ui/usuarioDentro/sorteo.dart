
import 'package:entrenaappweb/blocs/SorteoBloc/sorteobloc_bloc.dart';
import 'package:entrenaappweb/src/repository/user_repository.dart';
import 'package:entrenaappweb/src/ui/usuarioDentro/sorteoAcabado.dart';
import 'package:entrenaappweb/src/ui/usuarioDentro/sorteoForocoches.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class Sorteo extends StatelessWidget {
final UserRepository userRepository;

  
  Sorteo(this.userRepository);
  
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
            new FlatButton(
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
    SorteoblocBloc sorteoBloc = SorteoblocBloc(userRepository);
//  _showAlert(int mesocicloEliminado,BuildContext context,String message) {
//     showPlatformDialog(
//       context: context,
//       builder: (_) => BasicDialogAlert(
//         title: Text("¿Estas seguro?"),
//         content:
//             Text(message),
//         actions: <Widget>[
//           BasicDialogAction(
//             title: Text("Si"),
//             onPressed: () {
               
//             },
//           ),
//           BasicDialogAction(
//             title: Text("No"),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
   
     
     return 
    
    BlocProvider<SorteoblocBloc>(create: (context) => sorteoBloc,
     
     child: BlocListener<SorteoblocBloc,SorteoblocState>(
        listener: (context, state) {
         if (state is ErrorState)
         _showDialog();

             
        },
     
     
      
        
        child:
      BlocBuilder<SorteoblocBloc,SorteoblocState>(
           
          buildWhen: (prevState, currState) =>
                (currState is! ErrorState),
          
          builder:(BuildContext context, SorteoblocState state){
           if (state is PaginaEspera)
           {
                BlocProvider.of<SorteoblocBloc>(
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
          
          if (state is NoSeHaInscritoAun)
          {
            return SorteoInicioFC(userRepository);
          }
          if (state is YaSeHaInscrito)
          {
            return SorteoFinFC();
          }
          
    
    }),));
        
  }
}