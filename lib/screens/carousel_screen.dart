import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/user_bloc.dart';
import 'package:flutter_tutorial/bloc/user_state.dart';
import 'package:flutter_tutorial/widgets/profile_card.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;

    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return SizedBox(
          height: height*.6,
          child: CarouselView.weighted(
            itemSnapping: true,
            flexWeights: [1],
            children: List<Widget>.generate(state.users.length, (int index) {
              return ProfileCard(user: state.users[index]);
            }),
          ),
        );
      },
    );
  }
}
