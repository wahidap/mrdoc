import 'package:flutter/material.dart';
import 'package:mrdoc/pages/order/ordertile/view/order_tile.dart';
import 'package:mrdoc/pages/order/model/view/order_model.dart';

class OrderPage extends StatelessWidget {
   OrderPage({super.key});
       List<User2> orderList = [
    User2(
      name: 'Processing',
      icon: Icon(
        Icons.polymer,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User2(
      name: 'Awaiting Payments',
      icon: Icon(
        Icons.payment_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User2(
      name: 'Delivered',
      icon: Icon(
        Icons.delivery_dining_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User2(
      name: 'Cancled Orders',
      icon: Icon(
        Icons.cancel_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
  ];
    Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(246, 247, 248, 0.612),
      title: Center(
        child: Text(
          'Order',
          
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(7, 57, 109, 100),
          ),
        ),
      ),
    ),
    body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0), 
          
          child: Text(
            'Orders history', 
            style: TextStyle(
              fontSize: 22,
              color: Color.fromRGBO(7, 57, 109, 100),
            ),
          ),
        ),
        SizedBox(),
        Expanded(
          child: ListView.builder(
            itemCount: orderList.length,
            itemBuilder: (context, index) {
              return OrderTile(User2data: orderList[index]);
            },
          ),
        ),
      ],
    ),
  );
}


  }
