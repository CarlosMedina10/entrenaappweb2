import 'package:firebase/firebase.dart';

import './editable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Editable example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Editable example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Create a Key for EditableState
  final _editableKey = GlobalKey<EditableState>();

  List rows = [
    {
      "name": 'James LongName Joe',
      "date": '23/09/2020',
      "month": 'June',
      "status": 'completed'
    },
    {
      "name": 'Daniel Paul',
      "month": 'March',
      "status": 'new',
      "date": '12/4/2020',
    },
    {
      "month": 'May',
      "name": 'Mark Zuckerberg',
      "date": '09/4/1993',
      "status": 'expert'
    },
    {
      "name": 'Jack',
      "status": 'legend',
      "date": '01/7/1820',
      "month": 'December',
    },
  ];
  List cols = [
    {"title": 'Name', 'widthFactor': 0.5, 'key': 'name', 'editable': false},
    {"title": 'Date', 'widthFactor': 0.5, 'key': 'date'},
    {"title": 'Month', 'widthFactor': 0.5, 'key': 'month'},
    {"title": 'Status', 'widthFactor': 0.5,'key': 'status'},
  ];

  /// Function to add a new row
  /// Using the global key assigined to Editable widget
  /// Access the current state of Editable
  void _addNewRow() {
    setState(() {
      _editableKey.currentState.createRow();
    });
  }

  ///Print only edited rows.
  void _printEditedRows() {
    List editedRows = _editableKey.currentState.editedRows;
    print(editedRows);
  }

  @override
  Widget build(BuildContext context) {
     Database firebaseDatabase = database();
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: TextButton.icon(
            onPressed: () => _addNewRow(),
            icon: Icon(Icons.add),
            label: Text(
              'Add',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () => _printEditedRows(),
                child: Text('Print Edited Rows',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          )
        ],
      ),
      body: Editable(
        key: _editableKey,
        columns: cols,
        rows: rows,
        zebraStripe: true,
        stripeColor1: Colors.blue[50],
        stripeColor2: Colors.grey[200],
        onRowSaved: (value) {
          print(value);
        },
        onSubmitted: (value) {

          print('entra aquiiii');
           DatabaseReference ref = firebaseDatabase.ref('W8BP78bU2oSUsOkiJvQTFLicseg1/seguimiento/${_editableKey.currentState.editedRows[0]['row']}/month');

    ref.set(_editableKey.currentState.editedRows[0]['month']);
    print('entra aqui 22');
    print(_editableKey.currentState.editedRows);
           print(_editableKey.currentState.editedRows[0]);
    
        },
        borderColor: Colors.blueGrey,
        tdStyle: TextStyle(fontWeight: FontWeight.bold),
        trHeight: 80,
        thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        thAlignment: TextAlign.center,
        thVertAlignment: CrossAxisAlignment.end,
        thPaddingBottom: 3,
        showSaveIcon: true,
        saveIconColor: Colors.black,
        showCreateButton: true,
        tdAlignment: TextAlign.left,
        tdPaddingTop: 0,
        tdPaddingBottom: 14,
        tdPaddingLeft: 10,
        tdPaddingRight: 8,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(0))),
      ),
    );
  }
}



// import 'package:entrenaapp/src/ui/landingPage/HomePage.dart';
// import 'package:entrenaapp/src/ui/landingPage/SucessPayment.dart';

// import 'package:entrenaapp/src/screens/home_screen.dart';
// import 'package:entrenaapp/src/ui/usuarioDentro/sorteo.dart';

// import './src/ui/usuarioDentro/comprobando.dart';
// import 'package:firebase/firebase.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'package:responsive_builder/responsive_builder.dart';
// import './src/bloc/authentication_bloc/bloc.dart';

// import './src/repository/user_repository.dart';
// import 'src/screens/home_screen.dart';


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
//             // return  Comprobando(_userRepository);
//             return Sorteo(_userRepository);
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
