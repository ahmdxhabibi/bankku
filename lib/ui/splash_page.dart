import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/logo_white.png'))),
        ),
      ),
    );
  }
}
