import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

/// Introductory texts with the Hire Me button as well
class Ejercicios extends StatefulWidget {
  final UserRepository userRepository;
  Ejercicios(this.userRepository);
  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios>
    with SingleTickerProviderStateMixin {
 
  bool seleccionado = false;
  final TextEditingController _typeAheadController = TextEditingController();

  String url1 = '';
  List<String> listaGruposMusculares = [
    'Pecho',
    'Espalda',
    'Hombro Frontal',
    'Hombro Lateral',
    'Hombro Posterior',
    'Biceps',
    'Triceps',
    'Cuadriceps',
    'Gluteo',
    'Femoral',
    'Trapecio',
    'Gemelo',
    'Abs'
  ];
  String grupoMuscularSeleccionado;

  actualizarImagen(String nombreEjercicio) {
    widget.userRepository.buscarEjercicio(nombreEjercicio);
    final Reference storageReference1 = FirebaseStorage.instance.ref().child(
        'fotosEjercicios/${widget.userRepository.ejercicioSeleccionado.imagen[0]}');
    storageReference1.getDownloadURL().then((value) {
      if (mounted)
        setState(() {
          url1 = value;
        });
      print(url1);
    });
  }

  @override
  void initState() {
    widget.userRepository.listaEjerciciosString = [];
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   '¿Que ejercicio quieres elegir?',
              //   style: TextStyle(color: Colors.grey[50]),
              // ),

              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: new Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Color.fromRGBO(3, 9, 40, 1),
                    ),
                    child: new DropdownButton<String>(
                      underline: SizedBox(),
                      iconEnabledColor: Color.fromRGBO(3, 9, 40, 1),
                      isExpanded: true,
                      hint: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text('Seleccionar grupo muscular',
                              style: TextStyle(
                                color: Color.fromRGBO(3, 9, 40, 1),
                                fontSize:
                                    (MediaQuery.of(context).size.width < 500)
                                        ? 16
                                        : 24,
                                fontWeight: FontWeight.w500,
                              ))),
                      selectedItemBuilder: (context) {
                        return listaGruposMusculares
                            .map((nombre) => DropdownMenuItem(
                                  value: nombre,
                                  child: Text(
                                    '$nombre',
                                    style: TextStyle(
                                      color: Color.fromRGBO(3, 9, 40, 1),
                                      fontSize:
                                          (MediaQuery.of(context).size.width <
                                                  500)
                                              ? 16
                                              : 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ))
                            .toList();
                      },
                      items: listaGruposMusculares
                          .map((nombre) => DropdownMenuItem(
                                value: nombre,
                                child: Text(
                                  '$nombre',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize:
                                        (MediaQuery.of(context).size.width <
                                                500)
                                            ? 16
                                            : 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          grupoMuscularSeleccionado = value;
                          print(grupoMuscularSeleccionado);
                          widget.userRepository.listaEjerciciosString = [];
                          widget.userRepository
                              .crearListaString(grupoMuscularSeleccionado);
                        });
                      },
                      value: (grupoMuscularSeleccionado != null)
                          ? grupoMuscularSeleccionado
                          : null,
                    )),
              ),
              SizedBox(height: 20),
              TypeAheadFormField(
                // initialValue: 'Busca un ejercicio',
                textFieldConfiguration: TextFieldConfiguration(
                  style: TextStyle(
                    color: Color.fromRGBO(3, 9, 40, 1),
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Colors.orange),
                      labelText: 'Busca un Ejercicio',
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none),
                  controller: this._typeAheadController,
                ),
                suggestionsCallback: (pattern) {
                  return widget.userRepository.getSuggestions(pattern);
                },

                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(
                      suggestion,
                      style: TextStyle(
                        color: Color.fromRGBO(3, 9, 40, 1),
                      ),
                    ),
                  );
                },
                transitionBuilder: (context, suggestionsBox, controller) {
                  controller.addStatusListener((status) {
                    if (status == AnimationStatus.forward)
                      setState(() {
                        seleccionado = true;
                      });
                  });

                  return suggestionsBox;
                },
                onSuggestionSelected: (suggestion) {
                  // FocusScope.of(context).requestFocus(new FocusNode());
                  this._typeAheadController.text = suggestion;
                  print(_typeAheadController.text);
                  actualizarImagen(_typeAheadController.text);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Selecciona un ejercicio';
                  }
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(url1))
                    // image: (userRepository.imgUrl != 'No')
                    //     ? NetworkImage(userRepository.imgUrl)
                    //     : (userRepository.sexo == 'Hombre')
                    //         ? AssetImage('assets/images/hombre.png')
                    //         : AssetImage('assets/images/mujer.png')),
                    ),
              )
            ],
          ),
        ),
      ),
    );
    // return AnimatedSize(
    //   vsync: this,
    //   duration: kThemeAnimationDuration,
    //   alignment: Alignment.topCenter,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     mainAxisSize: MainAxisSize.min,
    //     children: [

    //   if (showName) ...[
    //         SizedBox(height: 16),
    //         Typewriter(
    //           (widget.userRepository.sexo=='Hombre') ? 'Bienvenido' : 'Bienvenida',
    //           animate: !nameSeen,
    //            textStyle: TextStyle(
    //             color: Colors.blueGrey[900],
    //             fontSize: 40,
    //             fontWeight: FontWeight.w700,
    //           ),
    //           onEnd: () {
    //             if (mounted) {
    //               setState(() {
    //                 showPosition = true;
    //                 nameSeen = true;
    //               });
    //             }
    //           },
    //         ),
    //       ],
    //         SizedBox(height: 16),
    //         Typewriter(
    //        '${widget.userRepository.nombreUsuario}',
    //           animate: !nameSeen,
    //           textStyle: TextStyle(
    //             color: Colors.blueGrey[900],
    //             fontSize: 30,
    //             fontWeight: FontWeight.w700,
    //           ),
    //           onEnd: () {
    //             if (mounted) {
    //               setState(() {
    //                 showPosition = true;
    //                 nameSeen = true;
    //               });
    //             }
    //           },
    //         ),

    //       if (showPosition) ...[
    //         SizedBox(height: 16),
    //         Typewriter(
    //           'Estas en la sección para entrenadores de Entrenaapp',
    //           animate: !positionSeen,
    //           textStyle: TextStyle(
    //             color: Colors.blueGrey[900],
    //             fontSize: 20,
    //             fontWeight: FontWeight.w500,
    //           ),
    //           onEnd: () {
    //             if (mounted) {
    //               setState(() {
    //                 showAbstract = true;
    //                 positionSeen = true;
    //               });
    //             }
    //           },
    //         ),
    //       ],
    //       if (showAbstract) ...[
    //         SizedBox(height: 24),
    //         Typewriter(
    //           "Esperamos ayudarte a mejorar tu poductividad y la satisfacción de tus clientes"
    //           ,
    //           animate: !abstractSeen,
    //           textStyle: TextStyle(
    //             color: Colors.grey,
    //             fontSize: 16,
    //             letterSpacing: 1.2,
    //             height: 1.3,
    //           ),
    //           onEnd: () {
    //             Future.delayed(Duration(milliseconds: 500), () {
    //               if (mounted) {
    //                 setState(() {
    //                   showHireMe = true;
    //                   abstractSeen = true;
    //                 });
    //               }
    //             });
    //           },
    //         ),
    //       ],
    //       if (showHireMe) ...[
    //         SizedBox(height: 30),
    //         _HireMeButton(),
    //       ],
    //     ],
    //   ),
    // );
  }
}

