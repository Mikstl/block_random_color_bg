import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_random_color_bg/widgets/home_page.dart';

import 'bloc/bloc.dart';
import 'bloc/event_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // Create and provide all widgets using block
        home: BlocProvider<UserBloc>(
            create: (context) => UserBloc()..add(UserChangeColorEvent()),
            child: MyHomePage()));
  }
}
