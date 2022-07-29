import 'package:flutter/material.dart';

import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,

                ///

                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 2000),
                  //
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const FirstScreen(),
                  //
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                  //
                ),

                ///
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
