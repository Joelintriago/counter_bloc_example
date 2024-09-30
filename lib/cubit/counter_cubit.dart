import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

  void increment(){
    final newValue = state + 1;
    emit(newValue);
  }

  void decrement(){
    final newValue = state - 1;
    emit(newValue);
  }

  void multiplicar(int multiplo){
    final value = state *  multiplo;
    emit(value);
  }
}