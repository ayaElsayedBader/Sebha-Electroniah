
import 'package:flutter/material.dart';

import '../../cubit/counter_state.dart';
 listener (context, state){
  return (context, state) {
    if (state is UpdateImageState) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.white,
              content: Center(child: Text(" تم تحديث الخلفيه بنجاح" , style: TextStyle(
                  color: Colors.black
              ),)))
      );

    }
  };
}