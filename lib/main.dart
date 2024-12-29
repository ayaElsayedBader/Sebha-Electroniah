import 'package:flutter/material.dart';

import 'core/block/block_observer.dart';

import 'my_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
