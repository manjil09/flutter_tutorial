import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user.dart';
import 'package:flutter_tutorial/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  final List<User> users = [
    User(
      name: "Name1",
      bio: "Bio1",
    ),
    User(
      name: "New User",
      bio: "Bio2 as he left the garden.",
    ),
    User(
      name: "User125",
      bio: "Bio3 he stumbled upon a golden treasure box.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ProfileCard(
          user: users[index],
        );
      },
    );
  }
}
