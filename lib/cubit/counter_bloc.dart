import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterBloc extends Cubit<CounterState>{
  CounterBloc():super(CounterStateInit());
  int counterA=0;
  int counterB=0;

 static CounterBloc get(context)=>BlocProvider.of(context);

  incrementTeamA(int value){
    counterA+=value;
    emit(CounterIncrementStateTeamA());
  }
  incrementTeamB(int value){
    counterB+=value;
    emit(CounterIncrementStateTeamB());
  }
  rest(){
    counterA=0;
    counterB=0;
    emit(CounterStateInit());
  }

}

