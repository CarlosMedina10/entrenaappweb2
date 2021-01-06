//imports: 


import 'package:entrenaappweb/blocs/LandingPageBloc/landingpage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../bloc/login_bloc/bloc.dart';
import '../../repository/user_repository.dart';
import '../../ui/login/login_form.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository userRepository;
  final GoogleSignIn _googleSignIn;
  final bool isOnLogin;

  LoginScreen(this.userRepository,this._googleSignIn,this.isOnLogin);
   

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
    var size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);

       if (isMobile || isTablet)
            {
              BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantMobileOrTablet(false,false,false,true));
            }
            if (!isMobile && !isTablet && isOnLogin)
            {
     BlocProvider.of<LandingpageBloc>(
                                                                          context)
                                                                      .add(WantIsDesktop(true, false, false,true));
            }
    return  BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(userRepository: userRepository),
        child: LoginPage(userRepository,_googleSignIn,isMobile,isTablet),
        // LoginForm(userRepository: _userRepository),
      );
  
  }
}