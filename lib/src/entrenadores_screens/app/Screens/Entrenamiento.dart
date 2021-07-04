import 'package:entrenaapp/blocs/B_MESCOCICLO/mesociclo_bloc_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/Semana_Entrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Screens/Dia_Entrenamiento.dart';
import '../Screens/Creacion_Entrenamiento.dart';



class Entrenamiento extends StatelessWidget {
  final PrincipalRepository principalRepository;
  
  Entrenamiento(this.principalRepository);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MesocicloBlocBloc>(create: (context) =>MesocicloBlocBloc(principalRepository),
      child:BlocBuilder<MesocicloBlocBloc,MesocicloBlocState>(
           
          
          builder:(BuildContext context, MesocicloBlocState state){
            if (state is UserEligiendoEntrenamiento) {
              return SemanaEntrenamiento(principalRepository,state.semanaEntrenamiento);
            }
            if (state is UserVisualizandoEntrenamiento) {
              
              return DiaDeEntrenamiento(principalRepository,state.numeroDia, state.diaEntrenamiento, state.semanaEntrenamiento,state.entrenamientoCompletado,state.semanaCompletada,state.mesocicloCompletado);
            }
        

            if (state is UserEditandoMesociclo){
              return CreacionEntrenamiento(principalRepository,state.mesocicloEntrenamiento,materialDisponible1: ['gym','barra','mancuernas','elasticos','polea',],materialDisponible2: ['bancoplano','bancoregulable','poleaalta','poleabaja','dominadas'],);
            }
            else return Container();

            

          }
      ),

      
    );
  }
}