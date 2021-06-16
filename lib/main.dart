// import 'dart:convert';

// import 'package:firebase/firebase.dart';

// import './editable.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Editable example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         primaryColor: Colors.blue,
//         accentColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Editable example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Database firebaseDatabase = database();
//   List rows = [{'brazaco':8}];
//   List<int> rows2 = [];
//   String height = '';
//   String sexo = 'Hombre';
//   List<dynamic> result2;

//   @override
//   initState() {
//     super.initState();
//     // Add listeners to this class
// print('entraaaa init stateeeeeeee');
//     DatabaseReference ref =
//         firebaseDatabase.ref('W8BP78bU2oSUsOkiJvQTFLicseg1');
   

//     ref.child('seguimiento').onValue.listen((e) {
    
//       if (e.snapshot.val()!=null) {
//       DataSnapshot result = e.snapshot;
     
//      result2=result.val();
//       Map<String, dynamic> result1 = result.toJson();
//        print(result1.keys.last);
//       int i = 0;
//       for (i = 0; i <= int.parse(result1.keys.last); i++) {
//         rows.add({});
//         rows2.add(0);
//       }

   
    
//       result1.forEach((key, value) {
//         rows.insert(int.parse(key), value);
//       });
//      rows.removeRange(int.parse(result1.keys.last) + 1, rows.length);
   
//        i=0;
//       rows.forEach((element) {
//         // print(rows[i]['peso']);
//         // print('ueeeeeeeeee');
//         // print(int.parse(height).toDouble());
      
       
//         if (rows[i]['peso']!=null && int.tryParse(height)!=null)
//         {rows[i]['imc']=int.parse(rows[i]['peso'])/(int.parse(height).toDouble()/100*int.parse(height).toDouble()/100);
//         print(rows[i]['imc']);}
//          int sumaPliegues=0;
//         element.forEach((key,value){
//           if (key=='pectoral' || key =='medioAxilar')
//           sumaPliegues=sumaPliegues + int.parse(value);

          



//         });
//         rows2.insert(i, sumaPliegues);
//         rows2.removeRange(int.parse(result1.keys.last) + 1, rows2.length);
      
       
//         i=i+1;
//       });
//        i=0;
//         rows2.forEach((element) {
          
//           rows[i]['sumaPliegues']=element;
//           if (i>0)
//          {rows[i]['porcentajeMejora']= ((rows[i]['sumaPliegues']-rows[i-1]['sumaPliegues'])*100/rows[i]['sumaPliegues']).toString() + ' %';

//        }
//          if (sexo=='Hombre')
//          rows[i]['jacksonPollock']=(3.64 + (rows[i]['sumaPliegues'] * 0.097)).toString() + ' %';
//          else if (sexo=='Mujer')
//          rows[i]['jacksonPollock']=(4.56 + (rows[i]['sumaPliegues'] * 0.146)).toString() + ' %';
//          else rows[i]['jacksonPollock']= 'Indica tu sexo';
         

//           i=i+1;
//         });
     
       


    
//       }
//       // Do something with datasnapshot
//     });

//     ref.child('altura').onValue.listen((e) {
//       DataSnapshot result = e.snapshot;
//        height = result.toJson();
//        int i =0;
//         rows.forEach((element) {
//         // print(rows[i]['peso']);
//         // print('ueeeeeeeeee');
//         // print(int.parse(height).toDouble());
      
       
//         if (rows[i]['peso']!=null && int.tryParse(height)!=null)
//         {rows[i]['imc']=int.parse(rows[i]['peso'])/(int.parse(height).toDouble()/100*int.parse(height).toDouble()/100);
//         print(rows[i]['imc']);}
//        i=i+1;
        
//        print(height);
//     });
    
//     });

//     ref.child('sexo').onValue.listen((e) {
//       DataSnapshot result = e.snapshot;
//       sexo = result.toJson();
//       print(sexo);
//     });
//     print('acabaaaaa');
//   }

