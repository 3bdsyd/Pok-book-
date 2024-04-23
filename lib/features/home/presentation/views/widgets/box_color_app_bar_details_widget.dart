import 'package:flutter/material.dart';

class BoxColorAppBarDetailsWidget extends StatelessWidget {
  const BoxColorAppBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 283,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 5)
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xff7FCAD1),
            Color(0xff3DA0A9),
          ],
        ),
      ),
    );
  }
}
