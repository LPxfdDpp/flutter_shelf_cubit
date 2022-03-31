import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitledflutter/pages/one_page/cubits/cubit.dart';
import 'package:untitledflutter/pages/one_page/repositories/repository1.dart';
import 'package:untitledflutter/pages/one_page/views/counter_view.dart';
import 'package:untitledflutter/pages/two_page/two.dart';
import 'package:untitledflutter/themes/my_theme.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    print("-------------- build one");

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Repository1>(
          lazy: false,
          create: (context) => Repository1(),
        ),
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider<CounterCubit>(
              lazy: false,
              create: (BuildContext context) => CounterCubit(context.read<Repository1>()),
            ),
          ],
          child: Stack(
            children: [
              CounterView(),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    MyTheme.changeTheme();
                  },
                  child: SizedBox(
                      height: 100,
                      child: Center(child: Text("拉地方lkjsadlf",style: MyTheme.currentTheme.textStyles.ts01,)))),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Two()));
                    },
                    child: Text("去第二页",style: MyTheme.currentTheme.textStyles.ts01,)),
              ),
            ],
          )),
    );
  }
}
