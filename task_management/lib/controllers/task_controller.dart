// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:task_management/db/db_helper.dart';
import 'package:task_management/models/task.dart';

class TaskController extends GetxController {
  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
    getTasks();
  }

  var taskList = <Task>[].obs;

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);

  }

  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    // ignore: unnecessary_new
    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());

  }

  void delete(Task task) {
    DBHelper.delete(task);
    getTasks();
  }

  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
