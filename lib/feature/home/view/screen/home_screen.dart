import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/style/size_app.dart';
import '../../cubit/counter_cubit.dart';
import '../../cubit/counter_state.dart';
import '../widgets/app_bar.dart';
import '../widgets/button_counter.dart';
import '../widgets/drawer_home.dart';
import '../widgets/listener.dart';
import '../widgets/row_back_ground_image.dart';
import '../widgets/text_counter.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: listener(context, CounterState),
        builder: (context, state) {
          CounterCubit cubit = BlocProvider.of(context);

          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                drawer: DrawerHome(
                  cubit: cubit,
                ),
                appBar: homeAppBar(text: cubit.name, color: cubit.color),
                body: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(cubit.image), fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizeApp.s50,
                      ),
                      TextCounter(
                        text: cubit.count.toInt().toString(),
                      ),
                      const SizedBox(
                        height: SizeApp.s100,
                      ),
                      Row(
                        children: [
                          ButtonCounter(
                            onTap: () {
                              cubit.addCount();
                            },
                            iconData: Icons.fingerprint,
                          ),
                          const Spacer(),
                          ButtonCounter(
                            onTap: () {
                              cubit.resetCount();
                            },
                            iconData: Icons.restore_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: SizeApp.s70,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: RowBackGroundImage(
                            cubit: cubit,
                          ))
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
