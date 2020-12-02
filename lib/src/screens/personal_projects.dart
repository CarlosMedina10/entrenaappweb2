




import 'package:entrenaappweb/src/screens/cargar_entrenamiento.dart';
import 'package:http/http.dart' as http;
import 'package:entrenaappweb/models/Configuracion.dart';
import 'package:entrenaappweb/models/Patron.dart';
import 'package:excel/excel.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'dart:convert';

import '../../models/MesocicloEntrenamiento.dart';
import '../../models/Ejercicio.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaappweb/models/blog_model.dart';
import 'package:flutter/material.dart';



import 'home_screen.dart';

class PersonalProjects extends StatefulWidget {
  final String idToken;
  PersonalProjects(this.idToken);
  @override
  _PersonalProjectsState createState() => _PersonalProjectsState();
}

class _PersonalProjectsState extends State<PersonalProjects> {




 
  List<BlogModel> blogList = List<BlogModel>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateList();
  }

  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: displaySize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isSmallScreen(context)
                  ? Container()
                  : AutoSizeText(
                      "Gestión de clientes",
                      style: TextStyle(fontSize: 40),
                    ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: displaySize.width < 1200 ? 2 : 3,
              crossAxisSpacing: 10,
              childAspectRatio:isSmallScreen(context)?0.9: 1.3,
              padding: EdgeInsets.all(5),
              children: <Widget>[
                ...List<Widget>.generate(blogList.length, (int index) {
                  return GestureDetector(
                    onTap: () async{
                     
 Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => CargarEntrenamiento(
                                                                               widget.idToken
                                                                              )));
//  List<String> listaMusculos= ['Pecho','Espalda','Hombro Frontal','Hombro Lateral','Hombro Posterior','Biceps','Triceps','Cuadriceps','Femoral','Gluteo','Trapecio','Gemelo','Abs'];
// FilePickerCross myFile = await FilePickerCross.importFromStorage(
//   type: FileTypeCross.any,       // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
//   fileExtension: '.txt, .md'     // Only if FileTypeCross.custom . May be any file extension like `.dot`, `.ppt,.pptx,.odp`
// );
// print(myFile.path);

//     var bytes = myFile.toUint8List();
//     var excel = Excel.decodeBytes(bytes);
//       Sheet sheetObject = excel['Hoja 3'];
//       int rowindex=3;
//       int columnindex=3;
//       listaMusculos.forEach((musculo) { 
//       listaEjercicios.forEach((ejercicio) {
//         if (ejercicio.musculosTrabajados['Primario1']==musculo){
//           print(ejercicio.nombre);
//   var cell = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex:columnindex,rowIndex:rowindex));
//  cell.value = ejercicio.nombre; 
//   rowindex=rowindex+1;

//   }
 
 
//  }); 
//  rowindex=3;
//  columnindex=columnindex+1;
 
//  });
//   excel.encode().then((excel_bytes) {
//    final blob = html.Blob([excel_bytes]);
//    final url = html.Url.createObjectUrlFromBlob(blob);
//    final anchor = html.document.createElement('a') as html.AnchorElement
//      ..href = url
//      ..style.display = 'none'
//      ..download = 'Prueba.xlsx';
//    html.document.body.children.add(anchor);

//    // download the file
//    anchor.click();

//    // cleanup
//    // html.document.body.children.remove(anchor);
//    // html.Url.revokeObjectUrl(url);
//  });



// await cargarMesociclo();
 
//  await guardarEnBBDD(mesocicloEntrenamiento);
 print('Se ha guardado!!');
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: displaySize.width / 2,
                              child: AutoSizeText(
                                blogList[index].name,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            Image.network(blogList[index].image),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }

  void generateList() {
    blogList.add(BlogModel(
        "Movie Time",
        "https://lh3.googleusercontent.com/0SeQhdfj6r6WoFMUyHSqAPQjs-ypwp5jnyjeROC5cTtSHjpcMIhp0NeVWw7dzxRWACIv=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.movietime"));
    blogList.add(BlogModel(
        "News Web",
        "https://lh3.googleusercontent.com/trIn-8zRZNY_3J9vtYv9TxzIHig47yGBQtuih_mV_z_ul-O6N4fST_H9QqCVSfyLzcY=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.newsweb"));
  }
}
