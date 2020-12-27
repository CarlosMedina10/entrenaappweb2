part of 'landingpage_bloc.dart';

@immutable
abstract class LandingpageEvent extends Equatable {
  const LandingpageEvent();
}
class WantMobileOrTablet extends LandingpageEvent {
  
  final bool isOnPrincipal;
 final bool isOnConocenos;
 final bool isOnContactanos;
 final bool isOnLogin;

 WantMobileOrTablet(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin);



  

  List<Object> get props => [isOnPrincipal,isOnConocenos,isOnContactanos,isOnLogin];


}
class WantIsDesktop extends LandingpageEvent {
  
final bool isOnPrincipal;
 final bool isOnConocenos;
 final bool isOnContactanos;
 final bool isOnLogin;
 
 WantIsDesktop(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin);


  

  List<Object> get props => [isOnPrincipal,isOnConocenos,isOnContactanos,this.isOnLogin];


}
