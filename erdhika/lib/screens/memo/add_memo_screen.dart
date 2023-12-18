import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddMemoScreen extends StatefulWidget {
  const AddMemoScreen({super.key});

  @override
  State<AddMemoScreen> createState() => _AddMemoScreenState();
}

class _AddMemoScreenState extends State<AddMemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              // height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/appbar-memo.png"),
                ),
              ),
              child: AppBar(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent
                ),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                elevation: 0,
                titleSpacing: 0,
                title: Text(
                  "Add Memo",
                  style: TextStyle(
                    // color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(),
            ),
          ],
        ),
      ),
    );
  }
}
