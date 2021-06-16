import 'package:entrenaapp/blocs/authentication_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileNavbar extends StatelessWidget implements PreferredSizeWidget {
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.teal,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        )
      ],
      title: Container(
        padding: EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.175,
        child: new Image.asset('assets/images/LogoEntrenaAppFondoNegro.png'),
      ),
      // title: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     CircleAvatar(
      //       backgroundColor: Colors.teal,
      //       radius: 15,
      //       child: Text(
      //         'D',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     SizedBox(width: 10),
      //     RichText(
      //       textAlign: TextAlign.center,
      //       text: TextSpan(
      //         text: 'Akora I',
      //         style: textStyle.copyWith(
      //           color: Colors.black.withOpacity(0.75),
      //           fontSize: 18,
      //           fontFamily: 'Ubuntu',
      //         ),
      //         children: [
      //           TextSpan(
      //             text: 'ng. DKB',
      //             style: textStyle.copyWith(
      //               color: Colors.teal,
      //               fontSize: 18,
      //               fontFamily: 'Ubuntu',
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class Navbar extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index) onItemSelected;

  Navbar({this.selectedIndex = 0, @required this.onItemSelected});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex;

  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  final items = [
    'Inicio',
    'Subir entrenamiento',
    'Ver ejercicio',
    
    'Salir',
  ];

  @override
  void initState() {
    super.initState();

    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width*0.42,
          
            child:
                new Image.asset('assets/images/LogoEntrenaAppFondoNegro.png'),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items.map((item) {
                return InkWell(
                  onTap: () {
                    switch (item) {
                      case 'Inicio':
                      case 'Subir entrenamiento':
                      case 'Ver ejercicio':
                        if (mounted) {
                          setState(() {
                            selectedIndex = items.indexOf(item);
                          });

                          if (widget.onItemSelected != null) {
                            widget.onItemSelected(selectedIndex);
                          }
                        }
                        break;
                      case 'Salir':
                        break;
                   
                      default:
                      // setState(() {
                      //   selectedIndex = items.indexOf(item);
                      // });

                      // if (widget.onItemSelected != null) {
                      //   widget.onItemSelected(selectedIndex);
                      // }
                    }
                  },
                  child: item == 'Salir'
                      ? ResumeButton()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item,
                              style: textStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                color: textStyle.color.withOpacity(
                                  selectedIndex == items.indexOf(item)
                                      ? 1.0
                                      : 0.75,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            if (item != 'Salir')
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                height: 2,
                                width: 20,
                                color: selectedIndex == items.indexOf(item)
                                    ? Colors.white
                                    : Colors.transparent,
                              ),
                          ],
                        ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ResumeButton extends StatefulWidget {
  @override
  _ResumeButtonState createState() => _ResumeButtonState();
}

class _ResumeButtonState extends State<ResumeButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
        // UrlHelper.downloadResume();
      },
  
      child: AnimatedContainer(
        height: 40,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: hovered ? Colors.white.withOpacity(0.92) : Colors.teal,
        ),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: hovered ? Colors.teal : Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
          child: Text(
            'Salir',
          ),
        ),
      ),
    );
  }
}
