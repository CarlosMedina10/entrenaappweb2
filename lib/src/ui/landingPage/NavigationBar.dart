import '../../../blocs/bloc/landingpage_bloc.dart';
import 'package:flutter/material.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../Style/Style.dart';


class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height<500) ? 50 : MediaQuery.of(context).size.height * 0.1,
      color: Color(0xff08192D),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Row(
            
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image(
                      image: AssetImage("images/LogoEntrenaAppFondoNegro.png"),
                    ),
                  ),
                  // Wrap( 
                  //    alignment: WrapAlignment.center,
                  //   children: [
                  //     Text(
                  //       "Sol".toUpperCase(),
                  //       style: ThemText.titlePinkText,
                  //     ),
                  //     Text("Music".toUpperCase(), 
                  //     style: ThemText.titleWhiteText
                  //   )
                  //   ],
                  // ),
                  Container(width:30),
                  InkWell(
                     onTap: (){
                            BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(true, false, false,false));
                     },
                    child: Text("Entrena con EntrenaAPP", style: ThemText.navBarWhiteTab)),
                  Container(width:30),
                  InkWell(
                    onTap: (){
                    BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(false, true, false,false));
                                                                      
                    },
                    child: Text("Conócenos", style: ThemText.navBarWhiteTab)),
                  Container(width:30),
                  InkWell(
                    onTap: (){
                           BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(false, false, true,false));
                    },
                    child: Text("Contacto", style: ThemText.navBarWhiteTab)),
                ],
              ),
            ),
           
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                     onTap: (){
                       BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(false, false, false,true));
                     },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("Iniciar sesión", 
                      style: ThemText.loginWhiteText
                     ),
                    ),
                  ),
                  Text("Registrarse",
                      style: ThemText.createAccountOrangeText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Mobile NavBar

