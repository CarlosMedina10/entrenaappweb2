import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:badges/badges.dart';

import 'package:shimmer/shimmer.dart';
import 'package:community_material_icon/community_material_icon.dart';
import '../widgets/button_stepper.dart';
import 'dart:ui';

// import '../providers/auth.dart';

// import 'estructuracion_entrenamiento.dart';

class PaginaPrincipal extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final bool isNewMesociclo;
  final bool isSemanaCompletada;
  final bool isMesocicloCompletado;
  final String displayName;

  PaginaPrincipal(this.principalRepository, this.isNewMesociclo,
      this.isSemanaCompletada, this.isMesocicloCompletado,this.displayName);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  GlobalKey key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    String transformMusculos(String musculo) {
      if (musculo == 'pecho')
        return '_Cuestionario.pecho'.tr();
      else if (musculo == 'espalda')
        return '_Cuestionario.espalda'.tr();
      else if (musculo == 'hombros')
        return '_Cuestionario.hombros'.tr();
      else if (musculo == 'biceps')
        return '_Cuestionario.biceps'.tr();
      else if (musculo == 'triceps')
        return '_Cuestionario.triceps'.tr();
      else if (musculo == 'cuadriceps')
        return '_Cuestionario.cuadriceps'.tr();
      else if (musculo == 'femoral')
        return '_Cuestionario.femoral'.tr();
      else if (musculo == 'gluteo')
        return '_Cuestionario.gluteo'.tr();
      else
        return musculo;
    }

    void launchInstagram() async {
      String url() {
        return "https://www.instagram.com/entrenaapp/?hl=es";
      }

      if (await canLaunch(url())) {
        await launch(url());
      } else {
        throw 'Could not launch ${url()}';
      }
    }

    int semanaActualBuena = widget
            .principalRepository
            .historialEntrenamiento
            .historialEntrenamiento[widget.principalRepository
                    .historialEntrenamiento.historialEntrenamiento.length -
                1]
            .semanaActual +
        1;

    String prioridad = '';

    (widget
                .principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[widget.principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .musculosPrioritarios !=
            null)
        ? (widget
                    .principalRepository
                    .historialEntrenamiento
                    .historialEntrenamiento[widget
                            .principalRepository
                            .historialEntrenamiento
                            .historialEntrenamiento
                            .length -
                        1]
                    .musculosPrioritarios
                    .isEmpty ==
                false)
            ? widget
                .principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[widget.principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .musculosPrioritarios
                .forEach((element) {
                print(element);
                prioridad = prioridad + transformMusculos('$element') + '\n';
              })
            : prioridad = '_PaginaPrincipal.compensado'.tr()
        : prioridad = '_PaginaPrincipal.compensado'.tr();

    final List<String> title = [
      '_PaginaPrincipal.semana_actual'.tr(),
      '_PaginaPrincipal.estadisticas_globales'.tr(),
      '_PaginaPrincipal.estadisticas_individuales'.tr(),
    ];
    final List<String> title2 = [
      '_PaginaPrincipal.numero_de_sesiones_semanales'.tr(),
      '_PaginaPrincipal.modelo'.tr(),
      '_PaginaPrincipal.musculos_prioritarios'.tr(),
    ];
    final List<String> data = [
      semanaActualBuena.toString(),
      '_PaginaPrincipal.ver'.tr(),
      '_PaginaPrincipal.ver'.tr(),
    ];
    final List<String> dataInfoPuntos = [
      '',
      '_PaginaPrincipal.coste_estadisticas'.tr(),
      '_PaginaPrincipal.coste_estadisticas'.tr(),
    ];
    final List<String> data2 = [
      widget
          .principalRepository
          .historialEntrenamiento
          .historialEntrenamiento[widget.principalRepository
                  .historialEntrenamiento.historialEntrenamiento.length -
              1]
          .diasEntrenamiento
          .length
          .toString(),
      '_PaginaPrincipal.hipertrofia'.tr(),
      prioridad,
    ];
    int numLines = '\n'.allMatches(prioridad).length;
    print(numLines);

    final String image = 'assets/images/Fondo4.jpg';
    _showAlert(BuildContext context, String message) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('_PaginaPrincipal.¿estas_seguro?'.tr()),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('_PaginaPrincipal.si'.tr()),
              onPressed: () {
                BlocProvider.of<PaginaprincipalBloc>(context)
                    .add(UserQuiereConfigurar(false));
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('_PaginaPrincipal.no'.tr()),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }

    _showAlert2(BuildContext context, String message) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
     
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        top: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.white),
                //       actions: <Widget>[
                //        Padding(
                //          padding: const EdgeInsets.all(14.0),
                //          child: new Container(child: new Image.asset('assets/images/LogoEntrenaAppFondoNegro.png'),),
                //        )

                // ,
                //       ],
                titleSpacing: MediaQuery.of(context).size.width - 150,

                backgroundColor: Color.fromRGBO(3, 9, 40, 1),

                // stretch: true,

                expandedHeight:
                    (MediaQuery.of(context).orientation == Orientation.portrait)
                        ? MediaQuery.of(context).size.height * 0.18
                        : 50,
                floating: true,
                pinned: true,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  // collapseMode: CollapseMode.pin,
                  stretchModes: const <StretchMode>[StretchMode.blurBackground],
                  titlePadding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 30, right: 8),
                  title: ListTile(
                   
                    title: new Shimmer.fromColors(
                      period: Duration(seconds: 3),
                      baseColor: Colors.grey[300],
                      highlightColor: Color(0xffe46b10),
                      child: Text(
                        (widget.principalRepository.sexo == 'Hombre')
                            ? '_PaginaPrincipal.bienvenido'.tr()
                            : '_PaginaPrincipal.bienvenida'.tr(),
                        maxLines: 1,
                        style: new TextStyle(
                            color: Colors.grey[100],
                            fontSize: (MediaQuery.of(context).size.width > 500)
                                ? 25
                                : 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: new Shimmer.fromColors(
                      period: Duration(seconds: 2),
                      baseColor: Colors.grey[100],
                      highlightColor: Color(0xffe46b10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            AutoSizeText(
                             widget.displayName,
                              style: new TextStyle(
                                color: Colors.grey[300],
                                fontSize:
                                    (MediaQuery.of(context).size.width < 500)
                                        ? 16.0
                                        : 20,
                                // fontWeight: FontWeight.bold
                              ),
                              maxFontSize: 20,
                              minFontSize: 10,
                              maxLines: 1,
                            ),
                         
                       
                          ],
                        ),
                      ),
                    ),
                    // trailing: IconButton(icon:Icon(CommunityMaterialIcons.account_edit,color:Colors.white),onPressed: (){
                    //   BlocProvider.of<PaginaprincipalBloc>(context).add(UserQuiereEditarPerfil());
                    // },),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 9, 40, 1),
                    ),
                    child: Image.asset(
                      image,
                      color: Color.fromRGBO(3, 9, 40, 1),
                      colorBlendMode: BlendMode.color,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ];
          },
          body: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //COMENZAMOS PLANTILLA USUARIO.

                  Container(
                    padding:
                        const EdgeInsets.only(top: 00.0, left: 0.0, right: 0.0),
                    // height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Badge(
                              showBadge: widget
                                      .principalRepository
                                      .historialEntrenamiento
                                      .historialEntrenamiento[widget
                                              .principalRepository
                                              .historialEntrenamiento
                                              .historialEntrenamiento
                                              .length -
                                          1]
                                      .mesocicloCompletado
                                  ? true
                                  : false,
                              badgeColor: Colors.red,
                              shape: BadgeShape.circle,
                              padding: EdgeInsets.all(8),
                              animationDuration: Duration(seconds: 2),
                              animationType: BadgeAnimationType.scale,
                              badgeContent: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              child: InkWell(
                                onTap: () {
                                  widget
                                          .principalRepository
                                          .historialEntrenamiento
                                          .historialEntrenamiento[widget
                                                  .principalRepository
                                                  .historialEntrenamiento
                                                  .historialEntrenamiento
                                                  .length -
                                              1]
                                          .mesocicloCompletado
                                      ? BlocProvider.of<PaginaprincipalBloc>(
                                              context)
                                          .add(UserQuiereConfigurar(false))
                                      : _showAlert(
                                          context,
                                          '_PaginaPrincipal.todavia_no_has_completado'
                                              .tr());
                                },
                                child: Container(
                                  height:
                                      (MediaQuery.of(context).size.width < 600)
                                          ? 70.0
                                          : 120,
                                  width:
                                      (MediaQuery.of(context).size.width < 600)
                                          ? 70.0
                                          : 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Color(0xffe46b10),
                                  ),
                                  child: Center(
                                    child: Shimmer.fromColors(
                                        period: Duration(seconds: 1),
                                        enabled: widget
                                                .principalRepository
                                                .historialEntrenamiento
                                                .historialEntrenamiento[widget
                                                        .principalRepository
                                                        .historialEntrenamiento
                                                        .historialEntrenamiento
                                                        .length -
                                                    1]
                                                .mesocicloCompletado
                                            ? true
                                            : false,
                                        baseColor: Color.fromRGBO(3, 9, 40, 1),
                                        highlightColor: Colors.grey[100],
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.create,
                                              color:
                                                  Color.fromRGBO(3, 9, 40, 1),
                                              size: widget
                                                      .principalRepository
                                                      .historialEntrenamiento
                                                      .historialEntrenamiento[widget
                                                              .principalRepository
                                                              .historialEntrenamiento
                                                              .historialEntrenamiento
                                                              .length -
                                                          1]
                                                      .mesocicloCompletado
                                                  ? (MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          600)
                                                      ? 40
                                                      : 60
                                                  : (MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          600)
                                                      ? 30
                                                      : 50,
                                            ),
                                            widget
                                                    .principalRepository
                                                    .historialEntrenamiento
                                                    .historialEntrenamiento[widget
                                                            .principalRepository
                                                            .historialEntrenamiento
                                                            .historialEntrenamiento
                                                            .length -
                                                        1]
                                                    .mesocicloCompletado
                                                ? Container()
                                                : Icon(
                                                    CommunityMaterialIcons
                                                        .alert_circle,
                                                    color: Color.fromRGBO(
                                                        3, 9, 40, 1),
                                                    size: 20,
                                                  ),
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Shimmer.fromColors(
                              loop: 10,
                              direction: ShimmerDirection.btt,
                              period: Duration(milliseconds: 1000),
                              baseColor: Colors.grey[800],
                              highlightColor: Color(0xffe46b10),
                              enabled: widget
                                      .principalRepository
                                      .historialEntrenamiento
                                      .historialEntrenamiento[widget
                                              .principalRepository
                                              .historialEntrenamiento
                                              .historialEntrenamiento
                                              .length -
                                          1]
                                      .mesocicloCompletado
                                  ? true
                                  : false,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '_PaginaPrincipal.crea_un'.tr(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(3, 9, 40, 1),
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600)
                                              ? 14
                                              : 18),
                                    ),
                                    Text(
                                      '_PaginaPrincipal.nuevo'.tr(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(3, 9, 40, 1),
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600)
                                              ? 14
                                              : 18),
                                    ),
                                    Text(
                                      '_PaginaPrincipal.entrenamiento'.tr(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(3, 9, 40, 1),
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600)
                                              ? 14
                                              : 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width < 600)
                              ? 0
                              : 50,
                        ),
                        Column(
                          children: <Widget>[
                            Badge(
                              showBadge: widget.isNewMesociclo ? true : false,
                              badgeColor: Colors.red,
                              shape: BadgeShape.square,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              position:
                                  BadgePosition.topEnd(top: -20, end: -20),
                              padding: EdgeInsets.all(8),
                              animationDuration: Duration(seconds: 2),
                              animationType: BadgeAnimationType.scale,
                              badgeContent: Text(
                                '_PaginaPrincipal.nuevo2'.tr(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              child: InkWell(
                                onTap: () {
                                  BlocProvider.of<PaginaprincipalBloc>(context)
                                      .add(UserQuiereVisualizar(widget
                                          .principalRepository
                                          .historialEntrenamiento
                                          .historialEntrenamiento[widget
                                                  .principalRepository
                                                  .historialEntrenamiento
                                                  .historialEntrenamiento
                                                  .length -
                                              1]
                                          .semanaActual));
                                },
                                child: Container(
                                  height:
                                      (MediaQuery.of(context).size.width < 600)
                                          ? 55
                                          : 100,
                                  width:
                                      (MediaQuery.of(context).size.width < 600)
                                          ? 210
                                          : 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.0),
                                      border: Border.all(
                                          color: Color.fromRGBO(3, 9, 40, 1),
                                          width: 2),
                                      color: Color(0xffe46b10)),
                                  child: Shimmer.fromColors(
                                    enabled:
                                        widget.isNewMesociclo ? true : false,
                                    period: Duration(milliseconds: 1000),
                                    baseColor: Colors.grey[50],
                                    highlightColor: Color.fromRGBO(3, 9, 40, 1),
                                    child: Center(
                                      child: Row(
                                        children: <Widget>[
                                          widget.isMesocicloCompletado
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 25.0,
                                                          right: 15),
                                                  child: Icon(
                                                    CommunityMaterialIcons
                                                        .alert_circle,
                                                    color: Colors.white,
                                                  ))
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 25.0,
                                                          right: 15),
                                                  child: Icon(
                                                    Icons.fitness_center,
                                                    color: Colors.white,
                                                    size:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width <
                                                                600)
                                                            ? 24
                                                            : 32,
                                                  ),
                                                ),
                                          Text(
                                            '_PaginaPrincipal.entrenamiento2'
                                                .tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .width <
                                                            600)
                                                        ? 18
                                                        : 26),
                                          ),
                                          // widget.isNewMesociclo
                                          //     ? Padding(
                                          //         padding:
                                          //             const EdgeInsets.only(
                                          //                 left: 15.0),
                                          //         child: Icon(
                                          //           CommunityMaterialIcons
                                          //               .new_box,
                                          //           color: Colors.white,
                                          //         ),
                                          //       )
                                          // : Container(),
                                          // widget.isMesocicloCompletado
                                          //     ? Padding(
                                          //         padding:
                                          //             const EdgeInsets.only(
                                          //                 left: 10.0),
                                          //         child: Icon(
                                          //           CommunityMaterialIcons
                                          //               .alert_circle,
                                          //         ),
                                          //       )
                                          //     : Container(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            // Badge(
                            //   showBadge: widget.isSemanaCompletada ? true : false,
                            //   badgeColor: Colors.red,
                            //   shape: BadgeShape.circle,

                            //   // position:
                            //   //     BadgePosition.topRight(top: -20, right: -20),
                            //   padding: EdgeInsets.all(8),
                            //   animationDuration: Duration(seconds: 2),
                            //   animationType: BadgeAnimationType.fade,
                            //   badgeContent: Text(
                            //     '1',
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20),
                            //   ),
                            // child:
                            InkWell(
                              onTap: () {
                                BlocProvider.of<PaginaprincipalBloc>(context)
                                    .add(UserQuiereVisualizarHistorial());
                              },
                              child: Container(
                                height:
                                    (MediaQuery.of(context).size.width < 600)
                                        ? 55
                                        : 100,
                                width: (MediaQuery.of(context).size.width < 600)
                                    ? 210
                                    : 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    border: Border.all(
                                        color: Colors.grey[800], width: 2),
                                    color: Color(0xffe46b10)),
                                child: Shimmer.fromColors(
                                  enabled:
                                      // widget.isSemanaCompletada ? true :
                                      false,
                                  period: Duration(milliseconds: 1000),
                                  baseColor: Colors.blue[50],
                                  highlightColor: Color.fromRGBO(3, 9, 40, 1),
                                  child: Center(
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 25.0),
                                          child: Icon(
                                            Icons.library_books,
                                            color: Colors.white,
                                            size: (MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    600)
                                                ? 24
                                                : 32,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25.0, right: 25),
                                          child: Text(
                                            '_PaginaPrincipal.historial'.tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .width <
                                                            700)
                                                        ? 18
                                                        : 26),
                                          ),
                                        ),

                                        // widget.isSemanaCompletada
                                        //     ? Padding(
                                        //         padding: const EdgeInsets.only(
                                        //             left: 25.0),
                                        //         child: Icon(
                                        //           CommunityMaterialIcons.update,
                                        //           color: Colors.white,
                                        //         ))
                                        //     : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10),
                            // Badge(
                            //     showBadge: true,
                            //     badgeColor: Colors.red,
                            //     shape: BadgeShape.square,
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(25)),
                            //     position:
                            //         BadgePosition.topEnd(top: -20, end: -20),
                            //     padding: EdgeInsets.all(8),
                            //     animationDuration: Duration(milliseconds: 0),
                            //     animationType: BadgeAnimationType.scale,
                            //     badgeContent: Text(
                            //       '¡Nuevo!',
                            //       style: TextStyle(
                            //           color: Colors.white,
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: 20),
                            //     ),
                            // child:
                           
                          ],
                        )
                      ],
                    ),
                  ),

                  // PLANTILLA DEL MESOCICLO ACTUAL

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, left: 20.0, right: 0.0),
                    child: SizedBox(
                      height: (MediaQuery.of(context).size.width < 700)
                          ? 210.0
                          : 380,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: (MediaQuery.of(context).size.width < 700)
                                ? 100
                                : 180,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListView.builder(
                                    padding:
                                        ((MediaQuery.of(context).size.width >
                                                500))
                                            ? EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6)
                                            : EdgeInsets.all(0),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: title.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Material(
                                          color: Colors.blue[50],
                                          child: (index == 0)
                                              ? Container(
                                                  // color: Colors.blue,
                                                  // height: 200.0,
                                                  width: (MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          700)
                                                      ? 100.0
                                                      : 180,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: Color.fromRGBO(
                                                        3, 9, 40, 1),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(title[index],
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xffe46b10),
                                                                fontSize: (MediaQuery.of(context)
                                                                            .size
                                                                            .width <
                                                                        700)
                                                                    ? 16
                                                                    : 22)),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 8.0),
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2.0),
                                                            child: Tooltip(
                                                              message:
                                                                  '_PaginaPrincipal.desliza'
                                                                      .tr(),
                                                              child:
                                                                  StepperTouch(
                                                                counterColor:
                                                                    Color
                                                                        .fromRGBO(
                                                                            3,
                                                                            9,
                                                                            40,
                                                                            1),
                                                                dragButtonColor:
                                                                    Colors.grey[
                                                                        300],
                                                                buttonsColor:
                                                                    Color
                                                                        .fromRGBO(
                                                                            3,
                                                                            9,
                                                                            40,
                                                                            1),
                                                                maxValue: 4,
                                                                initialValue: int
                                                                    .parse(data[
                                                                        index]),
                                                                direction: Axis
                                                                    .horizontal,
                                                                withSpring:
                                                                    true,
                                                                onChanged: (int
                                                                    value) async {
                                                                  BlocProvider.of<
                                                                              PaginaprincipalBloc>(
                                                                          context)
                                                                      .add(UserAcabaDeActualizarSemana(
                                                                          value));
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : GestureDetector(
                                                  onTap:
                                                      (index == 1 || index == 2)
                                                          ? () {
                                                            BlocProvider.of<
                                                                              PaginaprincipalBloc>(
                                                                          context)
                                                                      .add(
                                                                      UserQuiereVerEstadisticas(
                                                                          widget
                                                                              .principalRepository
                                                                              .historialEntrenamiento
                                                                              .historialEntrenamiento[widget
                                                                                  .principalRepository.historialEntrenamiento.historialEntrenamiento.length -
                                                                              1],
                                                                          semanaActualBuena,
                                                                          index),
                                                                    );
                                                                 
                                                            }
                                                          : null,
                                                  child: Container(
                                                    width:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width <
                                                                700)
                                                            ? 100.0
                                                            : 180,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      color: Color.fromRGBO(
                                                          3, 9, 40, 1),
                                                    ),
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4),
                                                            alignment: Alignment
                                                                .center,
                                                            height: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width <
                                                                    700)
                                                                ? 40
                                                                : 70,
                                                            child: Center(
                                                              child: AutoSizeText(
                                                                  title[index],
                                                                  maxFontSize:
                                                                      (MediaQuery.of(context).size.width <
                                                                              700)
                                                                          ? 16
                                                                          : 22,
                                                                  minFontSize:
                                                                      8,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Color(
                                                                          0xffe46b10),
                                                                      fontSize: (MediaQuery.of(context).size.width <
                                                                              700)
                                                                          ? 16
                                                                          : 22)),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width <
                                                                    700)
                                                                ? 60
                                                                : 110,
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 0.0),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                AutoSizeText(
                                                                  data[index],
                                                                  maxFontSize:
                                                                      (MediaQuery.of(context).size.width <
                                                                              700)
                                                                          ? 16
                                                                          : 22,
                                                                  minFontSize:
                                                                      8,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                              .grey[
                                                                          50],
                                                                      fontSize: (MediaQuery.of(context).size.width <
                                                                              700)
                                                                          ? 16
                                                                          : 22),
                                                                ),
                                                                
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: (MediaQuery.of(context).size.width < 700)
                                ? 100.0
                                : 180,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListView.builder(
                                    padding:
                                        ((MediaQuery.of(context).size.width >
                                                500))
                                            ? EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6)
                                            : EdgeInsets.all(0),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: title2.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Material(
                                          color: Colors.blue[50],
                                          child: Container(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    700)
                                                ? 100.0
                                                : 180,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color:
                                                  Color.fromRGBO(3, 9, 40, 1),
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    padding: EdgeInsets.all(4),
                                                    alignment: Alignment.center,
                                                    height:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width <
                                                                700)
                                                            ? 50.0
                                                            : 90,
                                                    child: Center(
                                                      child: AutoSizeText(
                                                          title2[index],
                                                          maxFontSize:
                                                              (MediaQuery.of(context)
                                                                          .size
                                                                          .width <
                                                                      700)
                                                                  ? 16
                                                                  : 22,
                                                          minFontSize: 8,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffe46b10),
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width <
                                                                    700)
                                                                ? 16
                                                                : 22,
                                                          )),
                                                    ),
                                                  ),
                                                  Container(
                                                    height:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width <
                                                                700)
                                                            ? 50.0
                                                            : 90,
                                                    padding: EdgeInsets.all(4),
                                                    child: AutoSizeText(
                                                      data2[index],
                                                      maxFontSize:
                                                          (MediaQuery.of(context)
                                                                      .size
                                                                      .width <
                                                                  700)
                                                              ? 16
                                                              : 22,
                                                      minFontSize: 12,
                                                      maxLines: (numLines >=
                                                                  3 &&
                                                              index == 2)
                                                          ? 3
                                                          : (numLines >= 2 &&
                                                                  index == 2)
                                                              ? 2
                                                              : 1,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey[50],
                                                        fontSize: (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width <
                                                                700)
                                                            ? 16
                                                            : 22,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // AQUI IRA EL % DE CARGA DEL ENTRENAMIENTO

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, left: 10),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: (5 * MediaQuery.of(context).size.width) / 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color:
                                // Color(0xffe46b10),
                                Color.fromRGBO(3, 9, 40, 1),
                          ),
                          padding: EdgeInsets.all(10),
                          child: CircularPercentIndicator(
                            backgroundColor: Colors.blue[50],
                            radius: (MediaQuery.of(context).size.width > 700)
                                ? 160
                                : (MediaQuery.of(context).size.width > 330)
                                    ? 80
                                    : 60.0,
                            lineWidth: 10.0,
                            percent: (widget
                                    .principalRepository
                                    .historialEntrenamiento
                                    .historialEntrenamiento[widget
                                            .principalRepository
                                            .historialEntrenamiento
                                            .historialEntrenamiento
                                            .length -
                                        1]
                                    .numeroDiasCompletados /
                                widget
                                    .principalRepository
                                    .historialEntrenamiento
                                    .historialEntrenamiento[widget
                                            .principalRepository
                                            .historialEntrenamiento
                                            .historialEntrenamiento
                                            .length -
                                        1]
                                    .numeroDias),

                            center: Icon(
                              Icons.fitness_center,
                              size: (MediaQuery.of(context).size.width > 700)
                                  ? 50
                                  : 30,
                              color: Colors.grey[50]
                              // Color(0xffe46b10)
                              ,
                            ),
                            //   ],
                            // ),
                            progressColor:
                                // Colors.grey[800],
                                Color(0xffe46b10),
                            // fillColor: Colors.blue,
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 18),
                        Container(
                          width:
                              ((12 * MediaQuery.of(context).size.width) / 18) -
                                  20,
                          child: Column(
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: '_PaginaPrincipal.h'.tr(),
                                    // style: GoogleFonts.portLligatSans(
                                    //   textStyle:
                                    //       Theme.of(context).textTheme.display1,
                                    //   fontSize:
                                    //       (MediaQuery.of(context).size.width >
                                    //               700)
                                    //           ? 30
                                    //           : 18,
                                    //   fontWeight: FontWeight.w700,
                                    //   color: Colors.orange,
                                    //   // color: Color(0xffe46b10),
                                    // ),
                                    children: [
                                      TextSpan(
                                        text:
                                            '_PaginaPrincipal.as_completado_un'
                                                .tr(),
                                        style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  700)
                                              ? 30
                                              : 18,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${((widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].numeroDiasCompletados / widget.principalRepository.historialEntrenamiento.historialEntrenamiento[widget.principalRepository.historialEntrenamiento.historialEntrenamiento.length - 1].numeroDias) * 100).toStringAsFixed(1)} %',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  700)
                                              ? 30
                                              : 18,
                                        ),
                                      ),
                                    ]),
                              ),
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: '_PaginaPrincipal.de_tu_entrenamiento'
                                      .tr(),
                                  // style: GoogleFonts.portLligatSans(
                                  //   textStyle:
                                  //       Theme.of(context).textTheme.display1,
                                  //   fontSize:
                                  //       (MediaQuery.of(context).size.width >
                                  //               700)
                                  //           ? 30
                                  //           : 18,
                                  //   fontWeight: FontWeight.w700,
                                  //   // color: Colors.grey[800],
                                  //   color: Colors.orange,
                                  // ),
                                  // TextSpan(
                                  //     text: 'de tu entrenamiento.',
                                  //     style: TextStyle(
                                  //         color: Colors.grey[800], fontSize: 18),
                                  //   ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  

                  // Container(
                  //   width: MediaQuery.of(context).size.width*0.9,
                  //   padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.1),
                  //   child: Text('¿Necesitas ayuda profesional personalizada? \n \n ¿Te gustaría conocer los secretos de un campeón del mundo de culturismo natural?'))

                  //AQUI VAN LOS BOTONES
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
