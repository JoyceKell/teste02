import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const ColorButton({
    Key? key,
    required this.color,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        textStyle: const TextStyle(fontSize: 20),
      ),
    );
  }
}
