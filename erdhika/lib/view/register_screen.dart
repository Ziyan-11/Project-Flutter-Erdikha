import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final usernameCtrl = TextEditingController();
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
                  Text("Username", style: GoogleFonts.workSans()),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: usernameCtrl,
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
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
                  SizedBox(height: 12),
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
                              "Register Now",
                              style: GoogleFonts.workSans(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        style: GoogleFonts.workSans(),
                        children: [
                          TextSpan(text: "Already have an account ? "),
                          TextSpan(
                            text: "Login",
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
