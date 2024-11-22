import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;

  const BasicAppButton({
    super.key, required this.onPressed, required this.title, this.height
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
            title,
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              // color: Colors.white,
              // fontSize: 18
          ),
        ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80)
      ),
    );
  }
}
