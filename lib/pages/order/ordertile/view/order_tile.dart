import 'package:flutter/material.dart';

import '../../model/view/order_model.dart';

class OrderTile extends StatelessWidget {
  final User2 User2data;

  OrderTile({Key? key, required this.User2data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        color: Color.fromRGBO(1,1,1, 0.1),
          borderRadius: BorderRadius.circular(20), // Set the border radius
        ),
        child: 
        ListTile(
          onTap: () {
            
          },
        title: Text(User2data.name),
        leading: User2data.icon,
    
    
    
      )
      ),
    );
  }
}
