import 'package:entrenaapp/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/about/subir_entrenamiento_widgets.dart';

class AboutSectionMobile extends StatelessWidget {
  final UserRepository userRepository;
AboutSectionMobile(this.userRepository);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutManImage(),
            SizedBox(height: 32),
            AboutContent(userRepository,color: Colors.teal, isMobile: true),
          ],
        ),
      ),
    );
  }
}
