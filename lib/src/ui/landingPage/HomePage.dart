import 'package:entrenaapp/blocs/LandingPageBloc/landingpage_bloc.dart';
import 'package:entrenaapp/repository/user_repository.dart';
import 'package:entrenaapp/src/ui/login/login_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../ui/landingPage/SendEmail.dart';
import 'package:drawerbehavior/drawer_scaffold.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../ui/landingPage/NavigationBar.dart';
import '../../ui/landingPage/LandingPage.dart';
import '../../ui/landingPage/ConocenosPage.dart';



class HomePage extends StatefulWidget {
  final UserRepository _userRepository;
  final GoogleSignIn _googleSignIn;
  HomePage(this._userRepository,this._googleSignIn);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, String>> isInit =[];
  @override
  void initState() {
    
    widget._googleSignIn.signInSilently();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   

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
  
          
          // ignore: missing_return
          builder:(BuildContext context, LandingpageState state){
  
               
   
           
           if (state is IsDesktop)  
            {

     
          
              if (state.isOnPrincipal)
              {
                
                return
            Scaffold(
                          body: 
                Stack(
          children: <Widget>[         
          
                      SingleChildScrollView(
        child: Column( 
          children: [
              NavigationBar(),
              LandingPage(state.isOnPrincipal,isInit),
          ],
        ))
        ]),
      
            ) ; }
         if (state.isOnConocenos){
         return
      Scaffold(
              body: SingleChildScrollView(
          child: Column( 
            children: [
              NavigationBar(),
              ConocenosPage(state.isOnConocenos,isInit),
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
              LoginScreen(widget._userRepository,widget._googleSignIn,true)
            ],
          ),
        ),
      ) ;

            }

          if (state is IsMobileOrTablet)
{
 
          return Scaffold(body: Drawer3d(state.isOnPrincipal,state.isOnConocenos,state.isOnContactanos,state.isOnLogin,isMobile,isTablet,isInit,widget._userRepository,widget._googleSignIn));
}
    
    }),));
        
  }
}
    
    
    

class Drawer3d extends StatefulWidget {
 final  bool isOnPrincipal;
  final bool isOnConocenos;
  final bool isOnContactanos;
  final bool isOnLogin;
  final bool isMobile;
  final bool isTablet;
  final List<Map<String, String>> isInit;
  final UserRepository _userRepository;
  final GoogleSignIn _googleSignIn;

  Drawer3d(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin,this.isMobile,this.isTablet,this.isInit,this._userRepository,this._googleSignIn);
  @override
  _Drawer3dState createState() => _Drawer3dState();
}
List<MenuItem> items = [
  new MenuItem<int>(
    id: 0,
    title: 'Entrena con EntrenaAPP',
   
  ),
  new MenuItem<int>(
    id: 1,
    title: 'Conócenos',
    
  ),
  new MenuItem<int>(
    id: 2,
    title: 'Contacto',
   
  ),
  new MenuItem<int>(
    id: 3,
    title: 'Iniciar sesión',
    
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
          padding: EdgeInsets.only(left:20,top:15,bottom:15),
          percentage: 0.8,
          degree: 45,
          drawerWidth: (widget.isMobile) ? 120 : 300,
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
    
         
      ],  
      
      builder: (context, id) { 
       if  (id== 0) 
        return IndexedStack(
        index: id,
        children:  [
          
          SingleChildScrollView(child: LandingPage(true,widget.isInit)),ConocenosPage(false,widget.isInit),SendEmail(false),LoginScreen(widget._userRepository,widget._googleSignIn,false)] 
            
      ) ; else if  (id== 1)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false,widget.isInit),SingleChildScrollView(child: ConocenosPage(true,widget.isInit)),SendEmail(false),LoginScreen(widget._userRepository,widget._googleSignIn,false)] 
            
      ) ;
      else if  (id== 2)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false,widget.isInit),ConocenosPage(false,widget.isInit),SendEmail(true),LoginScreen(widget._userRepository,widget._googleSignIn,false)] 
            
      ) ;
      else if  (id== 3)   
        return IndexedStack(
        index: id,
        children:  [
          
          LandingPage(false,widget.isInit),ConocenosPage(false,widget.isInit),SendEmail(false),LoginScreen(widget._userRepository,widget._googleSignIn,true)] 
            
      ) ;
      
      }
    );
  }
}