// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todolist/bussines_logic_layer/cubit/charactercubit.dart';
// import 'package:todolist/bussines_logic_layer/cubit/characterstate.dart';

class todolist {
  final String name;
  bool check;
  todolist({this.check = false, required this.name});
  void donechange() {
    check = !check;
  }
}
