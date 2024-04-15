import 'package:flutter/material.dart';

ScaffoldFeatureController customSnackBar(
  BuildContext context, {
  required final String text,
  required final Color color,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(text),
    ),
  );
}
