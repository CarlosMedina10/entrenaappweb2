// import 'package:entrenaappweb/src/screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';


// void main(
  
// ) => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ashish Rawat',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData( fontFamily: "GoogleSans"),
//       home: Home(),
//     );
//   }
// }

// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';


// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_dialogs/flutter_dialogs.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   _showAlert(BuildContext context, String message) {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text(message),
//           content: Text(message),
         
//         ),
//       );
//     }
//   Future<void> performLogin(BuildContext context,String provider, List<String> scopes,
//       Map<String, String> parameters) async {
//     try {
//       await FirebaseAuthOAuth().openSignInFlow(provider, scopes, parameters);
//     } catch (error) {
//       print('hay un errorrrrr');
//       /**
//        * The plugin has the following error codes:
//        * 1. FirebaseAuthError: FirebaseAuth related error
//        * 2. PlatformError: An platform related error
//        * 3. PluginError: An error from this plugin
//        */
//       _showAlert(context, "${error.code}: ${error.message}");
     
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Plugin example app'),
//           ),
//           body: StreamBuilder(
//               initialData: null,
//               stream: FirebaseAuth.instance.userChanges(),
//               builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
//                 return Column(
//                   children: [
//                     Center(
//                       child: Text(
//                           snapshot.data == null ? "Logged out" : "Logged In"),
//                     ),
//                     if (snapshot.data == null || snapshot.data.isAnonymous) ...[
//                       RaisedButton(
//                         onPressed: () async {
//                         await performLogin(context,
//                               "apple.com", ["email"], {"locale": "es"});
                              
//                         },
//                         child: Text("Sign in By Apple"),
//                       ),
//                       RaisedButton(
//                         onPressed: () async {
//                           await performLogin(context,
//                               "twitter.com", ["email"], {"lang": "en"});
//                         },
//                         child: Text("Sign in By Twitter"),
//                       ),
//                       RaisedButton(
//                         onPressed: () async {
//                           await performLogin(context,
//                               "github.com", ["user:email"], {"lang": "en"});
//                         },
//                         child: Text("Sign in By Github"),
//                       )
//                     ],
//                     if (snapshot.data != null)
//                       RaisedButton(
//                         onPressed: () async {
//                           await FirebaseAuth.instance.signOut();
//                         },
//                         child: Text("Logout"),
//                       )
//                   ],
//                 );
//               })),
//     );
//   }
// }
import 'package:entrenaappweb/src/screens/home_screen.dart';
import 'package:entrenaappweb/src/ui/landingPage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './src/bloc/authentication_bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import './src/repository/user_repository.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

    await firebase_core.Firebase.initializeApp();
    

   ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 1025, tablet: 550, watch: 200),
  );
 
  
    final UserRepository userRepository = UserRepository();

  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(userRepository)
        ..add(AppStarted()),
      child: App(userRepository: userRepository),
    )
  );
 

  
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
    : assert (userRepository != null),
      _userRepository = userRepository,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'EntrenaApp',
     
      home:

      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return Center(child:CircularProgressIndicator(),);
          }
          if (state is Authenticated) {
            return  Home(state.userID,state.idToken);
          }
          if (state is Unauthenticated) {
            // return LoginScreen(userRepository: _userRepository,);
            return HomePage(_userRepository);
          }
          return Container();
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import './src/widgets/navbar.dart';
// import 'utils/responsiveLayout.dart';
// import './src/widgets/search.dart';

// void main() => runApp(MaterialApp(
//       title: 'Flutter Landing Page',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     ));

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//         Color(0xFFF8FBFF),
//         Color(0xFFFCFDFD),
//       ])),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[NavBar(), Body()],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveLayout(
//       largeScreen: LargeChild(),
//       smallScreen: SmallChild(),
//     );
//   }
// }

