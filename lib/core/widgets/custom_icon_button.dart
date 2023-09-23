import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.color,
    this.child,
    this.shadow,
  });

  final Color? color;
  final Widget? child;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.white12,
        boxShadow: shadow,
      ),
      // TODO: Child icon
      child: Center(child: child),
    );
  }
}
