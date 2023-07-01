import 'package:clean_architecture/domain/repositories/user_repositories.dart';

import '../../domain/entities/user_modal.dart';

class MockUsersRepositories implements UserRepositories {
  @override
  Future<List<Users>> getUsers() async {
    return [
      Users(
        id: 1,
        body: "adfasdf",
        title: 'asdfasdf',
        userId: 1,
      ).toDomain(),
    ];
  }
}
