part of 'landingpage_bloc.dart';

@immutable
abstract class LandingpageState extends Equatable {
  const LandingpageState();
}



class IsMobileOrTablet extends LandingpageState {
  final bool isOnPrincipal;
 final bool isOnConocenos;
 final bool isOnContactanos;
  final bool isOnLogin;

 IsMobileOrTablet(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin);
  @override
  List<Object> get props => [isOnPrincipal,isOnConocenos,isOnContactanos,isOnLogin];
    @override
  String toString() => 'Estado { Pagina principal: $isOnPrincipal isOnConocenos: $isOnConocenos,}';

}

class IsDesktop extends LandingpageState {
  final bool isOnPrincipal;
 final bool isOnConocenos;
 final bool isOnContactanos;
  final bool isOnLogin;
 IsDesktop(this.isOnPrincipal,this.isOnConocenos,this.isOnContactanos,this.isOnLogin);
  @override
  List<Object> get props => [isOnPrincipal,isOnConocenos,isOnContactanos,isOnLogin];
   @override
  String toString() => 'Estado  desktop { Pagina principal: $isOnPrincipal isOnConocenos: $isOnConocenos,}';
 
}
