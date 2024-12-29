import 'package:flutter/material.dart';

import 'border_text_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      required this.hint,
      required this.textInputType,
      required this.controller,
      required this.prefix, this.validator,
    });

  final String label;
  final String hint;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Widget prefix;
 final  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        prefix: prefix,
        suffix: IconButton(onPressed: (){
          controller.clear();
        }, icon:  const Icon(Icons.remove)) ,
        hintText: hint,
        border: borderText(color: Colors.black87, radius: 30),
        enabledBorder: borderText(color: Colors.green, radius: 40),
        focusedBorder: borderText(color: Colors.indigo, radius: 50),
      ),
    );
  }
}


