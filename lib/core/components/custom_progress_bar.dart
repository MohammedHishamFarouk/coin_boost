import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key, required this.progress});
  final double progress; // Progress value (0.0 to 1.0)
  @override
  Widget build(BuildContext context) {
    double actualProgress = progress > 1 ? 1 : progress;
    return SizedBox(
      height: 19,
      width: 281,
      child: Stack(
        children: [
          // Filled progress area
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width:
                    (281 + 4) * actualProgress, // Ensuring the fill is precise
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          // Ensure text is always inside the filled area
          Positioned(
            left: (281 + 4) * actualProgress * 0.45,
            child: Center(
              child: Text(
                "${(actualProgress * 100).toInt()}%",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            height: 25, // Adjusted height for better proportions
            width: 281, // Fixed width for a consistent look
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.orange, width: 2),
            ),
          ),
        ],
      ),
    );
  }
}
