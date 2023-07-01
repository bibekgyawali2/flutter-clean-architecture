import 'package:clean_architecture/domain/repositories/user_repositories.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../domain/entities/user_modal.dart';

class RestApiUserRepository implements UserRepositories {
  Future<List<Users>> getUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await http.get(url);
    print(response.statusCode);
    var list = json.decode(response.body) as List;
    return list.map((e) => Users.fromJson(e).toDomain()).toList();
  }
}
