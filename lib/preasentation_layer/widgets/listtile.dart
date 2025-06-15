import 'package:flutter/material.dart';
import 'package:todolist/bussines_logic_layer/cubit/charactercubit.dart';

class Listtile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CharacterCubit.get(context).page.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${CharacterCubit.get(context).page[index].name}",
              style: TextStyle(
                  decoration: CharacterCubit.get(context).page[index].check
                      ? TextDecoration.lineThrough
                      : null),
            ),
            trailing: Checkbox(
              value: CharacterCubit.get(context).page[index].check,
              onChanged: (v) {
                CharacterCubit.get(context)
                    .updatecheckbox(CharacterCubit.get(context).page[index]);
              },
              // fillColor: const WidgetStatePropertyAll(
              //     Colors.teal),
            ),
            onLongPress: () {
              CharacterCubit.get(context)
                  .remove(CharacterCubit.get(context).page[index]);
            },
          );
        });
  }
}
