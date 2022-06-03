import 'package:flutter/material.dart';

abstract class UserState {}

//Describes all the states that we can get from the business logic
class UserColorChangeState extends UserState {
  Color randomColor;
  UserColorChangeState({required this.randomColor});
}

class UserDeafaultState extends UserState {}
