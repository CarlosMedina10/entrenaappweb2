import 'package:entrenaapp/blocs/B_VISUALIZACION_ENTRENAMIENTO/visualizacionentrenamiento_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/Visualizacion_entrenamiento_cuestionario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './Visualizacion_diaEntrenamiento.dart';
import '../widgets/pagina_Espera.dart';

import 'package:easy_localization/easy_localization.dart';



class Visualizacion extends StatelessWidget {
  final PrincipalRepository _principalRepository;
  Visualizacion(this._principalRepository);
  
  @override
  Widget build(BuildContext context) {
 _showAlert(int mesocicloEliminado,BuildContext context,String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Historial.¿estas_seguro?".tr()),
        content:
            Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("_Historial.si".tr()),
            onPressed: () {
               Navigator.of(context).pop();
                    BlocProvider.of<VisualizacionentrenamientoBloc>(context)
                    .add(UserVaAEliminarMesociclo(mesocicloEliminado,true));
            },
          ),
          TextButton(
            child: Text("_Historial.no".tr()),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
    
     return 
    
    BlocProvider<VisualizacionentrenamientoBloc>(create: (context) => VisualizacionentrenamientoBloc(_principalRepository),
     
     child: BlocListener<VisualizacionentrenamientoBloc,VisualizacionentrenamientoState>(
        listener: (context, state) {
          if (state is Confirmando) 
           _showAlert(state.mesocicloSelected,context, "_Historial.al_hacerlo".tr(),);
             
        },
     
     
      child:BlocBuilder<VisualizacionentrenamientoBloc,VisualizacionentrenamientoState>(
           buildWhen: (prevState, currState) =>
              currState is! Confirmando ,
          
          builder:(BuildContext context, VisualizacionentrenamientoState state){


            if (state is VisualizacionentrenamientoInitial)
            return CuestionarioVisualizacion(_principalRepository, state.mesocicloSelected,semanaSelected: state.semana,);

            else if (state is VisualizandoEntrenamiento)
            {print('${state.numeroSemana}');
            return VisualizacionDiaDeEntrenamiento(_principalRepository,state.numeroMesociclo,state.numeroSemana,state.numeroDia);}
            else if (state is EliminandoEntrenamiento)
            return PaginaEspera();
            else return Container();
            
    
    }),));
        
  }
}