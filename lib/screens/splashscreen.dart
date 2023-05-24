
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          //color in blue shade
          
          colors: [
            Color(0xFFF0FAF6),
            Color(0xFFB2D9CC),
            Color(0xFF66A690),
            Color(0xFF93C9B5),
          ],
          stops: [0.1, 0.4, 0.7, 0.9],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assests/images/logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'AI Dermatologist',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A34),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Skin Scanner',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A34),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            //place CircularProgressIndicator in button

            const CircularProgressIndicator(
              color: Color(0xFF1E3A34),
            ),
          ],
        ),
      ),
    ),
    );
  }
}