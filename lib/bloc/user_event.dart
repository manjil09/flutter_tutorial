import 'package:flutter_tutorial/models/user.dart';

abstract class UserEvent {}

class AddUserEvent extends UserEvent {
  final User user;

  AddUserEvent(this.user);
}
