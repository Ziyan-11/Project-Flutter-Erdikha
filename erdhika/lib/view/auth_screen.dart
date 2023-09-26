import 'package:erdhika/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:erdhika/view/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfffbb148),
              Color(0xfff67f23),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 4.5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "d",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(text: "ev"),
                  TextSpan(
                    text: "rnz",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              style: GoogleFonts.comicNeue(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              elevation: 0,
              highlightElevation: 0,
              color: Colors.white,
              textColor: Color(0xfffbb148),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text("Login", style: GoogleFonts.workSans()),
            ),
            SizedBox(height: 5),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              elevation: 0,
              highlightElevation: 0,
              color: Colors.transparent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text("Register Now", style: GoogleFonts.workSans()),
            ),
            SizedBox(height: 50),
            Text(
              "Quick login with Touch ID",
              style: GoogleFonts.workSans(color: Colors.white),
            ),
            SizedBox(height: 25),
            IconButton.outlined(
              onPressed: () {},
              iconSize: 65,
              color: Colors.white,
              icon: Icon(Icons.fingerprint_rounded),
            ),
            SizedBox(height: 8),
            Text(
              "Use Touch ID",
              style: GoogleFonts.workSans(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
