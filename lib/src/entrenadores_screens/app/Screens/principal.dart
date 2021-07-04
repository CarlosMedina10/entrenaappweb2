import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaapp/apis/api_entrenamiento.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/EstadisticasIndividuales.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/PaginaPrincipal.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/intro.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/Screens/seleccionEntrenamientoAVisualizar.dart';
import 'package:entrenaapp/src/entrenadores_screens/app/widgets/pagina_Espera.dart';
import 'package:firebase/firebase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Screens/Entrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './ConfiguracionEntrenamiento.dart';
import 'package:easy_localization/easy_localization.dart';
import '../Screens/EstadisticasGlobales.dart';

class Principal extends StatelessWidget {
  static const routename = '/PaginaPrincipal';
  final String userID;
  
  final String displayName;
 
  
 
  final Database database;

  Principal(this.userID, this.displayName,
       this.database);
  @override
  Widget build(BuildContext context) {
    final EntrenamientoApi estructuracionApi = EntrenamientoApi(database);
    final PrincipalRepository principalRepository = PrincipalRepository(
        estructuracionApi, database);

    _showError1(
        String message, BuildContext context,) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("_Principal.error".tr()),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("_Principal.ok".tr()),
              onPressed: () {
                Navigator.of(context).pop();
                BlocProvider.of<PaginaprincipalBloc>(context)
                    .add(UserStarted(userID, ));
              },
            ),
          ],
        ),
      );
    }

    _showError2(
        String message, BuildContext context, ) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("_Principal.error".tr()),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("_Principal.ver_video".tr()),
              onPressed: () {
                principalRepository.cargarVideo();
              },
            ),
            TextButton(
              child: Text("_Principal.ok".tr()),
              onPressed: () {
                Navigator.of(context).pop();
              
              },
            ),
          ],
        ),
      );
    }

   

    // showEnhorabuena2(
    //   String message,
    //   BuildContext context,
    // ) {
    //   showPlatformDialog(
    //     context: context,
    //     builder: (_) => BasicDialogAlert(
    //       title: Text("¡Enhorabuena!"),
    //       content: Text(message),
    //       actions: <Widget>[
    //         Container(
    //           child: Column(
    //             children: <Widget>[
    //               Container(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: <Widget>[
    //                     Material(
    //                       color: Colors.transparent,
    //                       child: IconButton(
    //                           icon: Icon(
    //                             FontAwesomeIcons.facebook,
    //                             color: Color.fromRGBO(59, 89, 152, 1),
    //                             size: 20,
    //                           ),
    //                           onPressed: () async {
    //                             final byteData = await rootBundle
    //                                 .load('assets/images/promoInstagram.jpg');
    //                             final file = File(
    //                                 '${(await getTemporaryDirectory()).path}/assets/images/promoInstagram.jpg');

    //                             File createdFile =
    //                                 await file.create(recursive: true);
    //                             if (await createdFile.exists()) {
    //                               print('$file');
    //                               await file.writeAsBytes(byteData.buffer
    //                                   .asUint8List(byteData.offsetInBytes,
    //                                       byteData.lengthInBytes));
    //                               Platform.isAndroid
    //                                   ? SocialShare.shareFacebookStory(
    //                                           file.path,
    //                                           "#030928",
    //                                           "#030928",
    //                                           "https://google.com",
    //                                           appId: "719363178801229")
    //                                       .then((data) {})
    //                                   : SocialShare.shareFacebookStory(
    //                                           file.path,
    //                                           "#030928",
    //                                           "#030928",
    //                                           "https://google.com")
    //                                       .then((data) {});
    //                             }
    //                           }),
    //                     ),
    //                     Material(
    //                       color: Colors.transparent,
    //                       child: IconButton(
    //                         icon: Icon(
    //                           FontAwesomeIcons.instagram,
    //                           color: Color.fromRGBO(225, 48, 108, 1),
    //                           size: 20,
    //                         ),
    //                         onPressed: () async {
    //                           final byteData = await rootBundle
    //                               .load('assets/images/FondoInstagram.jpg');
    //                           final file = File(
    //                               '${(await getTemporaryDirectory()).path}/assets/images/FondoInstagram.jpg');

    //                           File createdFile =
    //                               await file.create(recursive: true);
    //                           if (await createdFile.exists()) {
    //                             print('$file');
    //                             await file.writeAsBytes(byteData.buffer
    //                                 .asUint8List(byteData.offsetInBytes,
    //                                     byteData.lengthInBytes));
    //                             print('$file');
    //                             final byteData2 = await rootBundle
    //                                 .load('assets/images/promoInstagram.jpg');
    //                             final image = File(
    //                                 '${(await getTemporaryDirectory()).path}/assets/images/promoInstagram.jpg');

    //                             File createdFile2 =
    //                                 await image.create(recursive: true);
    //                             if (await createdFile2.exists()) {
    //                               print('$file');
    //                               await image.writeAsBytes(byteData2.buffer
    //                                   .asUint8List(byteData2.offsetInBytes,
    //                                       byteData2.lengthInBytes));
    //                             }
    //                             try {
    //                               SocialShare.shareInstagramStorywithBackground(
    //                                       image.path,
    //                                       "#666666",
    //                                       "#666666",
    //                                       "https://deep-link-url",
    //                                       backgroundImagePath: file.path)
    //                                   .then((data) {});
    //                             } catch (error) {
    //                               // _showError2('Algo Salio mal');
    //                             }
    //                           }
    //                         },
    //                       ),
    //                     ),
    //                     Material(
    //                       color: Colors.transparent,
    //                       child: IconButton(
    //                         icon: Icon(
    //                           FontAwesomeIcons.whatsapp,
    //                           color: Colors.green,
    //                           size: 20,
    //                         ),
    //                         onPressed: () {
    //                           SocialShare.shareWhatsapp(
    //                                   "Estoy llevando mis entrenamientos con EntrenaAPP. La mejor aplicación de entrenamiento. ¡Descárgatela gratis! \n PlayStore: https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es \n AppStore: https://apps.apple.com/us/app/id1533801846")
    //                               .then((data) {});
    //                         },
    //                       ),
    //                     ),
    //                     Material(
    //                       color: Colors.transparent,
    //                       child: IconButton(
    //                         icon: Icon(
    //                           FontAwesomeIcons.twitter,
    //                           color: Color.fromRGBO(0, 172, 238, 1),
    //                           size: 20,
    //                         ),
    //                         onPressed: () async {
    //                           SocialShare.shareTwitter(
    //                                   "Estoy llevando mis entrenamientos con EntrenaAPP. La mejor aplicación de entrenamiento. ¡Descárgatela gratis en PlayStore y AppStore!",
    //                                   hashtags: [
    //                                     "entrenamiento",
    //                                     "nutricion",
    //                                     "culturismo",
    //                                     "fitness"
    //                                   ],
    //                                   url:
    //                                       "https://play.google.com/store/apps/details?id=com.entrena_app.carlos10medina&hl=es",
    //                                   trailingText: "\nhello")
    //                               .then((data) {});
    //                         },
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 5,
    //               ),
    //               Row(
    //                 children: <Widget>[
    //                   Text(
    //                     '¡Compártelo en redes sociales!',
    //                     style: TextStyle(
    //                         fontSize: (MediaQuery.of(context).size.height > 550)
    //                             ? 14
    //                             : 14,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.grey[900]),
    //                   ),
    //                   SizedBox(width: 20),
    //                   IconButton(
    //                     icon: Icon(Icons.close_outlined),
    //                     onPressed: () {
    //                       // BlocProvider.of<PaginaprincipalBloc>(context).add(
    //                       // UserHaAcabadoDeVisualizar(
    //                       //     false,false));
    //                       Navigator.pop(context);
    //                     },
    //                   ),
    //                   // IconButton(iconSize:18,icon: Icon(Icons.exit_to_app), onPressed: null),
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    _showAlert(BuildContext context, String message) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("_Principal.¿estas_seguro?".tr()),
          content: Text(message),
          actions: <Widget>[
            TextButton(
             child: Text("_Principal.si".tr()),
              onPressed: () {
                // firebaseUser.delete();
                BlocProvider.of<PaginaprincipalBloc>(context)
                    .add(UserEliminaCuenta());

                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("_Principal.no".tr()),
              onPressed: () {
                BlocProvider.of<PaginaprincipalBloc>(context)
                    .add(UserNoEliminaCuenta());
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }

    // ignore: close_sinks
    PaginaprincipalBloc blocPrincipal =
        PaginaprincipalBloc(principalRepository);
   

    return Scaffold(
        body: BlocProvider<PaginaprincipalBloc>(
      create: (context) => blocPrincipal,
      child: BlocListener<PaginaprincipalBloc, PaginaprincipalState>(
        listener: (context, state) {
       
          //   else
          //     showEnhorabuena2(
          //         'Has completado un nuevo día de entrenamiento', context);
          // }
          // if (state is UserPaginaPrincipal &&
          //     state.diaCompletado == true &&
          //     state.isSemanaCompletada)
          //   showEnhorabuena2(
          //       'Has completado una nueva semana de entrenamiento', context);
          // if (state is UserPaginaPrincipal &&
          //     state.diaCompletado == true &&
          //     state.isMesocicloCompletado)
          //   showEnhorabuena2(
          //       'Has completado tu mesociclo de entrenamiento', context);
          if (state is UserPaginaPrincipal &&
              state.userEliminandoCuenta == true)
            _showAlert(
              context,
              "_Principal.advertencia_eliminar_cuenta".tr()
            );
        
          if (state is ErrorState) if (state.errorDeConexion == true)
            _showError1(
                "_Principal.error_conexion_internet".tr(),
                context,
                );
          else if (state.errorDesconocidoObteniendoMesociclos)
            _showError2(
                "_Principal.error_desconocido".tr(),
                context,
                );
          else if (state.errorActualizandoUnMesociclo == true)
            _showError1(
                 "_Principal.error_entrenamiento_completado".tr(),
                context,
                );
          else if (state.errorActualizandoSemana == true)
            _showError1(
                 "_Principal.error_actualizando_semana".tr(),
                context,
                );
          else if (state.errorEliminandoCuenta == true)
            _showError1(
                "_Principal.error_eliminando_cuenta".tr(),
                context,
                );
          else if (state.errorOtro == true)
            _showError1( "_Principal.error2".tr(), context, );

          if (state is MostrandoSnackBar)
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: AutoSizeText(
                           "_Principal.ha_iniciado_reunion".tr(args: [state.nombreCreador]),
                          maxFontSize: 16,
                          minFontSize: 6,
                        )),
                    IconButton(
                        icon: Icon(FontAwesomeIcons.eye),
                        onPressed: () {
              
                          blocPrincipal.add(UserQuiereIrASalaDeChats(
                              nombreSala: state.nombreSala,
                              asuntoSala: state.asuntoSala,
                              nombreCreador: state.nombreCreador,
                              idCreador: state.idCreador,
                              costePuntos: state.costePuntos,
                              charlaPremium: state.charlaPremium,
                              permitirAudio: state.permitirAudio,
                              permitirCamara: state.permitirCamara,
                              fechaInicio: state.fechaInicio));
                        })
                  ],
                ),
              ));
        },
        child: BlocBuilder<PaginaprincipalBloc, PaginaprincipalState>(
            buildWhen: (prevState, currState) =>
                (currState is! ErrorState && currState is! MostrandoSnackBar),
            builder: (BuildContext context, PaginaprincipalState state) {
              if (state is CargandoDatos) {
                if (state.inicializando) {
                  BlocProvider.of<PaginaprincipalBloc>(context)
                      .add(UserStarted(userID, ));
                  return PaginaEspera();
                } else
                  return PaginaEspera();
              }

              // if (state is CargandoDatosNuevoMesociclo) {
              //   return Center(
              //       child: Column(
              //     children: <Widget>[
              //       CircularProgressIndicator(),
              //       Container(
              //           child: Text(
              //               'Espere mientras cargamos su ${state.mesocicloEntrenamiento.nombreMesociclo}'))
              //     ],
              //   ));
              // }

              else if (state is UserPaginaPrincipal &&
                  state.isUserInit == false &&
                  !state.isReevaluate) {
                return PaginaPrincipal(
                  principalRepository,
                  state.isNewMesociclo,
                  state.isSemanaCompletada,
                  state.isMesocicloCompletado,
                  displayName
                );
              }  else if (state is UserConfigurando) {
                return ConfiguracionEntrenamiento(
                    principalRepository,
                    userID,
                
                    state.isUserInit,
                    state.puntuacionFinal,
                    state.userFase,
                    state.userBMI,
                    state.sexo);
              } else if (state is UserVisualizandoHistorial) {
                return Visualizacion(principalRepository);
              }    else if (state is UserVisualizando) {
                return Entrenamiento(principalRepository);
              
              } else if (state is UserViendoEstadisticas) {
                if (state.tipo == 1)
                  return EstadisticasGlobales(
                      state.mesocicloEntrenamiento, state.semanaEntrenamiento);
                else
                  return EstadisticasIndividuales(
                    state.mesocicloEntrenamiento,
                  );
              } else
                return PaginaPrincipal(
                  principalRepository,
                  false,
                  false,
                  false,
                  displayName
                );
            }),
      ),
    ));
  }
}
