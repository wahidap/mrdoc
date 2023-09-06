import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Profile')),

      // ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Profile',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade400),
            ),

             SizedBox(
              height: 35,
            ),
             Stack(
                children: [
                 CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.green.shade400,
                 ),
                 Positioned(
                  right: 5,
                  bottom: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 20,
                    child: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.camera_alt,color: Colors.grey.shade900,))))
                ],
               ),
               SizedBox(
                height: 20,

               ),
               
               
          ],
          
        ),
        
      ),
    );
  }
}
