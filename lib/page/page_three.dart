import 'package:bloc_navigation/bloc/my_bloc.dart';
import 'package:bloc_navigation/event/my_event.dart';
import 'package:bloc_navigation/state/my_state.dart';
import 'package:bloc_navigation/state/state_four.dart';
import 'package:bloc_navigation/state/state_one.dart';
import 'package:bloc_navigation/state/state_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyBloc, MyState>(
      listener: (context, state) {
        if (state is StateOne) {
          Navigator.of(context).pushNamed('/');
        } else if (state is StateTwo) {
          Navigator.of(context).pushNamed('/pageTwo');
        } else if (state is StateFour) {
          Navigator.of(context).pushNamed('/pageFour');
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Page Test three'),
          ),
          body: Center(
            child: new ListView(
              children: <Widget>[
                new RaisedButton(
                  child: Text('Go to Page Test one'),
                  onPressed: () {
                    BlocProvider.of<MyBloc>(context).add(MyEvent.eventOne);
                  },
                ),
                new RaisedButton(
                  child: Text('Go to Page Test two'),
                  onPressed: () {
                    BlocProvider.of<MyBloc>(context).add(MyEvent.eventTwo);
                  },
                ),
                new RaisedButton(
                  child: Text('Go to Page Test four'),
                  onPressed: () {
                    BlocProvider.of<MyBloc>(context).add(MyEvent.eventFour);
                  },
                ),
              ],
            ),
          )),
    );
  }
}
