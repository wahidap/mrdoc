import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), ),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: InkWell(
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => HotelsList(),));
            // },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5,top: 5),
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), 
                  child: Image.asset('assets/images/paracetamol.png',height: 101,),),
                ),
                
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('paracetamole',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    
                    Text('4.5'),
                  ],
                ),
                
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('blah',style: TextStyle(fontSize: 12),),
                          // Icon(FontAwesomeIcons.star,size: 10,color: Colors.yellow,)
                        ],
                      ),
                    ),      
              ],
              
            ),
            
          ),
        ),
      
      );
  }
}
