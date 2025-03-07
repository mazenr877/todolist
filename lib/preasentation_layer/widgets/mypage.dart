// ignore_for_file: unused_local_variable, unnecessary_string_interpolations, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bussines_logic_layer/cubit/charactercubit.dart';
import 'package:todolist/bussines_logic_layer/cubit/characterstate.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:todolist/data_layers/model/model_todolist.dart';
import 'package:todolist/preasentation_layer/widgets/listtile.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final instant = BlocProvider.of<CharacterCubit>(context);
    // final ins = CharacterCubit.get(context)
    return SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  showCloseIcon: true,
                  body: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: TextField(
                        autofocus: true,
                        onChanged: (val) {
                          CharacterCubit.get(context).title = val;
                        },
                      )),
                  btnOkOnPress: () {
                    CharacterCubit.get(context).add(instant.title);
                  },
                ).show();
              },
              backgroundColor: Colors.teal,
              child: const Icon(Icons.add),
            ),
            backgroundColor: Colors.teal,
            body: BlocBuilder<CharacterCubit, CharacterState>(
                builder: (context, state) {
              return Container(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, bottom: 43, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.playlist_add_check,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("ToDoDay",
                            style: TextStyle(fontSize: 23, color: Colors.white))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text("${CharacterCubit.get(context).page.length} Tasks",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        IconButton(
                          icon: Icon(
                            Icons.delete_forever_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            CharacterCubit.get(context).removeall();
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    const SizedBox(height: 18),
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(child: Listtile())))
                  ],
                ),
              );
            })));
  }
}
