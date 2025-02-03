class User {
  String name;
  String bio;
  String imageUrl;

  User({
    required this.name,
    required this.bio,
    this.imageUrl = "https://picsum.photos/id/1/200/300",
  });
}
