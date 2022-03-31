import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitledflutter/pages/one_page/cubits/cubit.dart';
import 'package:untitledflutter/pages/one_page/cubits/states/count_state.dart';


/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocListener<CounterCubit,CountState>(
          listenWhen: (previous, current) {
            // return true/false to determine whether or not
            // to invoke listener with state
            if(current.age > 105){
              return true;
            }
            return false;
          },
          listener: (context, state) {
           // do stuff here based on BlocA's state
            print("00000000000");
          },
          child: Column(
            children: [
              BlocBuilder<CounterCubit, CountState>(
                buildWhen: (previous, current){
                  if(current.age == 106) return false;
                  return true;
                },
                builder: (context, state) {
                  print("------------");
                  return Text('${state.age}', style: textTheme.headline2);
                },
              ),
              const SizedBox(height: 8),
              BlocSelector<CounterCubit, CountState, String?>(
                selector: (state) {
                  // return selected state based on the provided state.
                  return state.name;
                },
                builder: (context, state) {
                  print("=============");
                  // return widget here based on the selected state.
                  return Text(state??"no name");
                },
              ),
              const SizedBox(height: 8),
              //效果与上面的 BlocSelector 相同
              Text(context.select<CounterCubit,String>((cb) => cb.state.name??"nono name"))
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_change_name_floatingActionButton'),
            child: const Icon(Icons.people),
            onPressed: () => context.read<CounterCubit>().changeName(),
          ),
        ],
      ),
    );
  }
}