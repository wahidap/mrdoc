// import 'package:flutter/material.dart';

// class User {
//     String name;
//     Icon icon;

//     User({
//         required this.name,
//         required this.icon,
//     });

// }
import 'package:flutter/material.dart';

class User {
   String name;
   Icon icon;
   Function onTap; 
  

  User({
    required this.name,
    required this.icon,
    required this.onTap,
    
    
  });
}

