import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.size,
  });
  final IconData icon;
  final Function() onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
      ),
      onPressed: onPressed,
      color: Colors.white,
      //iconSize: widget.size,
    );
  }
}
