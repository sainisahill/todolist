import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  //final List<Task> task;

  @override
  Widget build(BuildContext context) {
    String typedTask;
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'ADD TASK',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (value) {
              typedTask = value;
            },
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'write Text',
            ),
          ),
          FlatButton(
              child: Text(
                'Add',
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(typedTask);
                Navigator.pop(context);
                // addTaskf(typedTask);
              }),
        ],
      ),
    );
  }
}
