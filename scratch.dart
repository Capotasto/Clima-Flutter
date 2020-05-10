import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String resultTask2 = await task2();
  task3(resultTask2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  String result;

  Duration treeSeconds = Duration(seconds: 3);
  await Future.delayed(treeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String resultTask2) {
  String result = 'task 3 data';
  print('Task 3 complete: $resultTask2');
}
