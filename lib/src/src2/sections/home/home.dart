import 'package:entrenaapp/src/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:entrenaapp/src/src2/sections/home/home_widgets.dart';

class HomeSection extends StatelessWidget {
  final UserRepository userRepository;
HomeSection(this.userRepository);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 6,
            child: Introduction(userRepository),
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
