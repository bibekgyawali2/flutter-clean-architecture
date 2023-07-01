import 'package:clean_architecture/presentation/widgets/user_card.dart';
import 'package:clean_architecture/presentation/user_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserListProvider>(context, listen: false).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: context
                .watch<UserListProvider>()
                .users
                .map(
                  (e) => UserCard(
                    user: e,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
