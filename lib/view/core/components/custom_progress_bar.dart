import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key, required this.progress});
  final double progress; // Progress value (0.0 to 1.0)
  @override
  Widget build(BuildContext context) {
    double actualProgress = progress.clamp(0.0, 1.0); // Ensure valid range
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        return SizedBox(
          height: 19,
          child: Stack(
            children: [
              // Filled progress area
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: (maxWidth + 4) * actualProgress,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              // Ensure text is always inside the filled area
              Positioned(
                left: actualProgress < 0.2
                    ? 5
                    : (maxWidth + 4) * actualProgress * 0.43,
                child: Text(
                  actualProgress < 0.1
                      ? ''
                      : "${(actualProgress * 100).toInt()}%",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 19,
                width: maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.orange, width: 2),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
