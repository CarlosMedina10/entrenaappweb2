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


// import 'package:flutter/material.dart';
// import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Web Basic Scroll',
//       home: LandingPage(),
//     );
//   }
// }

// class LandingPage extends StatefulWidget {
//   LandingPage({Key key}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     return _LandingPageState();
//   }
// }

// class _LandingPageState extends State<LandingPage> {
//   ScrollController _controller;

//   @override
//   void initState() {
//     //Initialize the  scrollController
//     _controller = ScrollController();
//     super.initState();
//   }

//   void scrollCallBack(DragUpdateDetails dragUpdate) {
//     setState(() {
//       // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
//       _controller.position.moveTo(dragUpdate.globalPosition.dy * 43.5);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Container(
//             child: SingleChildScrollView(
//               //Assign the controller to my scrollable widget
//               controller: _controller,
//               child: Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.black,
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.red,
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.green,
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//             ),
//           ),


//           FlutterWebScroller(
//             //Pass a reference to the ScrollCallBack function into the scrollbar
//             scrollCallBack,

//             //Add optional values
//             scrollBarBackgroundColor: Colors.white,
//             scrollBarWidth: 20.0,
//             dragHandleColor: Colors.red,
//             dragHandleBorderRadius: 2.0,
//             dragHandleHeight: 40.0,
//             dragHandleWidth: 15.0,
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:entrenaapp/src/ui/landingPage/HomePage.dart';
import 'package:entrenaapp/src/ui/landingPage/SucessPayment.dart';

import 'package:entrenaapp/src/screens/home_screen.dart';


import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:responsive_builder/responsive_builder.dart';
import './src/bloc/authentication_bloc/bloc.dart';

import './src/repository/user_repository.dart';
import 'src/screens/home_screen.dart';


GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
   
  ],
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  
   ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 1025, tablet: 550, watch: 200),
  );
  


  Database db = database();
    final UserRepository userRepository = UserRepository(db);

  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(userRepository)
        ..add(AppStarted()),
      child: App(userRepository),
    )
  );
 

  
}

class App extends StatelessWidget {
  final UserRepository _userRepository;
  

  App(this._userRepository,);
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'EntrenaApp',
     routes: {
        
        '/success': (_) => Success(_userRepository),
      },
      home:

      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return Center(child:CircularProgressIndicator(),);
          }
          if (state is Authenticated) {
            return  Home(state.userID,state.idToken);
            // return Sorteo(_userRepository);
          }
          if (state is Unauthenticated) {
            // return LoginScreen(userRepository: _userRepository,);
            return HomePage(_userRepository,_googleSignIn);
          }
          return Container();
        },
      ),
    );
    
  }
}
// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

// import 'dart:async';
// import 'dart:convert' show json;

// import "package:http/http.dart" as http;
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: <String>[
//     'email',
   
//   ],
// );

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Google Sign In',
//       home: SignInDemo(),
//     ),
//   );
// }

// class SignInDemo extends StatefulWidget {
//   @override
//   State createState() => SignInDemoState();
// }

// class SignInDemoState extends State<SignInDemo> {
//   GoogleSignInAccount _currentUser;
//   String _contactText;

//   @override
//   void initState() {
//     super.initState();
//     _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
//       setState(() {
//         _currentUser = account;
//       });
//       if (_currentUser != null) {
//         _handleGetContact();
//       }
//     });
//     _googleSignIn.signInSilently();
//   }

//   Future<void> _handleGetContact() async {
//     setState(() {
//       _contactText = "Loading contact info...";
//     });
//     final http.Response response = await http.get(
//       'https://people.googleapis.com/v1/people/me/connections'
//       '?requestMask.includeField=person.names',
//       headers: await _currentUser.authHeaders,
//     );
//     if (response.statusCode != 200) {
//       setState(() {
//         _contactText = "People API gave a ${response.statusCode} "
//             "response. Check logs for details.";
//       });
//       print('People API ${response.statusCode} response: ${response.body}');
//       return;
//     }
//     final Map<String, dynamic> data = json.decode(response.body);
//     final String namedContact = _pickFirstNamedContact(data);
//     setState(() {
//       if (namedContact != null) {
//         _contactText = "I see you know $namedContact!";
//       } else {
//         _contactText = "No contacts to display.";
//       }
//     });
//   }

//   String _pickFirstNamedContact(Map<String, dynamic> data) {
//     final List<dynamic> connections = data['connections'];
//     final Map<String, dynamic> contact = connections?.firstWhere(
//       (dynamic contact) => contact['names'] != null,
//       orElse: () => null,
//     );
//     if (contact != null) {
//       final Map<String, dynamic> name = contact['names'].firstWhere(
//         (dynamic name) => name['displayName'] != null,
//         orElse: () => null,
//       );
//       if (name != null) {
//         return name['displayName'];
//       }
//     }
//     return null;
//   }

//   Future<void> _handleSignIn() async {
//     try {
//       await _googleSignIn.signIn();
//     } catch (error) {
//       print(error);
//     }
//   }

//   Future<void> _handleSignOut() => _googleSignIn.disconnect();

//   Widget _buildBody() {
//     if (_currentUser != null) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           ListTile(
//             leading: GoogleUserCircleAvatar(
//               identity: _currentUser,
//             ),
//             title: Text(_currentUser.displayName ?? ''),
//             subtitle: Text(_currentUser.email ?? ''),
//           ),
//           const Text("Signed in successfully."),
//           Text(_contactText ?? ''),
//           RaisedButton(
//             child: const Text('SIGN OUT'),
//             onPressed: _handleSignOut,
//           ),
//           RaisedButton(
//             child: const Text('REFRESH'),
//             onPressed: _handleGetContact,
//           ),
//         ],
//       );
//     } else {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           const Text("You are not currently signed in."),
//           RaisedButton(
//             child: const Text('SIGN IN'),
//             onPressed: _handleSignIn,
//           ),
//         ],
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Google Sign In'),
//         ),
//         body: ConstrainedBox(
//           constraints: const BoxConstraints.expand(),
//           child: _buildBody(),
//         ));
//   }
// }
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