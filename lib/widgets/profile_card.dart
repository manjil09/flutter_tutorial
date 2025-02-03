import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imageUrl;

  const ProfileCard(
      {super.key,
      required this.name,
      required this.bio,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 50,
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("LIke ${name}");
                },
                child: Text('Like')),
          ],
        ),
      ),
    );
  }
}
