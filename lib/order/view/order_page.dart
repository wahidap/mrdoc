// import 'package:flutter/material.dart';


// // class Order extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Orders',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: OrderPage(),
// //     );
// //   }
// // }

// class Product {
//   final String name;
//   final double price;

//   Product(this.name, this.price);
// }

// class OrderPage extends StatefulWidget {
//   @override
//   _OrderPageState createState() => _OrderPageState();
// }

// class _OrderPageState extends State<OrderPage> {
//   List<Product> products = [
//     Product('Product 1', 10.0),
//     Product('Product 2', 15.0),
//     Product('Product 3', 20.0),
//     // Add more products here
//   ];

//   List<Product> selectedProducts = [];

//   double calculateTotal() {
//     double total = 0;
//     for (var product in selectedProducts) {
//       total += product.price;
//     }
//     return total;
//   }

//   void addToOrder(Product product) {
//     setState(() {
//       selectedProducts.add(product);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Page'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].name),
//             subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
//             trailing: ElevatedButton(
//               onPressed: () {
//                 addToOrder(products[index]);
//               },
//               child: Text('Add to Order'),
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Total: \$${calculateTotal().toStringAsFixed(2)}'),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement your checkout logic here
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text('Order Confirmation'),
//                       content: Text('Your order has been placed!'),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Text('OK'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text('Place Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
