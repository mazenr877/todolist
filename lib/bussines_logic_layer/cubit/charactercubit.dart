// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bussines_logic_layer/cubit/characterstate.dart';
import 'package:todolist/data_layers/model/model_todolist.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
  static CharacterCubit get(context) => BlocProvider.of(context);
  List<todolist> page = [
    todolist(
      name: "mazen",
    ),
  ];
  late String title;
  // boo(BuildContext context, index) {
  //   CharacterCubit.get(context).page[index].boo(context);
  //   emit(CharacterLodded());
  // }
  updatecheckbox(todolist todolist) {
    todolist.donechange();
    emit(CharacterLodded());
  }

  add(String newtask) {
    page.add(todolist(name: newtask));
    emit(CharacterLodded());
  }

  remove(todolist todolist) {
    page.remove(todolist);
    emit(CharacterLodded());
  }

  removeall() {
    page.removeRange(0, page.length);
    emit(CharacterLodded());
  }
}
