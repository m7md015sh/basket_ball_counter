import 'dart:ffi';

import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterAIncrementState());
  int teamACounter=0;
  int teamBCounter=0;
  void counterIncrement({required String team, required int buttonNumber}){
    if(team=='A'){
      teamACounter+=buttonNumber;
      emit(CounterAIncrementState());
    }else{
      teamBCounter+=buttonNumber;
      emit(CounterBIncrementState());
    }
  }
  void resetCounter(){
    teamACounter=0;
    emit(CounterAIncrementState());
    teamBCounter=0;
    emit(CounterBIncrementState());

  }
}