import 'package:flutter/material.dart';
import 'package:fooddeliveyapp/Screens/Auth/login.dart';
import 'package:fooddeliveyapp/Screens/SPlashData/splash_data.dart';
import 'package:fooddeliveyapp/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Column(
                    children: [
                      const Text(
                        'Hello! Create Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const LoginSreen(),
                                ),
                              );
                            },
                            child: const Text(
                              ' Sign in',
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 368,
                  width: 305,
                  child: Column(
                    children: [
                      const CustomTextField(
                        hint: 'Your Name',
                      ),
                      const CustomTextField(
                        hint: 'Username or Email',
                      ),
                      const CustomTextField(
                        hint: 'Password',
                      ),
                      CustomButton(onTapp: () {}, text: 'SignIn'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 2, width: 125, color: textfieldcolor),
                            const Text('Or'),
                            Container(
                              color: textfieldcolor,
                              height: 2,
                              width: 125,
                            ),
                          ],
                        ),
                      ),
                      SignInButtons(
                        onTapp: () {},
                        image: 'assets/images/Facebook - Logo.png',
                        text: 'Connect with Facebook',
                      ),
                      SignInButtons(
                        onTapp: () {},
                        image: 'assets/images/Google - Logo.png',
                        text: 'Connect with Google',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    super.key,
    required this.text,
    required this.onTapp,
    required this.image,
  });
  final String text;
  final VoidCallback onTapp;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        margin: const EdgeInsets.only(bottom: 10),
        height: 44,
        width: 305,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: textfieldcolor,
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(image),
              const SizedBox(width: 15),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
          color: textfieldcolor, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          contentPadding: const EdgeInsets.only(left: 15),
        ),
      ),
    );
  }
}
