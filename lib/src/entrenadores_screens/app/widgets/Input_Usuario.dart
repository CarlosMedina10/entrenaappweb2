
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/blocs/B_CARD_EJERCICIO/card_ejercicio_bloc.dart';
import 'package:entrenaapp/blocs/B_INPUT_USUARIO/inputusuario_bloc.dart';
import 'package:entrenaapp/repository/repo_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Inputusuario extends StatefulWidget {
  final PrincipalRepository principalRepository;
  final CardEjercicioBloc blocEjercicio;
  final int numeroEjercicio;
  final int numeroDia;
  final int serie;
  final int semana;
  Inputusuario(this.principalRepository, this.blocEjercicio,
      this.numeroEjercicio, this.numeroDia, this.serie, this.semana);

  @override
  _InputusuarioState createState() => _InputusuarioState();
}

class _InputusuarioState extends State<Inputusuario> {
  String cargaSerien;
  String repeticionesSerien;

  final comentarioKey = new GlobalKey<FormState>();
  final cargaKey = new GlobalKey<FormState>();
  final repeticionesKey = new GlobalKey<FormState>();
  final cargayrepeticionesKey = new GlobalKey<FormState>();

  _showError1(String message, BuildContext context, bool isComentario) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("_Input_Usuario.error".tr()),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("_Input_Usuario.ok".tr()),
            onPressed: () {
              BlocProvider.of<InputusuarioBloc>(context).add(HeCancelado(
                  widget.numeroDia,
                  widget.numeroEjercicio,
                  widget.semana,
                  widget.serie,
                  isComentario));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  Container buildCardAddComentarios(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Container(
      margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.6),
      padding: const EdgeInsets.symmetric(horizontal:8,vertical:4),
      child: FittedBox(
        child: InkWell(
          onTap: onTap,
          child: Card(
            color: Color.fromRGBO(3, 9, 40, 1),
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: FittedBox(
                      child: Text(
                        pageName,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[50],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(icon, size: 20, color: Colors.grey[50]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildCardWithIcon(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8,vertical:4),
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Color.fromRGBO(3, 9, 40, 1),
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: (MediaQuery.of(context).orientation ==
                            Orientation.landscape)
                        ? Text(
                            pageName,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[50],
                            ),
                            textAlign: TextAlign.center,
                          )
                        : FittedBox(
                            child: Text(
                              pageName,
                              style: TextStyle(
                                color: Colors.grey[50],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(icon, size: 20, color: Colors.grey[50]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildCardWithIconFinal(IconData icon, context, VoidCallback onTap,
      VoidCallback onTap1, String carga, repeticion, int serie) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8,vertical:4),
      child: Card(
        color: Color.fromRGBO(3, 9, 40, 1),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "_Input_Usuario.serie".tr(args:[(serie+1).toString()]),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[50],
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 25,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(4),
                  child: FittedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          carga,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[900],
                          ),
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(icon, size: 20, color: Colors.grey[900]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: onTap1,
                child: Container(
                  height: 25,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(4),
                  child: FittedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          repeticion,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[900],
                          ),
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(icon, size: 20, color: Colors.grey[900]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String comentario;

    void _showDialogEditComentario(BuildContext context, String text) {
      comentario = text;

      Alert(
          closeFunction: () {
            
            Navigator.pop(context);
            // realmente la serie aqui no la necesitamos para nada (si el isComentario=true) ya que para actualizar un comentario no hay serie.
        //  BlocProvider.of<InputusuarioBloc>(context).add(HeCancelado(
        //         widget.numeroDia,
        //         widget.numeroEjercicio,
        //         widget.semana,
        //         widget.serie,
        //         true));   
          },
          context: context,
          title: "_Input_Usuario.añade_un_nuevo_comentario".tr(),
          content: Form(
            key: comentarioKey,
            autovalidate: false,
            child: TextFormField(
              textInputAction: TextInputAction.newline,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: TextEditingController()..text = '$text',
              onTap: () {
                comentario = text;
              },
              onChanged: (text) {
                comentario = text;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.fitness_center),
                labelText: "_Input_Usuario.añade_un_comentario".tr(),
              ),
              validator: (text) {
                if (text.isEmpty)
                  return "_Input_Usuario.introduce_comentario".tr();
                else if (text.length > 100)
                  return "_Input_Usuario.comentario_muy_largo".tr();
              },
            ),
          ),
          buttons: [
            DialogButton(
              onPressed: () async {
                final form = comentarioKey.currentState;
                if (form.validate() == true) {
                  form.save();
                  BlocProvider.of<InputusuarioBloc>(context).add(
                      HeAcabadoDeActualizarComentario(widget.numeroDia,
                          widget.numeroEjercicio, widget.semana, comentario));
                  Navigator.of(context).pop();
                }
              },
              child: Text(
                "_Input_Usuario.guardar_cambios".tr(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
    }

    void _showDialogAdd(BuildContext context) {
      Alert(
          closeFunction: () {
           Navigator.pop(context);
          },
          context: context,
          title: "_Input_Usuario.introduce_carga_y_repeticiones".tr(args:[(widget.serie+1).toString()]),
          content: Form(
            key: cargayrepeticionesKey,
            autovalidate: false,
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  // controller: _controller1,
                  onChanged: (text) {
                    cargaSerien = text;
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.fitness_center),
                    labelText: "_Input_Usuario.carga_serie".tr(args:[(widget.serie+1).toString()]),
                  ),
                  validator: (text) {
                    if (text.isEmpty)
                      return "_Input_Usuario.introduce_la_carga".tr();
                    else if (double.tryParse(text) == null)
                      return "_Input_Usuario.introduce_un_numero".tr();
                    else if (double.parse(text) >= 1000)
                      return "_Input_Usuario.carga_excesiva".tr();
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  // controller: _controller2,
                  onChanged: (text) {
                    repeticionesSerien = text;
                  },

                  decoration: InputDecoration(
                    icon: Icon(Icons.favorite),
                    labelText:  "_Input_Usuario.repeticiones_serie".tr(args:[(widget.serie+1).toString()]),
                  ),
                  validator: (text) {
                    if (text.isEmpty)
                      return "_Input_Usuario.introduce_las_repeticiones".tr();
                    else if (double.tryParse(text) == null)
                      return "_Input_Usuario.introduce_un_numero".tr();
                    else if (double.parse(text) >= 1000)
                      return "_Input_Usuario.numero_de_repeticiones_excesivo".tr();
                  },
                ),
              ],
            ),
          ),
          buttons: [
            DialogButton(
              onPressed: () async {
                final form = cargayrepeticionesKey.currentState;
                if (form.validate() == true) {
                  form.save();
                  BlocProvider.of<InputusuarioBloc>(context).add(
                      HeAcabadoDeActualizar(
                          widget.numeroDia,
                          widget.numeroEjercicio,
                          widget.semana,
                          widget.serie,
                          cargaSerien,
                          repeticionesSerien));
                  Navigator.of(context).pop();
                }
              },
              child: Text(
                "_Input_Usuario.guardar".tr(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
    }

    void _showDialogEditCarga(
      BuildContext context,
      int i,
      n,
    ) {
      Alert(
          closeFunction: () {
         Navigator.pop(context);
          },
          context: context,
          title: "_Input_Usuario.edita_carga".tr(args: [(n+1).toString()]),
          content: Form(
            key: cargaKey,
            autovalidate: false,
            child: TextFormField(
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              onChanged: (text) {
                cargaSerien = text;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.fitness_center),
                labelText: "_Input_Usuario.carga_serie".tr(args:[(widget.serie+1).toString()]),
              ),
              validator: (text) {
              if (text.isEmpty)
                      return "_Input_Usuario.introduce_la_carga".tr();
                    else if (double.tryParse(text) == null)
                      return "_Input_Usuario.introduce_un_numero".tr();
                    else if (double.parse(text) >= 1000)
                      return "_Input_Usuario.carga_excesiva".tr();
                  },
            ),
          ),
          buttons: [
            DialogButton(
              onPressed: () async {
                final form = cargaKey.currentState;
                if (form.validate() == true) {
                  form.save();
                  BlocProvider.of<InputusuarioBloc>(context).add(
                      HeAcabadoDeActualizarCarga(
                          widget.numeroDia,
                          widget.numeroEjercicio,
                          widget.semana,
                          widget.serie,
                          cargaSerien));
                  Navigator.of(context).pop();
                }
              },
              child: Text(
                "_Input_Usuario.guardar_cambios".tr(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
    }

    _showDialogEditReps(BuildContext context, int i, n) {
      Alert(
          closeFunction: () {
            Navigator.pop(context);
            // BlocProvider.of<InputusuarioBloc>(context).add(HeCancelado(
            //     widget.numeroDia,
            //     widget.numeroEjercicio,
            //     widget.semana,
            //     widget.serie,
            //     false));
          },
          context: context,
          title: "_Input_Usuario.edita_repeticiones".tr(args: [(n+1).toString()]),
          content: Form(
            autovalidate: false,
            key: repeticionesKey,
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (text) {
                repeticionesSerien = text;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText:  "_Input_Usuario.repeticiones_serie".tr(args:[(widget.serie+1).toString()]),
              ),
              validator: (text) {
                      if (text.isEmpty)
                      return "_Input_Usuario.introduce_las_repeticiones".tr();
                    else if (double.tryParse(text) == null)
                      return "_Input_Usuario.introduce_un_numero".tr();
                    else if (double.parse(text) >= 1000)
                      return "_Input_Usuario.numero_de_repeticiones_excesivo".tr();
                  
              },
            ),
          ),
          buttons: [
            DialogButton(
              onPressed: () async {
                final form = repeticionesKey.currentState;
                if (form.validate() == true) {
                  form.save();
                  BlocProvider.of<InputusuarioBloc>(context).add(
                      HeAcabadoDeActualizarRepeticiones(
                          widget.numeroDia,
                          widget.numeroEjercicio,
                          widget.semana,
                          widget.serie,
                          repeticionesSerien));

                  Navigator.of(context).pop();
                }
              },
              child: Text(
                "_Input_Usuario.guardar_cambios".tr(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
    }

    return BlocProvider<InputusuarioBloc>(
        create: (context) => InputusuarioBloc(
            widget.principalRepository,
            widget.blocEjercicio,
            widget.numeroDia,
            widget.numeroEjercicio,
            widget.serie),
        child: BlocListener<InputusuarioBloc, InputusuarioState>(
          listener: (context, state) {
            if (state is ActualizandoComentario) {
              _showDialogEditComentario(context, state.text);
            }

            if (state is ActualizandoCargayRepeticiones) {
              _showDialogAdd(
                context,
              );
            }
            if (state is ActualizandoCarga) {
              _showDialogEditCarga(
                context,
                widget.semana,
                widget.serie,
              );
            }

            if (state is ActualizandoRepeticiones) {
              _showDialogEditReps(
                context,
                widget.semana,
                widget.serie,
              );
            }
            if (state is OcurrioError) {
              _showError1("_Input_Usuario.ocurrio_error".tr(), context, false);
            }
            if (state is OcurrioErrorComentario) {
              _showError1("_Input_Usuario.ocurrio_error".tr(), context, true);
            }
          },
          child: BlocBuilder<InputusuarioBloc, InputusuarioState>(
              builder: (BuildContext context, InputusuarioState state) {
            if (state is InputusuarioInitial) {
              BlocProvider.of<InputusuarioBloc>(context).add(Inicializar(
                  widget.numeroDia,
                  widget.numeroEjercicio,
                  widget.semana,
                  widget.serie));
            }
            if (state is InputInexistente) {
              return Container();
            }
            if (state is ViendoBotonComentarios) {
              if (state.comentarios != 'null')
                return Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width*0.77,
                        padding: EdgeInsets.only(left:12.5,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "_Input_Usuario.notas".tr(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[900]),
                            ),
                            
                            SizedBox(height: 5,),
                            Text(
                              '${state.comentarios}',
                              style: TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 20,
                            ),
                          
                           
                          ],
                        )),
                         IconButton(
                            onPressed: () {
                              BlocProvider.of<InputusuarioBloc>(context)
                                      .add(QuieroActualizarComentario(
                                          state.comentarios));
                             
                            },
                            icon: Icon(Icons.edit,
                                size: 20, color: Colors.grey[900])),

                  ],
                );
              else
                return buildCardAddComentarios(
                  Icons.add,
                  context,
                  () {
                   
                         BlocProvider.of<InputusuarioBloc>(context)
                            .add(QuieroActualizarComentario(''));
                       
                  },
                  "_Input_Usuario.añadir_comentarios".tr(),
                );
            }
            if (state is ViendoCargayRepeticiones) {
              if ((state.carga != 'no' && state.carga!=null) || (state.repeticiones != 'no' && state.carga!=null)) {
                return
                    // Text('funciona');
                    buildCardWithIconFinal(Icons.edit, context, () {
               
                     BlocProvider.of<InputusuarioBloc>(context)
                          .add(QuieroActualizarCarga());
                    
                }, () {
                   BlocProvider.of<InputusuarioBloc>(context)
                          .add(QuieroActualizarRepeticiones());
                     
                }, '${state.carga} kgs', '${state.repeticiones} reps ',
                        widget.serie);
              } else {
                // return Text('adios');
                return buildCardWithIcon(
                  Icons.add,
                  context,
                  () {
                  BlocProvider.of<InputusuarioBloc>(context)
                            .add(QuieroActualizar());
                      
                    // _showDialogAdd(
                    //   widget.nombreej,
                    //   widget.semana,
                    //   widget.serie,
                    // );
                  },
                   "_Input_Usuario.añadir_carga_y_reps".tr(args:[(widget.serie+1).toString()] ),
                );
              }
            }

            if (state is Cargando) {
              return Center(child: LinearProgressIndicator());
            } else {
              BlocProvider.of<InputusuarioBloc>(context).add(Inicializar(
                  widget.numeroDia,
                  widget.numeroEjercicio,
                  widget.semana,
                  widget.serie));
              return Center(child: LinearProgressIndicator());
            }
          }),
        ));
  }
}
