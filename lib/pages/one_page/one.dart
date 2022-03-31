import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitledflutter/pages/one_page/cubits/cubit.dart';
import 'package:untitledflutter/pages/one_page/repositories/repository1.dart';
import 'package:untitledflutter/pages/one_page/views/counter_view.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
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
          child: CounterView()),
    );
  }
}
