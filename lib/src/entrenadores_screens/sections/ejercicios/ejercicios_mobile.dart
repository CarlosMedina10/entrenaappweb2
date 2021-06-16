import 'package:entrenaapp/repository/user_repository.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/ejercicios/ejercicios_widget.dart';
import 'package:flutter/material.dart';


class EjerciciosSectionMobile extends StatelessWidget {
  final UserRepository userRepository;
  EjerciciosSectionMobile(this.userRepository);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child:Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroImage(userRepository,backgroundColor: Colors.teal),
            SizedBox(height: 32),
            Ejercicios(userRepository),
          ],
        ),
      ),
    ));
  }
}
