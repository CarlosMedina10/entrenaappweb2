import 'package:entrenaappweb/src/repository/user_repository.dart';
import 'package:entrenaappweb/src/ui/login/login_screen.dart';

import '../../../blocs/bloc/landingpage_bloc.dart';
import '../../ui/landingPage/SendEmail.dart';
import 'package:drawerbehavior/drawer_scaffold.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mailto/mailto.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../ui/landingPage/NavigationBar.dart';
import '../../ui/landingPage/LandingPage.dart';
import '../../ui/landingPage/ConocenosPage.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  final UserRepository _userRepository;
  HomePage(this._userRepository);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('entraaaaa noooooo');
    launchMailto() async {
  final mailtoLink = Mailto(
    to: ['carlos10zrg@hotmail.com'],

    subject: 'Asesoramiento personalizado',
    body: 'Hola Carlos, me gustaria recibir información sobre tu forma de trabajar y tarifas. Un Saludo.',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
    var deviceType = getDeviceType(MediaQuery.of(context).size);
bool isMobile = false;
bool isTablet = false;
switch(deviceType) {
  case DeviceScreenType.watch:
    isMobile=false;
    isTablet=false;
    break;
  case DeviceScreenType.desktop:
     isMobile=false;
     isTablet=false;
    break;
  case DeviceScreenType.tablet:
     isMobile=false;
     isTablet=true;
    break;
  case DeviceScreenType.mobile:
     isMobile=true;
     isTablet=false;
    break;
  case DeviceScreenType.Mobile:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Tablet:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Desktop:
    // TODO: Handle this case.
    break;
  case DeviceScreenType.Watch:
    // TODO: Handle this case.
    break;
}

      
    return 
    BlocProvider<LandingpageBloc>(create: (context) => LandingpageBloc(isMobile,isTablet),
     
     child: BlocListener<LandingpageBloc,LandingpageState>(
        listener: (context, state) {

          
          // if (state is IsDesktop && state.isOnContactanos)
          // {
          //   return 
          //  launchMailto();
          // }
             
        },
     
     
      child:BlocBuilder<LandingpageBloc,LandingpageState>(
           
            // // ignore: missing_return
            // buildWhen: (previousState, state) =>
            //  // ignore: unnecessary_statements
            //  ( state is IsMobileOrTablet ||  (state is IsDesktop && !state.isOnContactanos)), 
             
    // return true/false to determine whether or not
    // to rebuild the widget with state
  
          
          builder:(BuildContext context, LandingpageState state){
  
               
   
           
           if (state is IsDesktop)  
            {

      print('${state.isOnPrincipal} principalll' );
      print('${state.isOnConocenos} conocenosssss');
          
              if (state.isOnPrincipal)
              {
                
                return
            Scaffold(
                          body: SingleChildScrollView(
        child: Column( 
          children: [
              NavigationBar(),
              LandingPage(state.isOnPrincipal),
          ],
        ),
      ),
            ) ; }
         if (state.isOnConocenos){
         return
      Scaffold(
              body: SingleChildScrollView(
          child: Column( 
            children: [
              NavigationBar(),
              ConocenosPage(state.isOnConocenos),
            ],
          ),
        ),
      ) ; }
if (state.isOnContactanos)
return 
Scaffold(
              body: SingleChildScrollView(
          child: Column( 
            children: [
              NavigationBar(),
              SendEmail(state.isOnContactanos),
            ],
          ),
        ),
      ) ;
if (state.isOnLogin)
return 
Scaffold(
              body: SingleChildScrollView(
          child: Column( 
            children: [
              NavigationBar(),
              LoginScreen(widget._userRepository,true)
            ],
          ),
        ),
      ) ;

            }

          if (state is IsMobileOrTablet)
{
  print('este estadoooo');
          return Scaffold(body: Drawer3d(state.isOnPrincipal,state.isOnConocenos,state.isOnContactanos,state.isOnLogin,widget._userRepository));
}
    
    }),));
        
  }
}
    
    
    
    
//     Scaffold(
//       body: (isMobile==true || isTablet== true) ? Drawer3d() :  SingleChildScrollView(
//         child: Column( 
//           children: [
//             NavigationBar(),
//             LandingPage(),
//           ],
//         ),
//       ) 
      
      
//     );
//   }
// }
class Drawer3d extends StatefulWidget {
 final  bool isOnPrincipal;
  final bool isOnConocenos;
  final bool isOnContactanos;
  final bool isOnLogin;
  final UserRepository _userRepository;

  Drawer3d(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin,this._userRepository);
  @override
  _Drawer3dState createState() => _Drawer3dState();
}
List<MenuItem> items = [
  new MenuItem<int>(
    id: 0,
    title: 'Entrena con EntrenaAPP',
    icon: Icons.fastfood,
  ),
  new MenuItem<int>(
    id: 1,
    title: 'Conócenos',
    icon: Icons.person,
  ),
  new MenuItem<int>(
    id: 2,
    title: 'Contacto',
    icon: Icons.terrain,
  ),
  new MenuItem<int>(
    id: 3,
    title: 'Iniciar sesión',
    icon: Icons.settings,
  ),
  new MenuItem<int>(
    id: 3,
    title: 'Registrarse',
    icon: Icons.settings,
  ),
];
final menu = Menu(
  items: items.map((e) => e.copyWith(icon: null)).toList(),
);

final menuWithIcon = Menu(
  items: items,
);

class _Drawer3dState extends State<Drawer3d> {
  int selectedMenuItemId;

  @override
  void initState() {

    (widget.isOnPrincipal) ?
    selectedMenuItemId = menu.items[0].id
    :  (widget.isOnConocenos)
     ?
    selectedMenuItemId =menu.items[1].id :
    (widget.isOnContactanos)
     ?
    selectedMenuItemId =menu.items[2].id :
   
    selectedMenuItemId =menu.items[3].id;
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
 
    
    return DrawerScaffold(
     
      appBar: AppBar(
      
        backgroundColor: Color(0xff08192D), 
          title: Text("EntrenaAPP",style: TextStyle(color:Colors.white,)),
          
         
      ),
      
      drawers: [
        SideDrawer(
     
          percentage: 0.8,
          degree: 45,
          menu: menu,
          direction: Direction.left,
          animation: true,
          color:  Color(0xff08192D),
          selectorColor: Colors.orange,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
               setState(() {
              selectedMenuItemId = itemId;
            });
          // BlocProvider.of<LandingpageBloc>(
          //                                                                 context)
          //                                                             .add(WantMobileOrTablet(true,false));
          },
        ),
        SideDrawer(
          degree: 45,
          menu: menu,
          direction: Direction.right,
          animation: true,
          color:Colors.orange,
          selectorColor:  Color(0xff08192D),
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            print(itemId);
             setState(() {
              selectedMenuItemId = itemId;
            });
          // BlocProvider.of<LandingpageBloc>(
          //                                                                 context)
          //                                                             .add(WantMobileOrTablet(false,true));
          },
        ),
         
      ],  
      
      builder: (context, id) { 
       if  (id== 0) 
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(true),ConocenosPage(false),SendEmail(false),LoginScreen(widget._userRepository,false)] 
            
      ) ; else if  (id== 1)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false),ConocenosPage(true),SendEmail(false),LoginScreen(widget._userRepository,false)] 
            
      ) ;
      else if  (id== 2)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false),ConocenosPage(false),SendEmail(true),LoginScreen(widget._userRepository,false)] 
            
      ) ;
      else if  (id== 3)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false),ConocenosPage(false),SendEmail(false),LoginScreen(widget._userRepository,true)] 
            
      ) ;
      
      }
    );
  }
}