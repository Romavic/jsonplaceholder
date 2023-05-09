import 'package:flutter/material.dart';

class TextSpanDS extends StatelessWidget {
  const TextSpanDS({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: TextStyle(color: Colors.black),
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: subtitle,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
