part of 'verifypassword_bloc_bloc.dart';

abstract class VerifypasswordEvent extends Equatable {
  const VerifypasswordEvent();
}

class EmailChanged extends VerifypasswordEvent{
  final String email;

  EmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'EmailChanged {email: $email}';
}
class Submitted extends VerifypasswordEvent{
  final String email;
  

  Submitted({@required this.email, });

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'Submitted {email: $email}';
}