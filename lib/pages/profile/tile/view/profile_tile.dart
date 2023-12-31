// import 'package:flutter/material.dart';
// import 'package:mrdoc/pages/profile/modles/view/profile_model.dart';




// class ProfileTile extends StatelessWidget {
//   ProfileTile({super.key,required this.userdata});
//   User userdata;
  





//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(userdata.name),
//       leading: userdata.icon,



//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:mrdoc/pages/profile/models/view/profile_model.dart';


class ProfileTile extends StatelessWidget {
  final User userdata;

  ProfileTile({Key? key, required this.userdata}) : super(key: key);

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
          onTap: ()=>
           userdata.onTap(),
        title: Text(userdata.name),
        leading: userdata.icon,
    
    
    
      )
      ),
    );
  }
}
