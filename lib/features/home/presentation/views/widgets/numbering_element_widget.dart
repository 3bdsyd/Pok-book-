import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberingElementWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final double? elevation;
  final Function() onTap;
  const NumberingElementWidget({
    super.key,
    required this.color,
    required this.child,
    this.elevation, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        onLongPress: () => HapticFeedback.vibrate(),
        child: Card(
          color: color,
          elevation: elevation ?? 3,
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
