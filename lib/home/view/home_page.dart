import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(80.0) ,
        child: AppBar(
          
          actions: [
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.shopping_cart)),
      
          ],
           title:Column(
             children: [
              SizedBox(
                height: 8,
              ),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                 child: TextField(
                  
                  decoration: InputDecoration(
                    
                  // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all()),
                  suffixIcon:Icon(Icons.search,color: Colors.black,) ,
                  // prefix: Icon(Icons.search,color: Colors.white,),
                  
                    hintText: '    Search...',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                       ),
               ),
             ],
           ),
        
        ),
      ),
    );
  }
}