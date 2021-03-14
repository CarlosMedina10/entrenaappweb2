




import 'dart:io';

import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:path/path.dart';
import 'package:excel/excel.dart';
import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/src2/components/typewriter.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

/// Introductory texts with the Hire Me button as well
class Introduction extends StatefulWidget {
  final UserRepository userRepository;
  Introduction(this.userRepository);
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool seleccionado = false;
  final TextEditingController _typeAheadController = TextEditingController();
  static bool nameSeen = false;
  static bool positionSeen = false;
  static bool abstractSeen = false;
  static bool showName = true;

  static bool showPosition = false;
  static bool showAbstract = false;
  static bool showHireMe = false;
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

    return AnimatedSize(
      vsync: this,
      duration: kThemeAnimationDuration,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [

      if (showName) ...[
            SizedBox(height: 16),
            Typewriter(
              (widget.userRepository.sexo=='Hombre') ? 'Bienvenido' : 'Bienvenida',
              animate: !nameSeen,
               textStyle: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
              onEnd: () {
                if (mounted) {
                  setState(() {
                    showPosition = true;
                    nameSeen = true;
                  });
                }
              },
            ),
          ],
            SizedBox(height: 16),
            Typewriter(
           '${widget.userRepository.nombreUsuario}',
              animate: !nameSeen,
              textStyle: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              onEnd: () {
                if (mounted) {
                  setState(() {
                    showPosition = true;
                    nameSeen = true;
                  });
                }
              },
            ),

          if (showPosition) ...[
            SizedBox(height: 16),
            Typewriter(
              'Estas en la sección para entrenadores de Entrenaapp',
              animate: !positionSeen,
              textStyle: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              onEnd: () {
                if (mounted) {
                  setState(() {
                    showAbstract = true;
                    positionSeen = true;
                  });
                }
              },
            ),
          ],
          if (showAbstract) ...[
            SizedBox(height: 24),
            Typewriter(
              "Esperamos ayudarte a mejorar tu poductividad y la satisfacción de tus clientes"
              ,
              animate: !abstractSeen,
              textStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                letterSpacing: 1.2,
                height: 1.3,
              ),
              onEnd: () {
                Future.delayed(Duration(milliseconds: 500), () {
                  if (mounted) {
                    setState(() {
                      showHireMe = true;
                      abstractSeen = true;
                    });
                  }
                });
              },
            ),
          ],
          if (showHireMe) ...[
            SizedBox(height: 30),
            _HireMeButton(),
          ],
        ],
      ),
    );
  }
}

class _HireMeButton extends StatefulWidget {
  @override
  __HireMeButtonState createState() => __HireMeButtonState();
}

class __HireMeButtonState extends State<_HireMeButton> {
  bool hovered = false;
  launchMailto() async {
     FilePickerCross myFile = await FilePickerCross.importFromStorage(
          type: FileTypeCross
              .custom, // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
          fileExtension:
              '.xlsx' // Only if FileTypeCross.custom . May be any file extension like `.dot`, `.ppt,.pptx,.odp`
          );
     
      print(myFile.fileName.replaceRange(
          myFile.fileName.length - 5, myFile.fileName.length, ''));

      var bytes = myFile.toUint8List();
      var excel = Excel.decodeBytes(bytes);
          Sheet sheetObject = excel['Día 1'];
      
   
      
      
      var cell = sheetObject.cell(CellIndex.indexByString("A"));
      cell.value = 8; // dynamic values support provided;
  
      
      
        excel.encode().then((onValue) {
        File(join("assets/nº1 2021 Fuerza y masa Adrian Varela.xlsx"))
        ..createSync(recursive: true)
        ..writeAsBytesSync(onValue);
    });
    // final mailtoLink = Mailto(
    //   to: ['carlos10zrg@hotmail.com'],
    //   subject: 'Asesoramiento personalizado',
    //   body:
    //       'Hola Carlos, me gustaria recibir información sobre EntrenaAPP para entrenadores. Un Saludo.',
    // );
    // // Convert the Mailto instance into a string.
    // // Use either Dart's string interpolation
    // // or the toString() method.
    // await launch('$mailtoLink');
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
