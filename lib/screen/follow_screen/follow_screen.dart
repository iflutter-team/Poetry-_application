import 'package:flutter/material.dart';

import 'follow_screen_widget.dart';

class FollowScreen extends StatelessWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            container(),
          ],
        ),
      ),
    );
  }
}
