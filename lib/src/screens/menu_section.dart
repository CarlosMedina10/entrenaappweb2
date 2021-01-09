
import 'package:entrenaapp/blocs/navigation_bloc.dart';
import 'package:entrenaapp/src/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:entrenaapp/src/bloc/authentication_bloc/authentication_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuSection extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  MenuSection(this.scaffoldKey);

  @override
  _MenuSectionState createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(3, 9, 40, 1),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onTap: () {
              navigationDrawerBloc.updateNavigation(NavigationScreen.Profile);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
          ),
          ListTile(
            title: Text(
              "Personal Projects",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              navigationDrawerBloc
                  .updateNavigation(NavigationScreen.PersonalProject);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            leading: Icon(
              Icons.assignment_ind,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              "Blogs",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.mode_edit,
              color: Colors.white,
            ),
            onTap: () {
              navigationDrawerBloc.updateNavigation(NavigationScreen.Blog);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
          ),
          ListTile(
            title: Text(
              "Talks",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.mic,
              color: Colors.white,
            ),
            onTap: () {
              navigationDrawerBloc.updateNavigation(NavigationScreen.Talks);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
          ),
          ListTile(
            title: Text(
              "Salir",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
            onTap: () {
              BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
            
            },
          ),
        ],
      ),
    );
  }
}
