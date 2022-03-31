import 'package:bloc/bloc.dart';
import 'package:untitledflutter/pages/one_page/cubits/states/count_state.dart';
import 'package:untitledflutter/pages/one_page/repositories/repository1.dart';

class CounterCubit extends Cubit<CountState> {
  final Repository1 repository1;
  CounterCubit(this.repository1):super(CountState()){
    first();
  }

  first() async{
    await repository1.data1.getData();

    emit(state.copyWith(name: repository1.data1.someData));
  }

  void increment() => emit(state.copyWith(age: state.age+1));
  void decrement() => emit(state.copyWith(age: state.age-1));
  void changeName() => emit(state.copyWith(name: "henry"));





  @override
  void onChange(Change<CountState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}