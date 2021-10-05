import 'package:bloc/bloc.dart';
import 'package:project/modules/counter/cubit/state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
}
