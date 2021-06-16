import 'package:entrenaapp/repository/user_repository.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/home/bienvenido_widgets.dart';
import 'package:flutter/material.dart';


class HomeSectionMobile extends StatelessWidget {
  final UserRepository userRepository;
  HomeSectionMobile(this.userRepository);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroImage(userRepository,backgroundColor: Colors.teal),
            SizedBox(height: 32),
            Introduction(userRepository),
          ],
        ),
      ),
    );
  }
}
