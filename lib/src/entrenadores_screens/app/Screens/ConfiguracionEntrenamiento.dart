import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/apis/api_estructuracionEntrenamiento.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/blocs/configuracionentrenamiento_bloc/configuracionentrenamiento_bloc.dart';
import 'package:entrenaapp/repository/repo_estructuracion.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/CuestionarioUsario.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/Estructuracion_Entrenamiento.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/widgets/pagina_Espera.dart';
import './Creacion_Entrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ConfiguracionEntrenamiento extends StatelessWidget {
  static const routename = '/cuestionario_usuario';
  final PrincipalRepository principalRepository;
  final String userID;
  
  final bool isUserInit;
   final double puntuacionFinal;
   final int userFase;
   final double userBMI;
   final String sexo;

   
   
   ConfiguracionEntrenamiento(this.principalRepository
   ,this.userID,this.isUserInit,this.puntuacionFinal,this.userFase,this.userBMI,this.sexo,);
  @override
  Widget build(BuildContext context) {
      _showError1(String message,volume,BuildContext context,) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Configuracion_Entrenamiento.error".tr()),
        content:
            Text(message),
        actions: <Widget>[
         
          TextButton(
            child: Text("_Configuracion_Entrenamiento.ok".tr()),
            onPressed: () {
             Navigator.of(context).pop();
                
                   BlocProvider.of<ConfiguracionentrenamientoBloc>(context).add(
                                  VolveraCuestionario(volume:volume
                                      ));
            },
          ),
        ],
      ),
    );
  }
 _showError2(String message,BuildContext context,List<dynamic> materialDisponible1,materialDisponible2,prioridad, int numeroDias,DateTime fechaInicio,bool isFromCrear,String volume) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Configuracion_Entrenamiento.error".tr()),
        content:
            Text(message),
        actions: <Widget>[
         
          TextButton(
            child: Text("_Configuracion_Entrenamiento.ok".tr()),
            onPressed: () {
              Navigator.of(context).pop();
                   (isFromCrear==false) ?
                   BlocProvider.of<ConfiguracionentrenamientoBloc>(context).add(
                                  HeAcabadoCuestionario(true,false,userFase,userBMI,sexo,volume,materialDisponible1: materialDisponible1,materialDisponible2: materialDisponible2,prioridad: prioridad,numeroDias: numeroDias,fechaInicio: fechaInicio
                                      )) : BlocProvider.of<ConfiguracionentrenamientoBloc>(context).add(
                                  HeAcabadoCuestionario(false,true,userFase,userBMI,sexo,null,materialDisponible1: materialDisponible1,materialDisponible2: materialDisponible2,prioridad: prioridad,numeroDias: numeroDias,fechaInicio: fechaInicio
                                      ));
            },
          ),
        ],
      ),
    );
  }
       

    final EstructuracionApi estructuracionApi = EstructuracionApi(userID,principalRepository);
   
    final SeleccionRepository seleccionRepository =
        SeleccionRepository(estructuracionApi);
    return BlocProvider<ConfiguracionentrenamientoBloc>(create: (context) => ConfiguracionentrenamientoBloc(principalRepository,seleccionRepository),
      child: BlocListener<ConfiguracionentrenamientoBloc,ConfiguracionentrenamientoState>(
        listener: (context,state){
          if (state is NoQuieroSeleccionaroYaHeAcabado){
           
           BlocProvider.of<PaginaprincipalBloc>(context)
                          .add(UserHaAcabadoDeConfigurarNuevoEntrenamiento());}
          if (state is Error){
         
           _showError1("_Configuracion_Entrenamiento.ha_ocurrido_un_error".tr(),state.volume,context);
        }
        if (state is Error2){
          print(state.volume);
          print('Ese es el volumen aqui');
           _showError2("_Configuracion_Entrenamiento.ha_ocurrido_un_error".tr(),context,state.materialDisponible1,state.materialDisponible2,state.prioridad,state.numeroDias,state.fechaInicio,state.isFromCrear,state.volume);
        }

    //     if (state is QuieroSeleccionar)
    //      if (principalRepository.puntosActuales < 50 && !principalRepository.isUserPro)
    //         Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => UpsellScreen(principalRepository: principalRepository,)));

    //  if (state is QuieroCrearMiMesociclo)
    //      if (principalRepository.puntosActuales < 50 && !principalRepository.isUserPro)
    //         Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => UpsellScreen(principalRepository: principalRepository,)));
       
        },

        child:BlocBuilder<ConfiguracionentrenamientoBloc,ConfiguracionentrenamientoState>(
           buildWhen: (prevState, currState) =>
              currState is EligiendoConfiguracionentrenamiento ||  (currState is QuieroSeleccionar ) ||  (currState is QuieroCrearMiMesociclo ) || currState is EsperandoACargarNuevoEntrenamiento ,
          
          builder:(BuildContext context, ConfiguracionentrenamientoState state){

          if (state is EligiendoConfiguracionentrenamiento) {
          return    CuestionarioUsuario(seleccionRepository,principalRepository,isUserInit,userFase,userBMI,sexo);}
        
        else if (state is QuieroCrearMiMesociclo)
        {
         
          return CreacionEntrenamiento(principalRepository,state.mesocicloEntrenamiento,userFase:state.userFase,userBmi:state.userBmi,sexo:state.sexo,materialDisponible1:state.materialDisponible1,materialDisponible2:state.materialDisponible2,isTrainer: state.isTrainer,);
        }
        
        else if (state is QuieroSeleccionar){
            
  
          
          return EstructuracionEntrenamiento(state.mesocicloEntrenamiento,state.userFase,state.userBmi,state.sexo,state.materialDisponible1,state.materialDisponible2, state.prioridad,  seleccionRepository,principalRepository,state.numeroDiasEntrenamiento,state.fechaInicio,state.volume);
        }  else if (state is EsperandoACargarNuevoEntrenamiento){

          return PaginaEspera();
        }
        
        
        else {return Text('algo mal');}
         
        } )

      )
      );
    
    
    
    
    
    
  
  }
}

