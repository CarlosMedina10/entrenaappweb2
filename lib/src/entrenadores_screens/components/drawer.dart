import 'package:entrenaapp/src/entrenadores_screens/components/nav_bar.dart';
import 'package:flutter/material.dart';



class AppDrawer extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index) onItemSelected;

  const AppDrawer({this.selectedIndex = 0, this.onItemSelected});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
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
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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

                    Navigator.pop(context);
                  },
                  child: item == 'Salir'
                      ? SizedBox(width: 160, child: ResumeButton())
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
                            SizedBox(height: 20),
                          ],
                        ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}