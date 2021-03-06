import 'dart:convert';

import 'package:firebase_storage/firebase_storage.dart' as fb;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




class CustomCard extends StatefulWidget {
  final String nombre;
  final bool isMobile;
  final bool isTablet;
  final List<Map<String, String>> isInit;
  
  final String text;

  CustomCard(this.nombre,this.isMobile,this.isTablet,this.isInit,{this.text});
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isInit=false;
  String url;
 Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
   @override
  void initState() {
    super.initState();
    
   widget.isInit.forEach((element) {
       if (element.keys.contains(widget.nombre)) {
       url= element.values.first;
       isInit=true;
      print('$url');
       }
     });
     if (url== null) {

     final fb.Reference storageReference1 = fb.FirebaseStorage.instance.refFromURL('gs://entrenaapp2-12fbe.appspot.com').child('/fotosPromocionales/${widget.nombre}');
 storageReference1.getDownloadURL().then((value) async{
   print(value);
   Map<String,String> ejer = {'${widget.nombre}' : value};
   widget.isInit.add(ejer);
   
    final SharedPreferences prefs = await _prefs;
       
    String imagenes = json.encode(widget.isInit);
    
      prefs.setString("imagenes", imagenes);
   
   
   
   if (mounted)
   setState(() {
   url=value.toString();

   
  isInit=true;
   
 });
 
 }); 
    } 
    
  }
  @override
  Widget build(BuildContext context) {
    return 
    (isInit) ?
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
         
          decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(16.0), color: Colors.teal),
          height: 
            (widget.text!=null) ?
          (widget.isMobile) ? 173 : (widget.isTablet) ? (MediaQuery.of(context).size.height<500) ? 173 : MediaQuery.of(context).size.height/2.875 :  (MediaQuery.of(context).size.height<500) ? 228 :  MediaQuery.of(context).size.height/2.19 :
           (widget.isMobile) ? 200 : (widget.isTablet) ? (MediaQuery.of(context).size.height<500) ? 205 : MediaQuery.of(context).size.height/2.38  :  (MediaQuery.of(context).size.height<500) ? 266 : MediaQuery.of(context).size.height/1.877
          ,
          
          width:
          (widget.text!=null) ?
           (widget.isMobile) ? 173 : (widget.isTablet) ?(MediaQuery.of(context).size.height<500) ? 173 : MediaQuery.of(context).size.height/2.875 : (MediaQuery.of(context).size.height<500) ? 228 : MediaQuery.of(context).size.height/2.19:
           (widget.isMobile) ? MediaQuery.of(context).size.width-64 : (widget.isTablet) ? (MediaQuery.of(context).size.height<500) ? 285 : MediaQuery.of(context).size.height/1.75 :  (MediaQuery.of(context).size.height<500) ? 362 : MediaQuery.of(context).size.height/1.38 ,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(url,),
            
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
     (widget.text!=null) ?  Text(
          widget.text,
          style: TextStyle(
    color: Color(0xff0A183D),
    fontSize: 26.0, 
    fontWeight: FontWeight.w600, 
  )
        ) :  (widget.isMobile) ?  Text(
                              "** Desliza para ver mas",
                              style: TextStyle(
    color: Color(0xff0A183D),
     fontSize: (widget.isMobile) ? 12 : (widget.isTablet) ? 14 : 16,
   
  ),) : Container(height:1)
      ],
    ) : Center(child: CircularProgressIndicator(),);
  }
}