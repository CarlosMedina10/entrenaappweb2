
import 'package:entrenaapp/blocs/B_MESCOCICLO/mesociclo_bloc_bloc.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/Card_DiaEntrenamiento.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SemanaEntrenamiento extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final int semanaEntrenamiento;
  SemanaEntrenamiento(this.principalRepository, this.semanaEntrenamiento);

 

  @override
  _SemanaEntrenamientoState createState() => _SemanaEntrenamientoState();
}

class _SemanaEntrenamientoState extends State<SemanaEntrenamiento> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // List<List<List<String>>> ejerciciosmesociclo = routeArgs['ejerciciosmesociclo'];

    return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<PaginaprincipalBloc>(context)
              .add(UserHaAcabadoDeVisualizar(false, false, false, false));
          return false;
        },
        child: Scaffold(
          backgroundColor: Color.fromRGBO(3, 9, 40, 1),

          floatingActionButton: Builder(
            builder: (context) => FabCircularMenu(
                key: fabKey,
                alignment: Alignment.bottomCenter,
                ringWidth: 120,
                // fabSize: 200, Tamaño del icono de abajo a la derecha
                fabColor: Colors.orange[50],
                fabCloseColor: Color(0xffe46b10),
                // fabElevation: 10000,
                ringDiameter: 550,
                ringColor:
                    // Color(0xffe46b10),
                    // Colors.grey[800],
                    Color.fromRGBO(3, 9, 40, 1),
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          tooltip: "_Semana_Entrenamiento.ir_semana_1".tr(),
                          icon: Icon(
                            Icons.looks_one, size: 35,
                            color: Colors.grey[200],
                            // Color(0xffe46b10)
                          ),
                          onPressed: () {
                            if (fabKey.currentState.isOpen) {
                              BlocProvider.of<MesocicloBlocBloc>(context)
                                  .add(UserQuiereCambiarSemana(0));
                              //  datoshistorialentrenamiento.irasemana(0);
                              fabKey.currentState.close();
                            } else {
                              fabKey.currentState.open();
                            }
                          }),
                      SizedBox(height: 5),
                      Text(
                       "_Semana_Entrenamiento.semana_1".tr(),
                        style: TextStyle(
                            color: Colors.grey[200],
                            // Color(0xffe46b10),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          tooltip: "_Semana_Entrenamiento.ir_semana_2".tr(),
                          icon: Icon(
                            Icons.looks_two,
                            size: 35,
                            color:
                                // Color(0xffe46b10)
                                Colors.grey[200],
                          ),
                          onPressed: () {
                            if (fabKey.currentState.isOpen) {
                              BlocProvider.of<MesocicloBlocBloc>(context)
                                  .add(UserQuiereCambiarSemana(1));
                              //  datoshistorialentrenamiento.irasemana(1);
                              fabKey.currentState.close();
                            } else {
                              fabKey.currentState.open();
                            }
                          }),
                      SizedBox(height: 5),
                      Text(
                        "_Semana_Entrenamiento.semana_2".tr(),
                        style: TextStyle(
                            color: Colors.grey[200],
                            // Color(0xffe46b10),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          tooltip: "_Semana_Entrenamiento.ir_semana_3".tr(),
                          icon: Icon(
                            Icons.looks_3, size: 35,
                            color: Colors.grey[200],
                            // Color(0xffe46b10)
                          ),
                          onPressed: () {
                            if (fabKey.currentState.isOpen) {
                              BlocProvider.of<MesocicloBlocBloc>(context)
                                  .add(UserQuiereCambiarSemana(2));
                              //  datoshistorialentrenamiento.irasemana(2);
                              fabKey.currentState.close();
                            } else {
                              fabKey.currentState.open();
                            }
                          }),
                      SizedBox(height: 5),
                      Text(
                         "_Semana_Entrenamiento.semana_3".tr(),
                        style: TextStyle(
                            color: Colors.grey[200],
                            // Color(0xffe46b10),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          tooltip: "_Semana_Entrenamiento.ir_semana_4".tr(),
                          icon: Icon(
                            Icons.looks_4, size: 35,
                            color: Colors.grey[200],
                            // Color(0xffe46b10)
                          ),
                          onPressed: () {
                            if (fabKey.currentState.isOpen) {
                              BlocProvider.of<MesocicloBlocBloc>(context)
                                  .add(UserQuiereCambiarSemana(3));
                              //  datoshistorialentrenamiento.irasemana(3);
                              fabKey.currentState.close();
                            } else {
                              fabKey.currentState.open();
                            }
                          }),
                      SizedBox(height: 5),
                      Text(
                         "_Semana_Entrenamiento.semana_4".tr(),
                        style: TextStyle(
                            color: Colors.grey[200],
                            // Color(0xffe46b10),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ]),
          ),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () async{
            
                                          BlocProvider.of<PaginaprincipalBloc>(context).add(
                    UserHaAcabadoDeVisualizar(false, false, false, false));
              

              
               
                        
                
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.solidEdit,
                  size: 30,
                  color: Color.fromRGBO(3, 9, 40, 1),
                ),
                onPressed: () {
                  BlocProvider.of<MesocicloBlocBloc>(context).add(
                      UserQuiereEditarMesociclo(widget
                          .principalRepository
                          .historialEntrenamiento
                          .historialEntrenamiento[widget
                              .principalRepository
                              .historialEntrenamiento
                              .historialEntrenamiento
                              .length -
                          1]));
                },
              )
            ],
            backgroundColor: Colors.orange[800],
            title: 
            // (MediaQuery.of(context).orientation ==
            //         Orientation.landscape)
            //     ? Text(
            //         'Mesociclo ${widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].nombreMesociclo} - Semana ${widget.semanaEntrenamiento + 1}')
            //     : 
                FittedBox(
                    child: Text(
                        "_Semana_Entrenamiento.mesociclo_titulo".tr(args: [widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].nombreMesociclo])),
                  ),

            // automaticallyImplyLeading: false,
            //   actions: <Widget>[
            //   IconButton(
            //     icon: Icon(Icons.exit_to_app),
            //     onPressed: () {

            //      BlocProvider.of<PaginaprincipalBloc>(context).add(UserHaAcabadoDeVisualizar(false,false,false,false));

            //     },
            //   )
            // ],
          ),
          // drawer: AppDrawerMesocicloEntrenamiento(),
          body: Container(
            child: (MediaQuery.of(context).orientation ==
                    Orientation.landscape)
                ? Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GridView(
                      children: widget
                          .principalRepository
                          .historialEntrenamiento
                          .historialEntrenamiento[widget
                                  .principalRepository
                                  .historialEntrenamiento
                                  .historialEntrenamiento
                                  .length -
                              1]
                          .diasEntrenamiento
                          .map((diaEntrenamiento) => CardDiaEntrenamiento(
                              diaEntrenamiento,
                              widget
                                      .principalRepository
                                      .historialEntrenamiento
                                      .historialEntrenamiento[widget
                                              .principalRepository
                                              .historialEntrenamiento
                                              .historialEntrenamiento
                                              .length -
                                          1]
                                      .diasEntrenamiento
                                      .indexOf(diaEntrenamiento) +
                                  1,
                              widget.semanaEntrenamiento,
                              (widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento.indexOf(diaEntrenamiento)) * 0,
                              0,
                              (widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento.indexOf(diaEntrenamiento) + 1) * 1000))
                          .toList(),
                      gridDelegate:
                          SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent:
                                  MediaQuery.of(context).size.width / 2,
                              mainAxisSpacing: 15,
                              childAspectRatio: 5 / 2,
                              crossAxisSpacing: 15),
                    ),
                  )
                : ListView(
                    children: widget
                        .principalRepository
                        .historialEntrenamiento
                        .historialEntrenamiento[widget
                                .principalRepository
                                .historialEntrenamiento
                                .historialEntrenamiento
                                .length -
                            1]
                        .diasEntrenamiento
                        .map((diaEntrenamiento) => CardDiaEntrenamiento(
                            diaEntrenamiento,
                            widget
                                    .principalRepository
                                    .historialEntrenamiento
                                    .historialEntrenamiento[widget
                                            .principalRepository
                                            .historialEntrenamiento
                                            .historialEntrenamiento
                                            .length -
                                        1]
                                    .diasEntrenamiento
                                    .indexOf(diaEntrenamiento) +
                                1,
                            widget.semanaEntrenamiento,
                            (widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento.indexOf(diaEntrenamiento)) * 0,
                            0,
                            (widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].diasEntrenamiento.indexOf(diaEntrenamiento) + 1) * 500))
                        .toList(),
                    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2,
                    //   // mainAxisSpacing: 15,
                    //   crossAxisSpacing: 15)
                    // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    //     maxCrossAxisExtent: 100,
                    //     // // childAspectRatio: 3 / 2,
                    //     crossAxisSpacing: 15,
                    //     mainAxisSpacing: 10
                    //     ),
                  ),
          ),

          //    IconButton(icon: Icon(Icons.power_settings_new), onPressed: (){

          //  if ( Provider.of<Auth>(context,listen: false).isLoginWithGoogle == true) {Provider.of<Auth>(context,listen: false).signOutGoogle(); Navigator.of(context).pushReplacementNamed('./');} else
          //   {Provider.of<Auth>(context,listen: false).signOut();
          //   Navigator.of(context).pushReplacementNamed('./');
          //   }
          // })
        ));
  }
}
