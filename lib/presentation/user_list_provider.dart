// ignore_for_file: prefer_final_fields

import 'package:clean_architecture/domain/entities/user_modal.dart';
import 'package:clean_architecture/domain/repositories/user_repositories.dart';
import 'package:flutter/material.dart';

class UserListProvider with ChangeNotifier {
  final UserRepositories userRepository;
  UserListProvider({required this.userRepository});
  List<Users> users = [];

  Future<void> getUsers() async {
    users = await userRepository.getUsers();
    notifyListeners();
  }
}
