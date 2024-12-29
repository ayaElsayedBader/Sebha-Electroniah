import 'package:flutter/material.dart';

import '../../../../core/style/size_app.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key, this.onTap, required this.iconData});

  final void Function()? onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: SizeApp.s50,
        child: Icon(
          iconData,
          size: SizeApp.s40,
        ),
      ),
    );
  }
}
