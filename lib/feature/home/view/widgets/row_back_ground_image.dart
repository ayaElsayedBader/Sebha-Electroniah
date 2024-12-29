
import 'package:flutter/material.dart';
import 'package:flutter_nti/feature/home/cubit/counter_cubit.dart';

import '../../../../core/style/image_app.dart';
import 'back_ground_image.dart';
class RowBackGroundImage extends StatelessWidget {
  const RowBackGroundImage({super.key, required this.cubit});
   final CounterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackGroundImage(
          image: ImageApp.backGroundImage4,
          onTap: (){
            cubit.changeImage4();
          },
        ),
        BackGroundImage(
          image: ImageApp.backGroundImage3,
          onTap: (){
            cubit.changeImage3();
          },
        ),
        BackGroundImage(
          image: ImageApp.backGroundImage2,
          onTap: (){
            cubit.changeImage2();
          },
        ),
        BackGroundImage(
          image: ImageApp.backGroundImage1,
          onTap: (){
            cubit.changeImage1();
          },
        ),

      ],
    );
  }
}
