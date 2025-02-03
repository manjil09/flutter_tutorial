import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {


  final List<Map<String,String>> users =[
    {"name":"Name1","bio":"Bio1","imageUrl":"https://picsum.photos/id/1/200/300"},
    {"name":"Name2","bio":"Bio2 as he left the garden.","imageUrl":"https://picsum.photos/id/1/200/300"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: users.length,itemBuilder: (context,index){
        return ProfileCard(name: users[index]['name']!, bio: users[index]['bio']!, imageUrl: users[index]['imageUrl']!);
      },),
    );
  }
}