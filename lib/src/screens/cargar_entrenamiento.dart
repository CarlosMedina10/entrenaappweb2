
import 'package:entrenaapp/src/repository/user_repository.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CargarEntrenamiento extends StatefulWidget {
  final UserRepository userRepository;

  CargarEntrenamiento(
    this.userRepository,
  );

  @override
  _CargarEntrenamientoState createState() => _CargarEntrenamientoState();
}

class _CargarEntrenamientoState extends State<CargarEntrenamiento> {
    bool entrenamientoCargado = false;
    String nombreEntrenamiento;
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text(
              "Ha ocurrido un error al cargar tu entrenamiento. Por favor, revisa el formato ya que seguramente haya algun error. Cométamelo si no lo encuentras para ayudarte a solucionarlo :)"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text(
                "Cerrar",
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  

  List<String> listaNombreClientes = [];
  Map<String, String> clienteSeleccionado;
  @override
  void initState() {
    widget.userRepository.listaClientes.forEach((key, value) {
      listaNombreClientes.add(value);
    });
    print(listaNombreClientes);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (entrenamientoCargado == false)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                              child: Text('Seleccionar Cliente',
                                  style: TextStyle(
                                    color: Color.fromRGBO(3, 9, 40, 1),
                                    fontSize:
                                        (MediaQuery.of(context).size.width <
                                                500)
                                            ? 16
                                            : 24,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          selectedItemBuilder: (context) {
                            return listaNombreClientes
                                .map((nombre) => DropdownMenuItem(
                                      value: nombre,
                                      child: Text(
                                        '$nombre',
                                        style: TextStyle(
                                          color: Color.fromRGBO(3, 9, 40, 1),
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  500)
                                              ? 16
                                              : 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ))
                                .toList();
                          },
                          items: listaNombreClientes
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
                            widget.userRepository.listaClientes
                                .forEach((key, value1) {
                              if (value1 == value)
                                setState(() {
                                  clienteSeleccionado = {key: value1};
                                });
                            });
                            print(clienteSeleccionado.values.first);
                            print(clienteSeleccionado.keys.first);
                          },
                          value: (clienteSeleccionado != null)
                              ? clienteSeleccionado.values.first
                              : null,
                        )),
                  ),
                  SizedBox(height: 5),
                  RaisedButton(
                    color: Color.fromRGBO(3, 9, 40, 1),
                    onPressed: () async {
                      try {
                      await widget.userRepository.cargarMesociclo(clienteSeleccionado.keys.first).then((value) {
                        nombreEntrenamiento=value;
                        print(value);
                        if (value!=null)
                          setState(() {
        entrenamientoCargado = true;
      });
                      }); } catch (error) {
                        print(error);
                        _showDialog();
                      }
                    },
                    child: Text(
                      'Cargar Entrenamiento',
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(FontAwesomeIcons.solidFileExcel,
                      size: 50, color: Colors.green),
                  SizedBox(height: 5),
                  Text(nombreEntrenamiento),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    color: Color.fromRGBO(3, 9, 40, 1),
                    onPressed: () async {
                      setState(() {
                        entrenamientoCargado = false;
                      });
                    },
                    child: Text(
                      'Atrás',
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                ])
              // RaisedButton(
              //   onPressed: () async{
              //   await cargarMesociclo();

              //   await guardarEnBBDD(mesocicloEntrenamiento);
              //   },
              //   child: Text('Cargar Entrenamiento'),
              // ),
              ),
    );
  }
}
