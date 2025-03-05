import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.width = 307,
    this.height = 48,
  });

  final void Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Continue',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
