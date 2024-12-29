import 'package:flutter/material.dart';

import '../../../../core/style/size_app.dart';

class TextCounter extends StatelessWidget {
  const TextCounter({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: SizeApp.s100,
      child: Text(
        text,
        style: const TextStyle(color: Colors.indigo, fontSize: SizeApp.s30),
      ),
    );
  }
}
