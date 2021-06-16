import 'package:entrenaapp/repository/user_repository.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/home/bienvenido_widgets.dart';
import 'package:flutter/material.dart';


class HomeSection extends StatelessWidget {
  final UserRepository userRepository;
  final bool isTablet;
HomeSection(this.userRepository,this.isTablet);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: (!isTablet)? 2 : 1),
          SizedBox(width: (!isTablet) ? 32 : 0),
          Expanded(
            flex: !isTablet ? 6 : 6,
            child: Introduction(userRepository),
          ),
         SizedBox(width: (!isTablet) ? 32 : 0),
          Expanded(
            flex: !isTablet ? 8 : 8,
            child: HeroImage(userRepository),
          ),
          Spacer(flex: (!isTablet)? 2 : 1),
        ],
      ),
    );
  }
}
