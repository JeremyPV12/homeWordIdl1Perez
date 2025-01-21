import 'package:flutter/material.dart';

class IconCustom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const IconCustom({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      enableFeedback: true,
      color: Colors.lightBlue,
      icon:Icon(
        icon,
        size: 40,
        color: Colors.lightBlueAccent.shade400,
        )
    );
  }
}