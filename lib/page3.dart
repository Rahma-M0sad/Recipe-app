import 'package:flutter/material.dart';

class OnBording3 extends StatefulWidget {
  const OnBording3({super.key});

  @override
  State<OnBording3> createState() => _OnBording3State();
}

class _OnBording3State extends State<OnBording3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/Shape 3.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Image.asset("images/shade.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            top: 500,
            left: 20,
            child: Text(
              "Become a\nMaster Chef",
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
