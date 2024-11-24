import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          kAppName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 46,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
