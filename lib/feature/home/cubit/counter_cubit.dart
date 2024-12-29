import 'package:flutter_nti/core/style/image_app.dart';
import 'package:flutter_nti/core/style/string_app.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/style/color_back_ground_image_home.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  String image = ImageApp.backGroundImage4;
  String name = StringApp.laAlihAlaAllah;
  Color color = ColorBackGroundImageHome.backGrey;
   double count =0;

  addCount(){
    count++;
    emit(UpdateCountState());
  }
  resetCount(){
    count=0;
    emit(UpdateCountState());
  }
  changeImage1() {
    image = ImageApp.backGroundImage1;
    color = ColorBackGroundImageHome.backTeal;
    emit(UpdateImageState());
  }

  changeImage2() {
    image = ImageApp.backGroundImage2;
    color = ColorBackGroundImageHome.backBlue;

    emit(UpdateImageState());
  }

  changeImage3() {
    image = ImageApp.backGroundImage3;
    color = ColorBackGroundImageHome.backPinkAccent;

    emit(UpdateImageState());
  }

  changeImage4() {
    image = ImageApp.backGroundImage4;
    color = ColorBackGroundImageHome.backGrey;

    emit(UpdateImageState());
  }

  changeName1() {
    name = StringApp.subhanAllah;
    emit(UpdateNameState());
  }

  changeName2() {
    name = StringApp.alhamdAilah;
    emit(UpdateNameState());
  }

  changeName3() {
    name = StringApp.laAlihAlaAllah;
    emit(UpdateNameState());
  }

  changeName4() {
    name = StringApp.allahAkbar;
    emit(UpdateNameState());
  }

  changeName5() {
    name = StringApp.lahulWalaquhAlaBiallah;
    emit(UpdateNameState());
  }
}
