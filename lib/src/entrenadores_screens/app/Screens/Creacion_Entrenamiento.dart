import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_CREACION_ENTRENAMIENTO/creacionentrenamiento_bloc.dart';
import 'package:entrenaapp/blocs/configuracionentrenamiento_bloc/configuracionentrenamiento_bloc.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/creacion_entrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/creacion_ejercicio.dart';
import './Nombre_Entrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Screens/Creando_entrenamiento.dart';
import '../Screens/creacion_configuracion.dart';
import '../Screens/editar_configuracion.dart';



class CreacionEntrenamiento extends StatelessWidget {
 
  final PrincipalRepository principalRepository;
  final MesocicloEntrenamiento mesocicloEntrenamiento;

   final int userFase;
  final double userBmi;
  final String sexo;
  final List<dynamic> materialDisponible1;
  final List<dynamic> materialDisponible2;
  
  final bool isTrainer;
   
   CreacionEntrenamiento(this.principalRepository,this.mesocicloEntrenamiento,{this.userFase,this.userBmi,this.sexo,this.materialDisponible1,this.materialDisponible2,this.isTrainer=false}
   );
  @override
  Widget build(BuildContext context) {
     List<dynamic> materialDisponible;
    
    if (materialDisponible1 == null || materialDisponible1.isEmpty)
    materialDisponible = ['gym'];
    else 
    materialDisponible=materialDisponible1+materialDisponible2;
    
//  Map<String,int> frecuencia= {
//         'Pecho':0,
//         'Espalda':0,
//         'Biceps':0,
//         'Triceps':0,
//         'Hombro Lateral':0,
//         'Hombro Frontal':0,
//         'Hombro Posterior':0,
//         'Cuadriceps':0,
//         'Femoral':0,
//         'Gluteo':0,
//         'Trapecio':0,
//         'Gemelo':0,
//         'Abs':0

        
        
//          };
//  List<Map<String,int>> listaFrecuencia=[];

// mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
//    listaFrecuencia.add(frecuencia);
// });
  
       _showErrorDialog(String message,int numeroDia,numeroEjercicio,BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Creacion_Entrenamiento.advertencia".tr()),
        content:
            Text(message),
        actions: <Widget>[
         
          TextButton(
            child: Text("_Creacion_Entrenamiento.si".tr()),
            onPressed: () {
             BlocProvider.of<CreacionentrenamientoBloc>(context)
                            .add(QuieroEliminarEjercicio(numeroDia,numeroEjercicio,isConfirm: true));
                  Navigator.of(context).pop();
            },
          ),
           TextButton(
            child: Text("_Creacion_Entrenamiento.no".tr()),
            onPressed: () {
             Navigator.of(context).pop();
                  
            },
          ),
        ],
      ),
    );
  }
 
       _showBorrarConfiguracion(String message,Configuracion config,int numeroDia, numeroEjercicio,BuildContext context ) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Creacion_Entrenamiento.borra_esta_configuracion".tr()),
        content:
            Text(message),
        actions: <Widget>[
         
          TextButton(
            child: Text("_Creacion_Entrenamiento.si".tr()),
            onPressed: () {
            Navigator.of(context).pop();
              BlocProvider.of<CreacionentrenamientoBloc>(context)
                            .add(UserQuiereEliminarConfiguracion(config,numeroDia,numeroEjercicio,true)
                            );
            },
          ),
            TextButton(
            child: Text("_Creacion_Entrenamiento.no".tr()),
            onPressed: () {
            BlocProvider.of<CreacionentrenamientoBloc>(context)
                            .add(UserNoQuiereEliminarConfiguracion(numeroDia,numeroEjercicio)
                            );
                    Navigator.of(context).pop();
                  
            },
          ),
        ],
      ),
    );
  }

CreacionRepository creacionRepository = CreacionRepository(principalRepository,);
    
    return BlocProvider<CreacionentrenamientoBloc>(create: (context) => CreacionentrenamientoBloc(principalRepository,creacionRepository,mesocicloEntrenamiento),
      child: BlocListener<CreacionentrenamientoBloc,CreacionentrenamientoBlocState>(
        listener: (context,state){
          if (state is ErrorSeleccionandoEjercicio)
          {
           Scaffold.of(state.context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("_Creacion_Entrenamiento.ejercicio_no_disponible".tr()), Icon(Icons.error)],
              ),
              backgroundColor: Colors.red,
            ),
          );
      }
      
          
           if (state is VolverAtras)
           {
             
              BlocProvider.of<ConfiguracionentrenamientoBloc>(context)
                    .add(VolveraCuestionario());
           }
          if (state is UserEliminandoEjercicio)
           {

             _showErrorDialog("_Creacion_Entrenamiento.¿estas_seguro_eliminar_ejercicio?".tr(),state.numeroDia,state.numeroEjercicioSeleccionado,context);
           }
        if (state is UserEliminandoConfiguracion)
           {

             _showBorrarConfiguracion("_Creacion_Entrenamiento.¿estas_seguro?".tr(),state.configuracion, state.numeroDia,state.numeroEjercicio,context);
           }
   
        },

        child:
          
          
           BlocBuilder<CreacionentrenamientoBloc,CreacionentrenamientoBlocState>(
           buildWhen: (prevState, currState) =>
              currState is CreacionentrenamientoInitial || currState is  UserCreandoEntrenamiento || currState is QuieroCrearMiMesociclo  || currState is UserEditandoEjercicio|| currState is UserCreandoEjercicio || currState is UserEliminandoEjercicio ,
         // ignore: missing_return
         builder:(BuildContext context, CreacionentrenamientoBlocState state){
        
          if (state is CreacionentrenamientoInitial) {
          return   NombreNuevoEntrenamiento(creacionRepository,isTrainer); }
          if (state is UserCreandoEntrenamiento){
           
            return CreandoEntrenamiento(creacionRepository,principalRepository,mesocicloEntrenamiento,mesocicloEntrenamiento.diasEntrenamiento[state.numeroDia],state.numeroDia,materialDisponible1,materialDisponible2,userFase:userFase,userBmi:userBmi,sexo:sexo,);
          }
        if (state is UserEditandoEjercicio) {

          return EditarConfiguracion(creacionRepository,state.mesocicloEntrenamiento,state.numeroDia,state.numeroEjercicioSeleccionado);
        }
        
         if (state is UserCreandoEjercicio)
         {
           if (state.seHaSeleccionadoEjercicio == true)
           return SeleccionConfiguracion(creacionRepository,principalRepository,state.numeroDia,state.ejercicioSeleccionado,state.comentario,state.indexEjercicio); 
           else 
           return SeleccionEjercicio(creacionRepository,principalRepository,mesocicloEntrenamiento,state.numeroDia,materialDisponible,state.indexEjercicio);
         }
          if (state is UserEliminandoEjercicio)
          return CreandoEntrenamiento(creacionRepository,principalRepository,mesocicloEntrenamiento,mesocicloEntrenamiento.diasEntrenamiento[state.numeroDia],state.numeroDia,materialDisponible1,materialDisponible2,userFase:userFase,userBmi:userBmi,sexo:sexo,);
        if (state is UserEliminandoConfiguracion)
           return Container();
        } ),

      )
      );
    
    
    
    
    
    
  
  }
}