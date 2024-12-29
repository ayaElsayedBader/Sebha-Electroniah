import 'package:flutter/material.dart';

import '../../../../core/style/string_app.dart';
import '../../../../core/style/text_style.dart';

AppBar homeAppBar( {required Color color , required String text}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor:color,
    title:  Text(
        style: white25W800,

        text),
    centerTitle: true,
  );
}
