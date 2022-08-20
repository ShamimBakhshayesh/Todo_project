import 'package:flutter/material.dart';
import  'package:untitled3/screens/Home_screen.dart';
class StudyingScreen extends StatefulWidget {
  const StudyingScreen({Key? key}) : super(key: key);

  @override
  State<StudyingScreen> createState() => _StudyingScreenState();
}

class _StudyingScreenState extends State<StudyingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white38 ,
        body: ListView(
          children: [
            Todo(todoText: 'study Geography for exam'),
            Todo(todoText: 'Study Chemistry '),
            Todo(todoText: ' study physics '),

          ],
        )

    );
  }
}
class Todo extends StatefulWidget {
  Todo({Key? key, this.todoText}) : super(key: key);
  var todoText;

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool ischecked = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      setState(
              (){
            ischecked = ! ischecked;
          }

      );
    },

      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.purpleAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.todoText, style: TextStyle(color: Colors.black),),
            Icon( ischecked?  Icons.check_box: Icons.check_box_outline_blank_outlined, color: Colors.black,)
          ],
        ),
      ),

    );
  }
}
