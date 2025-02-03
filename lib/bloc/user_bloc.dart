import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/user_event.dart';
import 'package:flutter_tutorial/bloc/user_state.dart';
import 'package:flutter_tutorial/models/user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState([])) {
    on<AddUserEvent>((event, emit) {
      List<User> updatedUsers = List<User>.from(state.users)..add(event.user);
      emit(UserState(updatedUsers));
    });
  }
}
