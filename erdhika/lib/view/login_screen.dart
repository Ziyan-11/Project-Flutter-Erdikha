import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: PaintTopRight(),
          ),
          AppBar(
            leadingWidth: 80,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.workSans(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 4),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "d",
                            style: TextStyle(color: Color(0xfffbb148)),
                          ),
                          TextSpan(text: "ev"),
                          TextSpan(
                            text: "rnz",
                            style: TextStyle(color: Color(0xfffbb148)),
                          ),
                        ],
                      ),
                      style: GoogleFonts.comicNeue(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  Text("Email id", style: GoogleFonts.workSans()),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: emailCtrl,
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                    validator: (value) =>
                        (value != null && !EmailValidator.validate(value))
                            ? "This Field is Required and include an '@'"
                            : null,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(
                        bottom: 0,
                        top: 0,
                        left: 10,
                        right: 10,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text("Password", style: GoogleFonts.workSans()),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: passwordCtrl,
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                    obscureText: true,
                    validator: (value) =>
                        value!.isEmpty ? "This Field is Required" : null,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(
                        bottom: 0,
                        top: 0,
                        left: 10,
                        right: 10,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xfffbb148),
                          Color(0xfff67f23),
                        ],
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: double.maxFinite,
                          height: 36,
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.workSans(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.workSans(),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 43),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text("or", style: GoogleFonts.workSans()),
                      SizedBox(width: 6),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(width: 43),
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        Ink(
                          decoration: BoxDecoration(
                            color: Color(0xff1258a6),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                            ),
                          ),
                          width: 36,
                          height: 36,
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Ink(
                            width: double.maxFinite,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xff2673b9),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Login with Facebook",
                                style: GoogleFonts.workSans(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        style: GoogleFonts.workSans(),
                        children: [
                          TextSpan(text: "Don't have an account ? "),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(color: Color(0xffeb8331)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaintTopRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xfffbb148),
          Color(0xffeb8331),
        ],
      ).createShader(
        Rect.fromCircle(
          center: Offset(size.width, size.height / 8),
          radius: 100,
        ),
      )
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width / 1.9, 0);
    path.cubicTo(size.width / 2.7, size.height / 9, size.width / 2.1,
        size.height / 7, size.width / 1.6, size.height / 6);
    path.cubicTo(size.width / 1.1, size.height / 5, size.width / 1.24,
        size.height / 3, size.width, size.height / 3.1);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
