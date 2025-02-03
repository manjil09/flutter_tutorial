import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/user_event.dart';
import 'package:flutter_tutorial/bloc/user_state.dart';
import 'package:flutter_tutorial/models/user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(UserState([
          User(name: "Name1", bio: "Bio1"),
          User(name: "New User", bio: "Bio2 as he left the garden."),
        ])) {
    on<AddUserEvent>((event, emit) {
      List<User> updatedUsers = List<User>.from(state.users)..add(event.user);
      emit(UserState(updatedUsers));
    });
  }
}
