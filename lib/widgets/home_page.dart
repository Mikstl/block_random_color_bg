import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_random_color_bg/bloc/bloc.dart';
import 'package:block_random_color_bg/bloc/event_bloc.dart';
import 'package:block_random_color_bg/bloc/state_bloc.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Implementation of accessing widgets to bloc
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    final size = MediaQuery.of(context).size;
    const double fontSize = 0.10;
    final height = size.height;
    const Color colorBackground = Colors.white;

    return Scaffold(
      // Click event handler
      body: GestureDetector(
        onTap: () {
          userBloc.add(UserChangeColorEvent());
        },
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserColorChangeState) {
              return Container(
                // Getting color state from business logic layer
                color: state.randomColor,
                child: Center(
                  child: Text(
                    'Hey There!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: height * fontSize),
                  ),
                ),
              );
            }
            // Default Widget
            return Container(
              color: colorBackground,
              child: Center(
                child: Text(
                  'Hey There!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: height * fontSize),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
