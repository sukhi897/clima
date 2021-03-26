import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  String myString = 'abc';
  try {
    double number = double.parse(myString);
    print(number);
  } catch (exception) {
    print(exception);
  }
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
  task4();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSec = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSec, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

void task4() {
  String result = 'task 4 data';
  print('Task 4 complete');
}
