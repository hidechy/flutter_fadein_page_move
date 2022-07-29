import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
                      const SecondScreen(),
                  //
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                  //
                ),

                ///
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
