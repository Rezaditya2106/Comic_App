class User {
  final String name;
  final String avatarPath;
  final String greeting;

  User({
    required this.name,
    required this.avatarPath,
    this.greeting = "Welcome",
  });

  // Contoh data pengguna
  static User getCurrentUser() {
    return User(
      name: "Jackky Malia",
      avatarPath: "assets/images/tower_of_god.jpg",
      greeting: "Welcome",
    );
  }
}
