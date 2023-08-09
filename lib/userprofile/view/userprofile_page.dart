import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: ProfilePage(),
    );
  }
}

class UserProfile {
  final String username;
  final String email;
  final String profileImage;

  UserProfile(this.username, this.email, this.profileImage);
}

class ProfilePage extends StatelessWidget {
  final UserProfile user = UserProfile('john_doe', 'john@example.com', 'profile_image.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.profileImage),
            ),
            SizedBox(height: 20),
            Text(
              user.username,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              user.email,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement edit profile functionality
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
