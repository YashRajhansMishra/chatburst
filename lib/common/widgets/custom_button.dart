import 'package:flutter/material.dart';
import 'package:chatburst/common/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,  // Updated to use super parameter
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Text(  // Move child to the end
        text,
        style: const TextStyle(
          color: blackColor,
        ),
      ),
    );
  }
}
