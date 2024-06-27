
import 'package:flutter/material.dart';
import 'package:fooddeliveyapp/Screens/SPlashData/splash_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 130,
            left: 20,
            right: 20,
          ),
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          
            itemCount: 3,
            itemBuilder: (context, index) => splashData[index],
          ),
        ),
      ),
    );
  }
}
