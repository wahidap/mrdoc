import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        child: Image(image:  AssetImage('assets/images/avatar'),),
      ),
      title: Text('User@123'),
      subtitle: Text('username'),
      
    );
    
  }
}

