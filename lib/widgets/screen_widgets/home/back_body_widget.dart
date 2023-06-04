import 'package:flutter/material.dart';

class BackBodyWidget extends StatelessWidget {
  const BackBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page when the body is tapped
        // Replace `AnotherPage()` with your desired page widget
        // Navigator.push(context, MaterialPageRoute(builder: (_) => AnotherPage()));
      },
      child: Stack(
        children: [
          Image.asset('assets/back_image.png'), // Replace with your front body image
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '1', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '2', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '3', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '4', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '5', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 50, // Adjust the position according to your image
            left: 80,
            child: CircleButtonWidget(
              value: '6', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),

          // Add more positioned circles for other body parts
        ],
      ),
    );
  }
}

class CircleButtonWidget extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;

  const CircleButtonWidget({super.key, 
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
