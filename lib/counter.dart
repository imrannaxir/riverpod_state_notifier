//
//
//

import 'package:flutter/material.dart';

@immutable
class Counter {
  final int count;
  const Counter({required this.count});
  /*
      The const keyword makes the constructor a compile-time constant, meaning it can be used to create instances of the class at compile-time.
   */
}