class _HireMeButton extends StatefulWidget {
  @override
  __HireMeButtonState createState() => __HireMeButtonState();
}

class __HireMeButtonState extends State<_HireMeButton> {
  bool hovered = false;
  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['carlos10zrg@hotmail.com'],
      subject: 'Asesoramiento personalizado',
      body:
          'Hola Carlos, me gustaria recibir información sobre EntrenaAPP para entrenadores. Un Saludo.',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        launchMailto();
      },
      onHover: (value) {
        if (mounted) {
          setState(() {
            hovered = value;
          });
        }
      },
      child: AnimatedContainer(
        height: 50,
        width: 200,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1.4, color: Colors.teal),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: hovered ? Colors.teal.withOpacity(1.0) : Colors.transparent,
        ),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: hovered ? Colors.white : Colors.teal,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Solicitar información',
            ),
          ),
        ),
      ),
    );
  }
}

 

class HeroImage extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;
  final UserRepository userRepository;

  const HeroImage(
    this.userRepository, {
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 2),
        image: DecorationImage(
            image: (userRepository.imgUrl != 'No')
                ? NetworkImage(userRepository.imgUrl)
                : (userRepository.sexo == 'Hombre')
                    ? AssetImage('assets/images/hombre.png')
                    : AssetImage('assets/images/mujer.png')),
      ),
    );
  }
}
