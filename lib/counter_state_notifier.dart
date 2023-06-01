//
//
//
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier/counter.dart';

//It manages the state of the counter
// and notifies listeners
// when the state changes.
class CounterStateNotifier extends StateNotifier<Counter> {
  CounterStateNotifier(super.state);

  void increment() {
    state = Counter(count: state.count + 1);
  }

  void decrement() {
    state = Counter(count: state.count - 1);
  }
}
