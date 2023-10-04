  import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        // You can replace the placeholder values with actual data
        return ListTile(
          title: Text('User $index'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Phone Number: +1234567890'),
              Text('Gender: Female'),
              Text('Email: user$index@example.com'),
              Text('Password: ********'),
            ],
          ),
        );
      },
    );
  }
}
