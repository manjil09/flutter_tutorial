import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/user_bloc.dart';
import 'package:flutter_tutorial/bloc/user_state.dart';
import 'package:flutter_tutorial/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.users.length,
          itemBuilder: (context, index) {
            return ProfileCard(
              user: state.users[index],
            );
          },
        );
      },
    );
  }
}
