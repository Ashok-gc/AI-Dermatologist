import 'package:flutter/material.dart';

class HistoryBackBodyWidget extends StatelessWidget {
  const HistoryBackBodyWidget({super.key});

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
          Image.asset('assets/historybodyback.png'), // Replace with your front body image
          Positioned(
            top: 0, // Adjust the position according to your image
            left: 153,
            child: CircleButtonWidget(
              value: '1', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 120, // Adjust the position according to your image
            left: 153,
            child: CircleButtonWidget(
              value: '2', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 160, // Adjust the position according to your image
            left: 23,
            child: CircleButtonWidget(
              value: '3', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 160, // Adjust the position according to your image
            left: 273,
            child: CircleButtonWidget(
              value: '4', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 350, // Adjust the position according to your image
            left: 97,
            child: CircleButtonWidget(
              value: '5', // Replace with the value you want to display
              onPressed: () {
                // Handle circle button press
              },
            ),
          ),
          Positioned(
            top: 350, // Adjust the position according to your image
            left: 208,
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
  final bool isBig;

  const CircleButtonWidget({
    Key? key,
    required this.value,
    required this.onPressed,
    this.isBig = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double outerCircleSize = isBig ? 60 : 40;
    final double innerCircleSize = isBig ? 40 : 30;

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: outerCircleSize,
        height: outerCircleSize,
        child: Stack(
          children: [
            Container(
              width: outerCircleSize,
              height: outerCircleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: (outerCircleSize - innerCircleSize) / 2,
              left: (outerCircleSize - innerCircleSize) / 2,
              child: Container(
                width: innerCircleSize,
                height: innerCircleSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}