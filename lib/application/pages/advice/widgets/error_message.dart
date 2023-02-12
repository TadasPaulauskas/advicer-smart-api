import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String messge;
  const ErrorMessage({super.key, required this.messge});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40,
          color: Colors.redAccent,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          messge,
          style: themeData.textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
