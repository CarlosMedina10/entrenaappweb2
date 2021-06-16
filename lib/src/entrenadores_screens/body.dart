import 'package:entrenaapp/repository/user_repository.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/ejercicios/ejercicios.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/entrenadores_screens/components/nav_bar.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/about/subir_entrenamiento.dart';
import 'package:entrenaapp/src/entrenadores_screens/sections/home/bienvenido.dart';

class PageBody extends StatefulWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;
  final UserRepository userRepository;
  final bool isTablet;

  const PageBody(this.userRepository,this.isTablet,{@required this.pageIndex, this.onItemSelected});

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
 

  @override
  Widget build(BuildContext context) {
      final pages = [HomeSection(widget.userRepository,widget.isTablet), AboutSection(widget.userRepository),EjerciciosSection(widget.userRepository)];
    return Column(
      children: [
        Navbar(
          selectedIndex: widget.pageIndex,
          onItemSelected: widget.onItemSelected,
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: kThemeAnimationDuration,
            child: pages[widget.pageIndex],
          ),
        ),
      ],
    );
  }
}
