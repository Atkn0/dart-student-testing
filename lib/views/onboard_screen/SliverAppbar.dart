import 'package:flutter/material.dart';

class TestAppBar extends StatelessWidget {
  const TestAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: TextField(
          controller: textEditingController,
        ),
      ),
    );
  }
}
