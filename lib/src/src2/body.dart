import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/src2/sections/ejercicios/ejercicios.dart';
import 'package:entrenaapp/src/src2/sections/ejercicios/ejercicios_widget.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/src2/components/nav_bar.dart';
import 'package:entrenaapp/src/src2/sections/about/about.dart';
import 'package:entrenaapp/src/src2/sections/home/home.dart';

class PageBody extends StatefulWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;
  final UserRepository userRepository;

  const PageBody(this.userRepository,{@required this.pageIndex, this.onItemSelected});

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
 

  @override
  Widget build(BuildContext context) {
      final pages = [HomeSection(widget.userRepository), AboutSection(widget.userRepository),EjerciciosSection(widget.userRepository)];
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
