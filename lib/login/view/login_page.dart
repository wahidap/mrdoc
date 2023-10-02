import 'package:flutter/material.dart';
import 'package:mrdoc/home/launching_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('MRDOC!')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'phone number'),
                    
                  ),
                ),
              ),
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'username'),
                ),
              ),
              SizedBox(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LaunchPage(),
                          ));
                    },
                    child: Text('login')),
              ),
              SizedBox(
                child: Text('or'),
              ),
              SizedBox(child: TextButton(onPressed: () {
                
              }, child: Text('sign up')),),
            ],
          ),
        ),
      ),
    );
  }
}
