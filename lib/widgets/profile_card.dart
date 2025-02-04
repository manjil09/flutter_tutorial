import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imageUrl),
                radius: 50,
              ),
              SizedBox(height: 16),
              Text(
                user.name,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                user.bio,
                maxLines: 5,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    print("LIke ${user.name}");
                  },
                  child: Text(
                    'Like',
                    maxLines: 1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
