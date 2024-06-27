import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveyapp/Screens/Auth/forgot_password.dart';
import 'package:fooddeliveyapp/Screens/Auth/register.dart';
import 'package:fooddeliveyapp/Screens/SPlashData/splash_data.dart';
import 'package:fooddeliveyapp/colors.dart';

class LoginSreen extends StatelessWidget {
  const LoginSreen({super.key});

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
                  padding: EdgeInsets.only(top: 20, bottom: 35),
                  child: Column(
                    children: [
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hello joe, sign in to continue',
                        style: TextStyle(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Or'),
                          Text(
                            ' create new account',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 352,
                  width: 305,
                  child: Column(
                    children: [
                      const CustomTextField(hint: 'Username or Email'),
                      const CustomTextField(hint: 'Password'),
                      CustomButton(onTapp: () {}, text: 'Signin'),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
