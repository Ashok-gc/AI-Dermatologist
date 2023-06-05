import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class HistoryBackBodyWidget extends StatelessWidget {
  const HistoryBackBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            height: screenHeight,
            child: SizedBox(
              width: screenWidth * 0.5, // Adjusted the width to show half the image
              height: screenHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'History / Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/historybodyback.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.18,
            right: screenWidth * 0.05,
            child: BoxWidget(
              heading: 'Head',
              value: '0',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.18,
            right: screenWidth * 0.32,
            child: BoxWidget(
              heading: 'Body',
              value: '1',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.27,
            right: screenWidth * 0.05,
            child: BoxWidget(
              heading: 'Left Arm',
              value: '0',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.27,
            right: screenWidth * 0.32,
            child: BoxWidget(
              heading: 'Right Arm',
              value: '0',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.36,
            right: screenWidth * 0.32,
            child: BoxWidget(
              heading: 'Left Leg',
              value: '0',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.36,
            right: screenWidth * 0.05,
            child: BoxWidget(
              heading: 'Right Leg',
              value: '0',
              onPressed: () {
                // Navigate to another page
              },
            ),
          ),
        ],
      ),
    );
  }
}


class BoxWidget extends StatelessWidget {
  final String heading;
  final String value;
  final VoidCallback onPressed;

  const BoxWidget({
    Key? key,
    required this.heading,
    required this.value,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF13204B),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  AppGaps.hGap10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(Icons.more_vert, size: 16, color: AppColors.white), // Replace with desired icon
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
