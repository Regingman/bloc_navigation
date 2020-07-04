import 'package:bloc_navigation/bloc/my_bloc.dart';
import 'package:bloc_navigation/event/my_event.dart';
import 'package:bloc_navigation/state/my_state.dart';
import 'package:bloc_navigation/state/state_one.dart';
import 'package:bloc_navigation/state/state_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyBloc, MyState>(
      listener: (context, state) {
        if (state is StateTwo) {
          Navigator.of(context).pushNamed('/pageTwo');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page test one'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to Page Test two'),
            onPressed: () {
              BlocProvider.of<MyBloc>(context).add(MyEvent.eventTwo);
            },
          ),
        ),
      ),
    );
  }
}
