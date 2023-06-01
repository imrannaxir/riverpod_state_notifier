//
//
//

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier/counter.dart';
import 'package:riverpod_state_notifier/counter_state_notifier.dart';

final counterProvider =
    StateNotifierProvider<CounterStateNotifier, Counter>((ref) {
      // ref stands for ProviderReference
      //it's a callback function that receives a ref object.
  return CounterStateNotifier(const Counter(count: 0));
});
