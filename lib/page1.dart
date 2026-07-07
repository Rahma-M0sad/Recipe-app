import 'package:flutter/material.dart';

class OnBording1 extends StatefulWidget {
  const OnBording1({super.key});

  @override
  State<OnBording1> createState() => _OnBording1State();
}

class _OnBording1State extends State<OnBording1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/Shape.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Image.asset("images/shade.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            top: 500,
            left: 20,
            child: Text(
              "Share Your\nRecipes",
              style: TextStyle(
                fontFamily: "regular",
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Positioned.fill(
            top: 630,
            left: 20,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur  elit,\nsed do eiusmod tempor incididunt ut.",
              style: TextStyle(
                fontFamily: "regular",
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
