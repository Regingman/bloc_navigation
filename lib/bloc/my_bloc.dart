import 'package:bloc/bloc.dart';
import 'package:bloc_navigation/event/my_event.dart';
import 'package:bloc_navigation/state/my_state.dart';
import 'package:bloc_navigation/state/state_four.dart';
import 'package:bloc_navigation/state/state_one.dart';
import 'package:bloc_navigation/state/state_three.dart';
import 'package:bloc_navigation/state/state_two.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  @override
  MyState get initialState => StateOne();

  @override
  Stream<MyState> mapEventToState(MyEvent event) async* {
    switch (event) {
      case MyEvent.eventOne:
        yield StateOne();
        break;
      case MyEvent.eventTwo:
        yield StateTwo();
        break;
      case MyEvent.eventThree:
        yield StateThree();
        break;
      case MyEvent.eventFour:
        yield StateFour();
        break;
    }
  }
}
