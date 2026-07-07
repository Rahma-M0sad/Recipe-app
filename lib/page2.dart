import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/Shape 2.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Image.asset("images/shade.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            top: 500,
            left: 20,
            child: Text(
              "Learn To\nCook",
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
