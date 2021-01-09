
import 'package:entrenaapp/blocs/SorteoBloc/sorteobloc_bloc.dart';
import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/ui/usuarioDentro/sorteoAcabado.dart';
import 'package:entrenaapp/src/ui/usuarioDentro/sorteoForocoches.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class Sorteo extends StatelessWidget {
final UserRepository userRepository;

  
  Sorteo(this.userRepository);
  
  @override
  Widget build(BuildContext context) {

    void _showDialog(bool isPremium) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text( (!isPremium) ? "Ha ocurrido un error. Por favor, revisa tu conexión a internet y si el problema persiste contáctanos." : "Enhorabuena, ya estas inscrito en el sorteo. El premium mensual gratuito no se te ha activado ya que eres o has sido premium en nuestra aplicación anteriormente por lo que ya lo has probado. Muchas gracias."),
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
         _showDialog(state.isPremium);

             
        },
     
     
      
        
        child:
      BlocBuilder<SorteoblocBloc,SorteoblocState>(
           
          buildWhen: (prevState, currState) =>
                (currState is! ErrorState),
          
          builder:(BuildContext context, SorteoblocState state){
           if (state is PaginaEspera)
           {

             (!state.isFromIscribiendose) ?
                BlocProvider.of<SorteoblocBloc>(
                                                                          context)
                                                                      .add(Espera()) : null;
           
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
            print('${state.isPremium} oooooooops');
            return SorteoFinFC(state.isPremium);
          }
          
    
    }),));
        
  }
}