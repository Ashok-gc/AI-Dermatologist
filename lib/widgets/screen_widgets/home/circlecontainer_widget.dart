import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class CircleContainer extends StatelessWidget {
  final Color outerCircleColor;
  final Color innerCircleColor;
  final List<String> rightTexts;
  final List<String> rightValues;

  const CircleContainer({
    Key? key,
    required this.outerCircleColor,
    required this.innerCircleColor,
    required this.rightTexts,
    required this.rightValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: outerCircleColor,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: innerCircleColor,
                  ),
                  child: const Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < rightTexts.length; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        rightTexts[i],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rightValues[i],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

