import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:mrdoc/pages/profile/profilepage/profile_page.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Color.fromRGBO(7, 57, 109, 100),
                ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(7, 57, 109, 100),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: const Text('Edit'),
            ),
          ],
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                  title: Text('User@123'),
                  subtitle: Text('username'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Username',selectionColor: Color.fromRGBO(7, 57, 109, 100),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('eva'),
                      ],
                    ),
                    Divider(
                      color: Color.fromRGBO(7, 57, 109, 100),
                      height: 1,
                    ),
                  ],
                ),
              ),
               Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Phone number',selectionColor: Color.fromRGBO(7, 57, 109, 100),),
                        ],
                      ),
                      
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('+91 321456987'),
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(7, 57, 109, 100),
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
        
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Email',selectionColor: Color.fromRGBO(7, 57, 109, 100),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('eva@gmail.com'),
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(7, 57, 109, 100),
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Password',selectionColor: Color.fromRGBO(7, 57, 109, 100),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {
                            
                          }, child: Text('Change password')),
                        ],
                      ),
                      Divider(
                        color: Color.fromRGBO(7, 57, 109, 100),
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      );
  }
}
