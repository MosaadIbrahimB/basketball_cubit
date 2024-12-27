import 'package:basket_ball_samy/widget/button_model.dart';
import 'package:basket_ball_samy/widget/column_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_bloc.dart';
import '../cubit/counter_state.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          CounterBloc counterBloc=CounterBloc.get(context);
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnModel(
                    title: "Team A",
                    counter: counterBloc.counterA,
                    onPress1: () => counterBloc.incrementTeamA(1),
                    onPress2: () => counterBloc.incrementTeamA(2),
                    onPress3: () => counterBloc.incrementTeamA(3),
                  ),
                  Container(
                    height: 400,
                    color: Colors.grey[400],
                    width: 1,
                  ),
                  ColumnModel(
                    title: "Team B",
                    counter: counterBloc.counterB,
                    onPress1: () => counterBloc.incrementTeamB(1),
                    onPress2: () => counterBloc.incrementTeamB(2),
                    onPress3: () => counterBloc.incrementTeamB(3),
                  )
                ],
              ),
              BtnModel(
                title: "Rest",
                onPress: () => counterBloc.rest(),
              )
            ],
          );
        },
      ),
    );
  }
}