//   /// Create a Key for EditableState
//   final _editableKey = GlobalKey<EditableState>();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   List cols = [
//     {
//       "title": 'Nº medición',
//       'widthFactor': 0.075,
//       'key': 'medicion',
//     },
//     {
//       "title": 'Fecha',
//       'widthFactor': 0.075,
//       'key': 'fecha',
//     },
//     {
//       "title": 'Peso (kg)',
//       'widthFactor': 0.075,
//       'key': 'peso',
//     },
//     {
//       "title": 'Cuello',
//       'widthFactor': 0.075,
//       'key': 'cuello',
//     },
//     {
//       "title": 'Pecho',
//       'widthFactor': 0.075,
//       'key': 'pecho',
//     },
//     {
//       "title": 'Hombros',
//       'widthFactor': 0.075,
//       'key': 'hombros',
//     },
//     {
//       "title": 'Brazo relajado',
//       'widthFactor': 0.075,
//       'key': 'brazoRelajado',
//     },
//     {
//       "title": 'Brazo contraido',
//       'widthFactor': 0.075,
//       'key': 'brazoContraido',
//     },
//     {
//       "title": 'Cintura',
//       'widthFactor': 0.075,
//       'key': 'cintura',
//     },
//     {
//       "title": 'Abdomen',
//       'widthFactor': 0.075,
//       'key': 'abdomen',
//     },
//     {
//       "title": 'Glúteo',
//       'widthFactor': 0.075,
//       'key': 'gluteo',
//     },
//     {
//       "title": 'Muslo',
//       'widthFactor': 0.075,
//       'key': 'muslo',
//     },
//     {
//       "title": 'Gemelo',
//       'widthFactor': 0.075,
//       'key': 'gemelo',
//     },
//     {
//       "title": 'Pectoral',
//       'widthFactor': 0.075,
//       'key': 'pectoral',
//     },
//     {
//       "title": 'Medio Axilar',
//       'widthFactor': 0.075,
//       'key': 'medioAxilar',
//     },
//     {
//       "title": 'Suprailiaco',
//       'widthFactor': 0.075,
//       'key': 'suprailiaco',
//     },
//     {
//       "title": 'Bicipital',
//       'widthFactor': 0.075,
//       'key': 'bicipital',
//     },
//     {
//       "title": 'Tricipital',
//       'widthFactor': 0.075,
//       'key': 'tricipital',
//     },
//     {
//       "title": 'Abdominal',
//       'widthFactor': 0.075,
//       'key': 'abdominal',
//     },
//     {
//       "title": 'Subescapular',
//       'widthFactor': 0.075,
//       'key': 'subescapular',
//     },
//     {
//       "title": 'Cuadricipital',
//       'widthFactor': 0.075,
//       'key': 'cuadricipital',
//     },
//     {
//       "title": 'Peroneal',
//       'widthFactor': 0.075,
//       'key': 'peroneal',
//     },
//     {
//       "title": 'Suma de pliegues',
//       'widthFactor': 0.075,
//       'key': 'sumaPliegues',
//       'editable': false
//     },
//     {
//       "title": '% de mejora pliegues',
//       'widthFactor': 0.075,
//       'key': 'porcentajeMejora',
//       'editable': false
//     },
//     {
//       "title": '% grasa (Jackson-Pollock)',
//       'widthFactor': 0.075,
//       'key': 'jacksonPollock',
//       'editable': false
//     },
//     {
//       "title": '% grasa (Hodgdon y beckett)',
//       'widthFactor': 0.075,
//       'key': 'hodgdonYBeckett',
//       'editable': false
//     },
//     {
//       "title": 'IMC',
//       'widthFactor': 0.075,
//       'key': 'imc',
//       'editable': false
//     },
//     {
//       "title": 'Rango',
//       'widthFactor': 0.075,
//       'key': 'rango',
//       'editable': false
//     },
//   ];

