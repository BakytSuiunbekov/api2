import 'package:api3/models/user_model.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
    required this.userModel,
  }) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('info page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'name: ${userModel.firstName}',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          Text(
            'last name: ${userModel.lastName}',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          Text(
            'email: ${userModel.email}',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Image.network(userModel.avatar)
        ],
      ),
    );
  }
}
