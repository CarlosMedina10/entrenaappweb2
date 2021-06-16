import 'package:entrenaapp/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/entrenadores_screens/components/typewriter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutManImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}

class AboutContent extends StatefulWidget {
  final Color color;
  final bool isMobile;
  final UserRepository userRepository;

  const AboutContent(this.userRepository,{this.color = Colors.white, this.isMobile = false});
  @override
  _AboutContentState createState() => _AboutContentState();
}

class _AboutContentState extends State<AboutContent>
    with TickerProviderStateMixin {
 
  static bool showStack1 = false;
  static bool showStack2 = false;


  static bool aboutSeen = false;
  static bool stack1Seen = false;
  static bool stack2Seen = false;

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
    return AnimatedSize(
      vsync: this,
      duration: kThemeAnimationDuration,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
         
        
            Typewriter(
              "Desde aquí puedes subir el entrenamiento que has hecho en formato excel a tus clientes.\n\n"
              'Simplemente selecciona un cliente y selecciona el entrenamiento que has preparado para el.\n',
              animate: !aboutSeen,
              duration: const Duration(seconds: 2),
              textStyle: TextStyle(
                color: widget.color,
                fontSize: 16,
                letterSpacing: 1.2,
                height: 1.3,
              ),
              onEnd: () {
                if (mounted) {
                  setState(() {
                    showStack1 = true;
                    aboutSeen = true;
                  });
                }
              },
            ),
          if (showStack1) ...[
         (entrenamientoCargado == false)
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
                        if (value!=null) {
                          setState(() {
        entrenamientoCargado = true;
       
      });
        widget.userRepository.obtenerTokensUsuario(clienteSeleccionado.keys.first,clienteSeleccionado.values.first);}
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
          ],
        //   if (showStack2)
        //     widget.isMobile
        //         ? Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisSize: MainAxisSize.min,
        //             children: stack
        //                 .map<Widget>(
        //                   (s) => Padding(
        //                     padding: const EdgeInsets.symmetric(vertical: 8),
        //                     child: _buildStackItem(s),
        //                   ),
        //                 )
        //                 .toList(),
        //           )
        //         : Wrap(
        //             spacing: 80,
        //             runSpacing: 12,
        //             children: stack.map<Widget>(_buildStackItem).toList(),
        //           ),
        ],
      ),
    );
  }

  Widget _buildStackItem(String item) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: widget.color,
        ),
        SizedBox(width: 5),
        Typewriter(
          item,
          animate: !stack2Seen,
          duration: const Duration(seconds: 1),
          textStyle: TextStyle(
            color: widget.color,
            fontSize: 16,
            letterSpacing: 1.4,
          ),
          onEnd: () {
            if (mounted) {
              setState(() {
                stack2Seen = true;
              });
            }
          },
        ),
      ],
    );
  }
}
