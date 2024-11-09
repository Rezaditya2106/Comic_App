import '../models/user.dart';
import '../services/user_service.dart';

class UserViewModel {
  final UserService _userService = UserService();

  Future<User> fetchUser() async {
    return await _userService.getUser();
  }
}
