
import 'package:entrenaappweb/blocs/navigation_bloc.dart';
import 'package:entrenaappweb/src/screens/menu_section.dart';
import 'package:entrenaappweb/src/screens/personal_projects.dart';
import 'package:entrenaappweb/src/screens/profile_screen.dart';
import 'package:entrenaappweb/src/screens/talks_screen.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

import 'blog_screen.dart';

class Home extends StatefulWidget {

  
  Home();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      key: _scaffoldKey,
      appBar: isSmallScreen(context)
          ? AppBar(
              title: StreamBuilder<NavigationScreen>(
                  stream: navigationDrawerBloc.getNavigation,
                  initialData:
                      navigationDrawerBloc.navigationProvider.currentNavigation,
                  builder: (context, snapshot) {
                    return Text(snapshot.data
                        .toString()
                        .replaceAll(RegExp('NavigationScreen.'), ''));
                  }),
            )
          : null,
      drawer: isSmallScreen(context)
          ? Drawer(
              child: MenuSection(_scaffoldKey),
            )
          : null,
      body: isSmallScreen(context)
          ? mainScreen()
          : Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MenuSection(_scaffoldKey),
                ),
                Container(
                  color: Colors.white,
                  width: 0.65,
                ),
                Expanded(
                  flex: 3,
                  child: mainScreen(),
                ),
              ],
            ),
    );
  }

  Widget mainScreen() {
    return StreamBuilder<NavigationScreen>(
        stream: navigationDrawerBloc.getNavigation,
        initialData: navigationDrawerBloc.navigationProvider.currentNavigation,
        builder: (context, snapshot) {
          if (snapshot.data == NavigationScreen.Profile) {
            return ProfileSection();
          } else if (snapshot.data == NavigationScreen.Blog) {
            return Blogs();
          } else if (snapshot.data == NavigationScreen.Talks) {
            return TalksScreen();
          } else if (snapshot.data == NavigationScreen.PersonalProject) {
            return PersonalProjects();
          } else {
            return ProfileSection();
          }
        });
  }
}

bool isSmallScreen(context) {
  return MediaQuery.of(context).size.width < 700;
}
