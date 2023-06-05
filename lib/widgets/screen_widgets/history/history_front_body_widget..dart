import 'package:flutter/material.dart';

class HistoryFrontBodyWidget extends StatelessWidget {
  const HistoryFrontBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Positioned(
            top: -70,
            left: 0,
            height: screenHeight,
            child: SizedBox(
              width: screenWidth * 0.5, // Adjusted the width to show half the image
              height: screenHeight,
              child: Image.asset(
                'assets/historybodyfront.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth * 0.1,
            child: CircleButtonWidget(
              value: '1',
              onPressed: () {},
              isBig: true,
            ),
          ),
          Positioned(
            top: screenHeight * 0.3,
            left: screenWidth * 0.1,
            child: CircleButtonWidget(
              value: '2',
              onPressed: () {},
              isBig: true,
            ),
          ),
          Positioned(
            top: screenHeight * 0.42,
            left: screenWidth * 0.3,
            child: CircleButtonWidget(
              value: '3',
              onPressed: () {},
              isBig: false,
            ),
          ),
          Positioned(
            top: screenHeight * 0.42,
            left: screenWidth * 0.04,
            child: CircleButtonWidget(
              value: '4',
              onPressed: () {},
              isBig: false,
            ),
          ),
          Positioned(
            top: screenHeight * 0.7,
            left: screenWidth * 0.1,
            child: CircleButtonWidget(
              value: '5',
              onPressed: () {},
              isBig: false,
            ),
          ),
          Positioned(
            top: screenHeight * 0.7,
            left: screenWidth * 0.02,
            child: CircleButtonWidget(
              value: '6',
              onPressed: () {},
              isBig: false,
            ),
          ),
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
    final double outerCircleSize = isBig ? 0.12 : 0.08;
    final double innerCircleSize = isBig ? 0.08 : 0.06;

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * outerCircleSize,
        height: MediaQuery.of(context).size.width * outerCircleSize,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * outerCircleSize,
              height: MediaQuery.of(context).size.width * outerCircleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width * outerCircleSize -
                      MediaQuery.of(context).size.width * innerCircleSize) /
                  2,
              left: (MediaQuery.of(context).size.width * outerCircleSize -
                      MediaQuery.of(context).size.width * innerCircleSize) /
                  2,
              child: Container(
                width: MediaQuery.of(context).size.width * innerCircleSize,
                height: MediaQuery.of(context).size.width * innerCircleSize,
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
