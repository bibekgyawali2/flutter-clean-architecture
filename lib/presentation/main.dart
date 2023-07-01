import 'package:clean_architecture/domain/repositories/user_repositories.dart';
import 'package:clean_architecture/presentation/user_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import '../data/repositories/rest_api_user_repositories.dart';
import 'homepage.dart';

GetIt getIt = GetIt.instance;
void main() {
  getIt.registerLazySingleton<UserRepositories>(() => RestApiUserRepository());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserListProvider(
            userRepository: getIt()..getUsers(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
