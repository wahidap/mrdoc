import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mrdoc/cart/view/cart_page.dart';
import 'package:mrdoc/products/product_card/view/product_card.dart';
import 'package:mrdoc/widgets/view/carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
with SingleTickerProviderStateMixin
 {
  late TabController _tabController;
  @override
void initState() {
  super.initState();
  _tabController = TabController(length: 3, vsync: this);

  
}

@override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
appBar:PreferredSize(
        preferredSize:Size.fromHeight(80.0) ,
        child: AppBar(backgroundColor: Colors.green.shade400,
          
          actions: [
            IconButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
              );
              
            }, icon: Icon(Icons.shopping_cart)),
      
          ],
           title:Column(
             children: [
              
              SizedBox(
                height: 10

                ,
              ),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                 child: TextField(
                  
                  decoration: InputDecoration(
                    
                  // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all()),
                  suffixIcon:Icon(Icons.search,color: Colors.black,) ,
                  // prefix: Icon(Icons.search,color: Colors.white,),
                  
                    hintText: '    Search for medicines',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                  style: TextStyle(color: Colors.black12),
                       ),
               ),
             ],
             
           ),
        
        ),
        
      ),



      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(child: CarouselWithControls(),
                height: 200,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                  
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.green.shade400,
                    child: ProductCard(),
 
                  ),
                ],
              ),
              Container(
                height: 200,
                color: Colors.black,
              ),
            ],
          ),
        ),  
    );
  }
}