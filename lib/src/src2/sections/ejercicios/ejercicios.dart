import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/src2/sections/ejercicios/ejercicios_widget.dart';
import 'package:flutter/material.dart';


class EjerciciosSection extends StatelessWidget {
  final UserRepository userRepository;
EjerciciosSection(this.userRepository);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 6,
            child: Ejercicios(userRepository),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 8,
            child: HeroImage(userRepository),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}