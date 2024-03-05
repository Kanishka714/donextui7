import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Color color;
  final String buttonText;
  final Color textColor; // New property for text color
  const MyButton({Key? key, required this.color, required this.buttonText, required this.textColor}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( // Corrected line
      style: ElevatedButton.styleFrom(
        primary: widget.color, // Use widget.color instead of Color
      ),
      onPressed: () {
        print("button clicked");
      },
      child: Text(
        widget.buttonText, // Use widget.buttonText for the button text
        style: TextStyle(
          color: widget.textColor, // Set text color using widget.textColor
        ),
      ),
    );
  }
}