//   /// Function to add a new row
//   /// Using the global key assigined to Editable widget
//   /// Access the current state of Editable
//   void _addNewRow() {
//     setState(() {
//       _editableKey.currentState.createRow();

//     });
  
    

              
//   }

//   bool cargando = false;

//   ///Print only edited rows.
//   void _printEditedRows() {
//     List editedRows = _editableKey.currentState.editedRows;

//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         leadingWidth: 200,
//         leading: TextButton.icon(
//             onPressed: () => _addNewRow(),
//             icon: Icon(Icons.add),
//             label: Text(
//               'Add',
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             )),
//         title: Text(widget.title),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextButton(
//                 onPressed: () => _printEditedRows(),
//                 child: Text('Print Edited Rows',
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//           )
//         ],
//       ),
//       body: (cargando == false)
//           ? Editable(
//              formKey: _formKey,
//               key: _editableKey,
//               columns: cols,
//               rows: rows,
//               zebraStripe: true,
//               color1: Colors.blue[50],
//               color2: Colors.grey[200],
//               color3: Colors.blue[50],
//               color4: Colors.grey[200],
//               onRowSaved: (value) {
//                print('pulsado');
//               },
//               onSubmitted: (value) {
//                 print(_editableKey.currentState.editedRows);
//                 print(_editableKey.currentState.editedKey);
              
//               print('oooohhh');
//                 if (_editableKey.currentState.editedRows.isNotEmpty) {

//               int i;   

   
//      rows[_editableKey.currentState.editedRows[0]['row']]['${_editableKey.currentState.editedKey}']=_editableKey.currentState.editedRows[0]
//                       ['${_editableKey.currentState.editedKey}'];
     
//           i=0;
//       rows.forEach((element) {

//         print('ok');
//          int sumaPliegues=0;
//         element.forEach((key,value){

         
          
//           if (key=='pectoral' || key =='medioAxilar')
//           {sumaPliegues=sumaPliegues + int.parse(value);
          
//           print('$value pppppppppppppppppppp');
//           }

          
   


//         });
        
//          rows2.insert(i, sumaPliegues);
//         rows2.removeRange(rows.length, rows2.length);
//         print('$rows2 22222222222222222222222');
       
//         i=i+1;
//         });
//           i=0;
//         rows2.forEach((element) {
//           setState(() {
//               rows[i]['sumaPliegues']=element;
//           if (i>0)
//          {rows[i]['porcentajeMejora']= ((rows[i]['sumaPliegues']-rows[i-1]['sumaPliegues'])*100/rows[i]['sumaPliegues']).toString() + ' %';

//        }
//          if (sexo=='Hombre')
//          rows[i]['jacksonPollock']=(3.64 + (rows[i]['sumaPliegues'] * 0.097)).toString() + ' %';
//          else if (sexo=='Mujer')
//          rows[i]['jacksonPollock']=(4.56 + (rows[i]['sumaPliegues'] * 0.146)).toString() + ' %';
//          else rows[i]['jacksonPollock']= 'Indica tu sexo';
//           });
        
         

//           i=i+1;
//         });
     
//                   DatabaseReference ref = firebaseDatabase.ref(
//                       'W8BP78bU2oSUsOkiJvQTFLicseg1/seguimiento/${_editableKey.currentState.editedRows[0]['row']}/${_editableKey.currentState.editedKey}');

//                   ref.set(_editableKey.currentState.editedRows[0]
//                       ['${_editableKey.currentState.editedKey}']);
//                 } else {
//                   DatabaseReference ref;
//                  if (_formKey.currentState.validate()) {
//                   if (value.toLowerCase() == 'hombre' || value.toLowerCase() == 'mujer')
//                     ref = firebaseDatabase
//                         .ref('W8BP78bU2oSUsOkiJvQTFLicseg1/sexo');
//                   else
//                     ref = firebaseDatabase
//                         .ref('W8BP78bU2oSUsOkiJvQTFLicseg1/altura');

