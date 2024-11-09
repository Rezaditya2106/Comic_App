import '../models/user.dart';

class UserService {
  Future<User> getUser() async {
    return User(name: 'Jackky Malia', profileImageUrl: 'https://example.com/profile.jpg');
  }
}
