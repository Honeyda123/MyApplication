import 'package:firstproject/signIn.dart';
import 'package:firstproject/signUp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/images.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay with opacity to make text more readable
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          // Centered column for buttons
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                    // Navigate to Sign In page
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child:const Text('Sign In'),
                ),
               const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                    // Navigate to Sign Up page
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child:const  Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
