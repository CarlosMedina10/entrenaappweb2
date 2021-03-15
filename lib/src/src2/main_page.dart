// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:entrenaapp/src/src2/sections/ejercicios/ejercicios_mobile.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/src2/body.dart';
import 'package:entrenaapp/src/src2/components/drawer.dart';
import 'package:entrenaapp/src/src2/components/nav_bar.dart';

import 'package:entrenaapp/src/src2/sections/about/about_mobile.dart';
import 'package:entrenaapp/src/src2/sections/home/home_mobile.dart';

class MobilePage extends StatefulWidget {
  final UserRepository userRepository;
  final int pageIndex;
  final void Function(int index) onItemSelected;

  const MobilePage(this.userRepository,{@required this.pageIndex, this.onItemSelected});

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
 
  @override
  Widget build(BuildContext context) {
     final pages = [
    HomeSectionMobile(widget.userRepository),
    AboutSectionMobile(widget.userRepository),
    EjerciciosSectionMobile(widget.userRepository)  ];

    return Scaffold(
      appBar: MobileNavbar(),
      endDrawer: AppDrawer(
        selectedIndex: widget.pageIndex,
        onItemSelected: widget.onItemSelected,
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: pages[widget.pageIndex],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final int pageIndex;
  final void Function(int index) onItemSelected;
  final UserRepository userRepository;

  const MainPage(this.userRepository,{@required this.pageIndex, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body.nodes.add(script);

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: _BackgroundPainter(), size: Size.infinite),
          PageBody(userRepository,pageIndex: pageIndex, onItemSelected: onItemSelected),
          // Align(alignment: Alignment.centerLeft, child: SocialMediaBar()),
        ],
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(size.width * 0.4, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.close();

    final paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
