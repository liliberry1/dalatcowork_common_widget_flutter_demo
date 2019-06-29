import 'dart:math';
import 'package:flutter/material.dart';

randomNumber(int max) {
  return new Random().nextInt(max);
}

countLength(List<int> list) {
  int count = 0;

  list.forEach((f) {
    if (f != null) {
      count++;
    }
  });

  return count;
}

Color randomColor() {
  Random ram = Random();
  return Color.fromARGB(
      ram.nextInt(100), ram.nextInt(256), ram.nextInt(256), ram.nextInt(256));
}
