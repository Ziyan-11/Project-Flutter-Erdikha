import 'package:erdhika/screens/auth/login_screen.dart';
import 'package:erdhika/screens/auth/register_screen.dart';
import 'package:erdhika/widgets/button_main_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              // Color(0xFF252626),
              Color(0xFF80B3FF),
              // Color(0xFF769FCD),
              Color(0xFFA2C8F2),
              Color(0xFFB9D7EA),
              Color(0xFFA2C8F2),
              // Color(0xFFA2C8F2),
              // Color(0xFF98C2F5),
              Color(0xFF80B3FF),
              Color(0xFF80B3FF),
              Color(0xFF80B3FF),
              Color(0xFF80B3FF),
              Color(0xFF80B3FF),
              // Color(0xFFEEEEEE)
            ],
          ),
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(23, height * 0.13, 23, 0),
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              scale: 5,
              height: height * 0.25,
            ),
            // SizedBox(height: 10),
            ButtonMainWidget(
              text: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Color(0xfff5f5f5),
              onTap: () => Get.to(() => LoginScreen()),
            ),
            SizedBox(height: 18),
            ButtonMainWidget(
              text: Text(
                'Register Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.transparent,
              border: Border.all(color: Colors.white),
              onTap: () => Get.to(() => RegisterScreen()),
            ),
            SizedBox(height: 58),
            Text(
              "Quick login with Touch ID",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 25),
            Image.asset(
              "assets/images/fingerprint.png",
              scale: 3,
              height: height * 0.1,
            ),
            SizedBox(height: 25),
            Text(
              "Use Touch ID",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
