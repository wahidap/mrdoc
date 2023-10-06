// import 'package:flutter/material.dart';
// import 'package:mrdoc/pages/profile/modles/view/profile_model.dart';
// import 'package:mrdoc/pages/profile/tile/profile_tile.dart';

// class ProfilePage extends StatelessWidget {
//    ProfilePage({super.key});
//        List<User> profileList=[

// User(name: 'my account', icon:Icon(Icons.person) ),
// User(name: 'my account', icon:Icon(Icons.person) ),
// User(name: 'my account', icon:Icon(Icons.person) ),
// User(name: 'my account', icon:Icon(Icons.person) ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Center(child: Text('Profile')),

//       // ),
//       // body: Center(
//       //   child: Column(
//       //     children: [
//       //       SizedBox(
//       //         height: 50,
//       //       ),
//       //       Text(
//       //         'Profile',
//       //         style: TextStyle(
//       //             fontSize: 28,
//       //             fontWeight: FontWeight.bold,
//       //             color: Colors.green.shade400),
//       //       ),

//       //        SizedBox(
//       //         height: 35,
//       //       ),
//       //        Stack(
//       //           children: [
//       //            CircleAvatar(
//       //             radius: 55,
//       //             backgroundcolor: Color.fromRGBO(7, 57, 109,100),
//       //            ),
//       //            Positioned(
//       //             right: 5,
//       //             bottom: 1,
//       //             child: CircleAvatar(
//       //               backgroundColor: Colors.grey.shade100,
//       //               radius: 20,
//       //               child: IconButton(onPressed: () {

//       //               }, icon: Icon(Icons.camera_alt,color: Colors.grey.shade900,))))
//       //           ],
//       //          ),
//       //          SizedBox(
//       //           height: 20,

//       //          ),

//       //          ListView.builder(
//       //           itemCount:profileList.length ,
//       //           itemBuilder: (context, index) {
//       //            return ProfileTile(userdata: profileList[index],);
//       //          },)

//       //     ],

//       //   ),

//       // ),

//       body:    ListView.builder(
//                 itemCount:profileList.length ,
//                 itemBuilder: (context, index) {
//                  return ProfileTile(userdata: profileList[index],);
//                },),
//     );

//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mrdoc/login/login_page.dart';
import 'package:mrdoc/pages/profile/models/view/profile_model.dart';
import 'package:mrdoc/pages/profile/pages/myaccount/view/my_account.dart';

import 'package:mrdoc/pages/profile/tile/profile_tile.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<User> profileList = [
    User(
     name: 'My Account',
      icon: Icon(
        Icons.person_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTap: () =>Get.to(MyAccount()),
    ),
    User(
      name: 'Settings',
      icon: Icon(
        Icons.settings_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTap: () {},
    ),
    User(
      name: 'Help Center',
      icon: Icon(
        Icons.question_mark_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTap: () {},
    ),
    User(
      name: 'Log Out',
      icon: Icon(
        Icons.logout,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(7, 57, 109, 100),
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Color.fromRGBO(7, 57, 109, 100),
              ),
              Positioned(
                  right: 5,
                  bottom: 1,
                  child: CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      radius: 20,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.grey.shade900,
                          ))))
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: profileList.length,
              itemBuilder: (context, index) {
                return InkWell(
                   onTap: profileList[index].onTap as Function()?,
                  child: ProfileTile(userdata: profileList[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
