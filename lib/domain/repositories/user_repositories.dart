import 'package:clean_architecture/domain/entities/user_modal.dart';

abstract class UserRepositories {
  Future<List<Users>> getUsers();
}
