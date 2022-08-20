import 'package:flutter/material.dart';
import 'Home_screen.dart';
class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white38 ,
        body: ListView(
          children: [
            Todo(todoText: 'Meet Sara at 12:00'),
            Todo(todoText: 'Meet Jim tonight'),
            Todo(todoText: ' Meet Mum for Lunch'),

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
