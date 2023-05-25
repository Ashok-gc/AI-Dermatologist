
import 'package:flutter/material.dart';

import '../../utils/constants/app_page_names.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Set the background color to blue

      appBar: AppBar(
        title: const Text('Signup'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Please fill out the form below:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    // Add your form widgets here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        
        // color: Colors.white,
        decoration: const BoxDecoration(
          color: Colors.transparent, // Set the container background color to transparent
        ),
        padding: const EdgeInsets.all(16),
        height: 58,
        child: ElevatedButton(
          onPressed: () {
            height: 58;

            // Perform signup action
            
            //signup page
            Navigator.pushNamed(
                            context, AppPageNames.signUpScreen);
          },
          child: const Text('Sign Up'),
        ),
      ),
    );
  }
}

