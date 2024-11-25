import 'package:flutter/material.dart';
import 'package:flutter_google_bookmark/theme.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key, required this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: FloatingButtonProperties.size,
        height: FloatingButtonProperties.size,
        decoration: FloatingButtonProperties.boxDecoration,
        padding: const EdgeInsets.all(10),
        child: Icon(
          Icons.add,
          color: FloatingButtonProperties.iconColor,
        ),
      ),
    );
  }
}
