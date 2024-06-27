import 'package:flutter/material.dart';
import 'package:fooddeliveyapp/Screens/Auth/register.dart';
import 'package:fooddeliveyapp/colors.dart';

final splashData = [
  const OnBoardOne(),
  const OnBoardTwo(),
  const OnBoardThree(),
];

class OnBoardOne extends StatelessWidget {
  const OnBoardOne({super.key});

  @override
  Widget build(BuildContext context) {
    int? selectedIndex = 0;
    return Column(
      children: [
        Image.asset('assets/images/Group (16).png'),
        const Padding(
          padding: EdgeInsets.only(top: 80, bottom: 15),
          child: Text(
            'Diverse & sparkling food.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          'We use the best local ingredients to create fresh and delicious food and drinks.',
          style: TextStyle(
            color: Colors.black,
            height: 1.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 5,
                  width: index == selectedIndex ? 32 : 12,
                  decoration: BoxDecoration(
                    color: index == selectedIndex ? primaryColor : rollColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RegisterPage(),
              ),
            );
          },
          child: Container(
            height: 44,
            width: 305,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
            ),
            child: const Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OnBoardTwo extends StatelessWidget {
  const OnBoardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    int? selectedIndex = 1;
    return Column(
      children: [
        Image.asset('assets/images/Frame (3).png'),
        const Padding(
          padding: EdgeInsets.only(top: 50, bottom: 15),
          child: Text(
            'Free shipping on all orders',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          'Free shipping on the primary order whilst the usage of CaPay fee method.',
          style: TextStyle(
            color: Colors.black,
            height: 1.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 5,
                  width: index == selectedIndex ? 32 : 12,
                  decoration: BoxDecoration(
                    color: index == selectedIndex ? primaryColor : rollColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          text: 'Get Started',
          onTapp: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RegisterPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTapp,
    required this.text,
  });

  final VoidCallback onTapp;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        height: 44,
        width: 305,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardThree extends StatelessWidget {
  const OnBoardThree({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 2;
    return Column(
      children: [
        Image.asset('assets/images/Frame 13.png'),
        const Padding(
          padding: EdgeInsets.only(top: 50, bottom: 15),
          child: Text(
            '+24K Restaurants',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          'Easily find your favorite food and have it delivered in record time.',
          style: TextStyle(
            color: Colors.black,
            height: 1.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 5,
                  width: index == selectedIndex ? 32 : 12,
                  decoration: BoxDecoration(
                    color: index == selectedIndex ? primaryColor : rollColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RegisterPage(),
              ),
            );
          },
          child: Container(
            height: 44,
            width: 305,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
            ),
            child: const Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
