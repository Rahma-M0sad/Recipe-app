import 'package:flutter/material.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/page1.dart';
import 'package:flutter_project/page2.dart';
import 'package:flutter_project/page3.dart';
import 'package:flutter_project/register.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (val) {
              setState(() {
                index = val;
              });
            },
            children: [OnBording1(), Page2(), OnBording3()],
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: List.generate(
                    3,
                    (i) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: index == i ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == i ? Colors.white : Colors.white38,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          if (index == 2)
            Positioned(
              bottom: 25,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