//                   ref.set(value);
//                 } }
//               },
//               borderColor: Colors.blueGrey,
//               tdStyle: TextStyle(fontWeight: FontWeight.bold),
//               thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//               thAlignment: TextAlign.center,
//               thVertAlignment: CrossAxisAlignment.end,
//               thPaddingBottom: 3,
//               showDeleteIcon: true,
//               deleteIconColor: Colors.black,
//               showCreateButton: true,
//               tdAlignment: TextAlign.left,
//               tdPaddingTop: 0,
//               tdPaddingBottom: 14,
//               tdPaddingLeft: 10,
//               tdPaddingRight: 8,
//               height: height,
//               gender: sexo,
//               focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue),
//                   borderRadius: BorderRadius.all(Radius.circular(0))),
//             )
//           : Center(
//               child: CircularProgressIndicator(
//                 backgroundColor: Colors.red,
//               ),
//             ),
//     );
//   }
// }
import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'basic.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  WidgetsFlutterBinding.ensureInitialized();

  

  runApp(Row(
    textDirection: TextDirection.ltr,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      /*Expanded(
        child: Container(color: Colors.red),
      ),*/
      Expanded(
        child: DevicePreview(
          enabled: true,
         
          builder: (context) => BasicApp(),
        ),
      ),
      Container(color: Colors.red,width: 400,)
    ],
  ));
}


// import 'package:entrenaapp/blocs/authentication_bloc/authentication_bloc.dart';
// import 'package:entrenaapp/repository/user_repository.dart';
// import 'package:entrenaapp/src/ui/landingPage/HomePage.dart';
// import 'package:entrenaapp/src/ui/landingPage/SucessPayment.dart';
// import './src/ui/usuarioDentro/comprobando.dart';
// import 'package:firebase/firebase.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// import 'blocs/authentication_bloc/bloc.dart';


// GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: <String>[
//     'email',

//   ],
// );
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//    ResponsiveSizingConfig.instance.setCustomBreakpoints(
//     ScreenBreakpoints(desktop: 1025, tablet: 550, watch: 200),
//   );

//   Database db = database();
//     final UserRepository userRepository = UserRepository(db);

//   runApp(
//     BlocProvider(
//       create: (context) => AuthenticationBloc(userRepository)
//         ..add(AppStarted()),
//       child: App(userRepository),
//     )
//   );

// }

// class App extends StatelessWidget {
//   final UserRepository _userRepository;

//   App(this._userRepository,);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // ignore: missing_return
//       onGenerateRoute: (RouteSettings settings) {
//     Widget pageView;
//     if (settings.name != null) {
//       var uriData = Uri.parse(settings.name);
//       print(uriData.path);
//       print(uriData.queryParameters['session_id']);
//       print('kkkk');
//       //uriData.path will be your path and uriData.queryParameters will hold query-params values

//       switch (uriData.path) {
//         case '/success':
//           pageView = Success(_userRepository,uriData.queryParameters['session_id']);
//           break;
//         //....
//       }
//     }
//     if (pageView != null) {
//       return MaterialPageRoute(
//           builder: (BuildContext context) => pageView);
//     }
//   },
//        title: 'EntrenaApp',

//       home:

//       BlocBuilder<AuthenticationBloc, AuthenticationState>(
//         builder: (context, state) {
//           if (state is Uninitialized) {
//             return Center(child:CircularProgressIndicator(),);
//           }
//           if (state is Authenticated) {
//             return  Comprobando(_userRepository);
//             // return Sorteo(_userRepository);
//           }
//           if (state is Unauthenticated) {
//             // return LoginScreen(userRepository: _userRepository,);
//             return HomePage(_userRepository,_googleSignIn);
//           }
//           return Container();
//         },
//       ),
//     );

//   }
// }
