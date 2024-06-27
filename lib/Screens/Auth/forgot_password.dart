import 'package:flutter/material.dart';
import 'package:fooddeliveyapp/Screens/Auth/register.dart';
import 'package:fooddeliveyapp/Screens/SPlashData/splash_data.dart';
import 'package:fooddeliveyapp/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 90,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Image.asset('assets/images/Logo.png'),
              const Padding(
                padding: EdgeInsets.only(top: 40,bottom: 20),
                child: Column(
                  children: [
                    Text(
                      'Reset your password',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2.0),
                        'At least 8 characters including uppercase and lowercase letters'),
                  ],
                ),
              ),
              SizedBox(
                height: 156,
                width: 305,
                child: Column(
                  children: [
                    const CustomTextField(hint: 'New password'),
                    const CustomTextField(hint: 'Confirm password'),
                    const SizedBox(height: 4),
                    CustomButton(onTapp: () {}, text: 'Update'),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
