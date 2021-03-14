import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/src2/components/responsive/screen_type_layout.dart';
import 'package:entrenaapp/src/src2/main_page.dart';

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
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
      ),
    );
  }
}
