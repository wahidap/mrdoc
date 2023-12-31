import 'package:flutter/material.dart';
import 'package:mrdoc/home/launching_page.dart';
import 'package:mrdoc/signup/view/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromRGBO(7, 57, 109,100),
        title: Center(child: Text('Sign In'),),
      ),
  body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
               child: Text(
  'Welcome back',
  style: TextStyle(
    fontSize: 33, // Adjust the value according to your needs
    height: 2, 
    fontWeight: FontWeight.bold
  ),
),
     ),
     Text('Sign in with your phone number and password'),
     SizedBox(
      height: 40,
     ),

TextFormField(
      obscureText: true,
      style: TextStyle(fontSize: (12)),
     
      decoration: InputDecoration(
        labelText: "phone Number",
        hintText: "Enter your phone number",
        suffixIcon: Icon(Icons.phone_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Color.fromRGBO(7, 57, 109,100),
            width: 1.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 16,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
       
      ),
    ),
    SizedBox(
      height: 30,
    ),
    TextFormField(
      obscureText: true,
      style: TextStyle(fontSize:(12)),
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: Icon(Icons.lock_outline),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:  BorderSide(
            color: Color.fromRGBO(7, 57, 109,100),
            width: 1.0,
          ),
        ),
        contentPadding:  EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 16,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        
      ),
    ),
    SizedBox(
      height: 40,
    ),
             Container(
  child: SizedBox(
    width: double.infinity, 
    child: TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LaunchPage(),
          ),
        );
      },
      style: TextButton.styleFrom(
        backgroundColor: Color.fromRGBO(7, 57, 109, 100), 
        padding: EdgeInsets.all(16), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
      ),
      child: Text(
        'Continue',
        style: TextStyle(color: Colors.white), 
        
      ),
    ),
  ),
),
            SizedBox(
              height: 30,
              child: Text("Don't have an account"
              
              ),
            ),
            Container(
              child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ));
                      }, child: Text('sign up',selectionColor: Color.fromRGBO(7, 57, 109,100),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
