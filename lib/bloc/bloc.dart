import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_random_color_bg/bloc/event_bloc.dart';
import 'package:block_random_color_bg/bloc/state_bloc.dart';

//application business logic layer
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserDeafaultState()) {
    // If an event has arrived
    on<UserChangeColorEvent>((event, emit) {
      //
      final Color randomColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
      emit(UserColorChangeState(randomColor: randomColor));
    });
  }
}
