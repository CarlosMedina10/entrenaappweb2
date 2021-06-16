import 'package:entrenaapp/repository/user_repository.dart';

import 'package:flutter/material.dart';
import 'package:entrenaapp/src/entrenadores_screens/components/responsive/screen_type_layout.dart';
import 'package:entrenaapp/src/entrenadores_screens/main_page.dart';

class LayoutWrapper extends StatefulWidget {
  final UserRepository userRepository;

  LayoutWrapper(this.userRepository);
  @override
  _LayoutWrapperState createState() => _LayoutWrapperState();
}

class _LayoutWrapperState extends State<LayoutWrapper> {
  int currentPage = 0;

  void onItemSelected(int index) {
    if (mounted) {
      setState(() {
        currentPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobilePage(
      widget.userRepository,
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
      tablet: MainPage(
        widget.userRepository,
        true,
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
      desktop: MainPage(
        widget.userRepository,
        false,
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
    );
  }
}