// class LargeChild extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 600,
//       child: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           FractionallySizedBox(
//             alignment: Alignment.centerRight,
//             widthFactor: .6,
//             child: Image.network("assets/image_01.png", scale: .85),
//           ),
//           FractionallySizedBox(
//             alignment: Alignment.centerLeft,
//             widthFactor: .6,
//             child: Padding(
//               padding: EdgeInsets.only(left: 48),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Hello!",
//                       style: TextStyle(
//                           fontSize: 60,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "Montserrat-Regular",
//                           color: Color(0xFF8591B0))),
//                   RichText(
//                     text: TextSpan(
//                         text: "WellCome To ",
//                         style:
//                             TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
//                         children: [
//                           TextSpan(
//                               text: "Britu",
//                               style: TextStyle(
//                                   fontSize: 60,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black87))
//                         ]),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12.0, top: 20),
//                     child: Text("LET’S EXPLORE THE WORLD"),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Search()
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class SmallChild extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.all(40),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Hello!",
//               style: TextStyle(
//                   fontSize: 40,
//                   color: Color(0xFF8591B0),
//                   fontWeight: FontWeight.bold,
//                   fontFamily: "Montserrat-Regular"),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'WellCome To ',
//                 style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
//                 children: <TextSpan>[
//                   TextSpan(
//                       text: 'Britu',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 40,
//                           color: Colors.black87)),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 12.0, top: 20),
//               child: Text("LET’S EXPLORE THE WORLD"),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Image.network(
//                 "assets/image_01.png",
//                 scale: 1,
//               ),
//             ),
//             SizedBox(
//               height: 32,
//             ),
//             Search(),
//             SizedBox(
//               height: 30,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

























// import 'package:editable/editable.dart';
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
//   /// Create a Key for EditableState
//   final _editableKey = GlobalKey<EditableState>();

//   List rows = [
//     {
//       "name": 'James Joe',
//       "date": '23/09/2020',
//       "month": 'June',
//       "status": 'completed'
//     },
//     {
//       "name": 'Daniel Paul',
//       "month": 'March',
//       "status": 'new',
//       "date": '12/4/2020',
//     },
//     {
//       "month": 'May',
//       "name": 'Mark Zuckerberg',
//       "date": '09/4/1993',
//       "status": 'expert'
//     },
//     {
//       "name": 'Jack',
//       "status": 'legend',
//       "date": '01/7/1820',
//       "month": 'December',
//     },
//   ];
//   List cols = [
//     {"title": 'Name', 'widthFactor': 0.2, 'key': 'name'},
//     {"title": 'Date', 'widthFactor': 0.2, 'key': 'date'},
//     {"title": 'Month', 'widthFactor': 0.2, 'key': 'month'},
//     {"title": 'Status', 'key': 'status'},
//   ];

//   /// Function to add a new row
//   /// Using the global key assigined to Editable widget
//   /// Access the current state of Editable
//   void _addNewRow() {
//     setState(() {
//       _editableKey.currentState.createRow();
//        _editableKey.currentState.createRow();
//         _editableKey.currentState.createRow();
//          _editableKey.currentState.createRow();
//     });
//   }

//   ///Print only edited rows.
//   void _printEditedRows() {
//     List editedRows = _editableKey.currentState.editedRows;
//     print(editedRows);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leadingWidth: 200,
//         leading: FlatButton.icon(
//             onPressed: () => _addNewRow(),
//             icon: Icon(Icons.add),
//             label: Text(
//               'Add',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             )),
//         title: Text(widget.title),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: FlatButton(
//                 onPressed: () => _printEditedRows(),
//                 child: Text('Print Edited Rows',
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//           )
//         ],
//       ),
//       body: Editable(
//         key: _editableKey,
//         columns: cols,
//         rows: rows,
//         zebraStripe: true,
//         stripeColor2: Colors.grey[200],
//         onRowSaved: (value) {
//           print(value);
//         },
//         onSubmitted: (value) {
//           print(value);
//         },
//         borderColor:  Colors.red,
//         showSaveIcon: true,
//         saveIconColor: Colors.black,
//         showCreateButton: true,
//         borderWidth: 0,
        
//       ),
//     );
//   }
// }