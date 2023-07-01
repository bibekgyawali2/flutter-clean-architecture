import 'package:clean_architecture/domain/entities/user_modal.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final Users user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: ListTile(
        title: Text(user.title),
        subtitle: Text(user.body),
      ),
    );
  }
}
