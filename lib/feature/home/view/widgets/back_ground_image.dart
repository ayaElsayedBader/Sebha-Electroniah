import 'package:flutter/material.dart';

import '../../../../core/style/image_app.dart';
import '../../../../core/style/size_app.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key, required this.onTap, required this.image});

  final Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeApp.s30,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
