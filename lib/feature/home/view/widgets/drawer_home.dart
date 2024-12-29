
import 'package:flutter/material.dart';
import 'package:flutter_nti/feature/home/cubit/counter_cubit.dart';

import '../../../../core/style/string_app.dart';
import 'custom_widget_drawer.dart';
import 'image_widget_drawer.dart';
  class DrawerHome extends StatelessWidget {
    const DrawerHome({super.key, required this.cubit});
 final  CounterCubit cubit;
    @override
    Widget build(BuildContext context) {
      return
        Drawer(
          backgroundColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const ImageWidgetDrawer(),
              CustomWidgetDrawer(
                text: StringApp.subhanAllah,
                onTap: () {
                  cubit.changeName1();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.alhamdAilah,
                onTap: () {
                  cubit.changeName2();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.laAlihAlaAllah,
                onTap: () {
                  cubit.changeName3();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.allahAkbar,
                onTap: () {
                  cubit.changeName4();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.lahulWalaquhAlaBiallah,
                onTap: () {
                  cubit.changeName5();
                },
              ),
            ],
          ));
    }
  }
