import 'package:flutter/material.dart';

class TestPage7 extends StatelessWidget {
  const TestPage7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO List"),
      ),
      body: TodoWidget(),
    );
  }
}

class TodoData {
  String title;
  bool isComplete = false;

  TodoData({required this.title, this.isComplete = false});
}

class TodoWidget extends StatefulWidget {
  const TodoWidget({Key? key}) : super(key: key);

  @override
  _TodoWidgetState createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  var _textController = TextEditingController();
  List<TodoData> todoList = [TodoData(title: "씻기", isComplete: false)];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: TextFormField(
                  controller: _textController,
                )),
                ElevatedButton(
                    onPressed: () {
                      String todoTitle = _textController.text;
                      if (todoTitle.isEmpty == false) {
                        addTodo(TodoData(title: todoTitle));
                        _textController.text = "";
                      }
                    },
                    child: Text("Add"))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (ctx, i) {
                TodoData item = todoList[i];
                return ListTile(
                  title: Text(
                    item.title,
                    style: TextStyle(
                        decoration: item.isComplete ? TextDecoration.lineThrough : TextDecoration.none
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.restore_from_trash),
                    onPressed: () {
                      removeTodo(i);
                    },
                  ),
                  onTap: () {
                    print("onTap");
                    checkTodo(i);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void addTodo(TodoData item) {
    setState(() {
      todoList.add(item);
    });
  }

  void removeTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  void checkTodo(int index) {
    setState(() {
      todoList[index].isComplete = !todoList[index].isComplete;
    });
  }
}
