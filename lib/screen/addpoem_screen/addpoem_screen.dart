import 'package:flutter/material.dart';

class Add_Poem_Screen extends StatefulWidget {
  const Add_Poem_Screen({Key? key}) : super(key: key);

  @override
  State<Add_Poem_Screen> createState() => _Add_Poem_ScreenState();
}

class _Add_Poem_ScreenState extends State<Add_Poem_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("add Poem"),
      ),
    );
  }
}
