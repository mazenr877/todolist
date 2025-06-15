import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bussines_logic_layer/cubit/charactercubit.dart';
import 'package:todolist/constant/string.dart';
import 'package:todolist/preasentation_layer/widgets/mypage.dart';

class AppRouter {
// // late Repositry repositry;
// // late CharacterCubit charactercubit;
//   AppRouter(){
//   // repositry = Repositry(ModelService());
//   // charactercubit = CharacterCubit(repositry);
//   }
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigatorRouter.mypage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CharacterCubit(),
                  child: MyPage(),
                ));
    }
  }
}
