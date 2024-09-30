import 'dart:async';

import 'package:counter_bloc_example/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0){
    on<IncrementEvent>(_onIncrementEvent);
    // on<IncrementEvent>((event,emit){
    //   final value = state + 1;
    //   emit(value);
    // });

    on<DecrementEvent>((event,emit){
      final value = state - 1;
      emit(value);
    });

    on<MultiplicarEvent>((event,emit){
      event.multiplo;
      
    });
  }

  FutureOr<void> _onIncrementEvent(IncrementEvent event, Emitter<int> emit) {
    final value = state +1;
    emit(value);
  }
}