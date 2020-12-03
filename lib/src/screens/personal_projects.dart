




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
  final String idUser;
  final String idToken;
  PersonalProjects(this.idUser,this.idToken);
  @override
  _PersonalProjectsState createState() => _PersonalProjectsState();
}

class _PersonalProjectsState extends State<PersonalProjects> {

bool isLoading=false;
Map<String,dynamic> listaClientes;

Future quiereSerEntrenador() async{

final url = 'https://entrenaapp2-12fbe.firebaseio.com/ZZentrenadores/${widget.idUser}.json?auth=${widget.idToken}';
    try{  await http.patch(url, body: 
     json.encode(
     {'Nombre':'Carlos Medina'}
    ),
    );
 }  catch (error) {
      print(error);
      throw error;
    }
    }

Future quiereSerCliente() async{

final url = 'https://entrenaapp2-12fbe.firebaseio.com/ZZentrenadores/${widget.idUser}/Clientes.json?auth=${widget.idToken}';
    try{  await http.patch(url, body: 
     json.encode(
     {'vjPlfIOxv1aLlgdDqxcNDCpzQJh2':'Alejandra Vila'}
    ),
    );
 }  catch (error) {
      print(error);
      throw error;
    }
    }

  Future obtenerDatosDeClientes()async{

final url = 'https://entrenaapp2-12fbe.firebaseio.com/ZZentrenadores/${widget.idUser}/Clientes.json?auth=${widget.idToken}';

final response = await http.get(url);
        // print(response.body);
        listaClientes = json.decode(response.body) as Map<String,dynamic>;

       
 
  }
    
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
      child: 
      (isLoading==false) ?
      Container(
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
                  if (index==0)
    {
      setState(() {
        isLoading=true;
      });
      await obtenerDatosDeClientes();
 Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => CargarEntrenamiento(
                                                                               widget.idToken,listaClientes
                                                                              )));
                                                                              
                                                                              }
      else obtenerDatosDeClientes();

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
      ) : Center(child: CircularProgressIndicator(backgroundColor: Colors.orange,),),
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
