import 'package:entrenaapp/repository/user_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
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
    return Center(
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
              
              child: new Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Color.fromRGBO(3, 9, 40, 1),
                  ),
                  child: new DropdownButton<String>(
                    underline: SizedBox(),
                    iconEnabledColor: Color.fromRGBO(3, 9, 40, 1),
                    isExpanded: true,
                    hint: Container(
                       
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
              noItemsFoundBuilder: (context) => ListTile(
                  title: Text(
                    'No se encontraron ejercicios',
                    style: TextStyle(
                      color: Color.fromRGBO(3, 9, 40, 1),
                    ),
                  ),
                ),
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
              width: 200,
              height: 200,
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
      width: (MediaQuery.of(context).size.width>600) ? MediaQuery.of(context).size.width/3.9 : 155,
      height: (MediaQuery.of(context).size.width>600) ? MediaQuery.of(context).size.width/3.9 : 155,
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
