import 'package:flutter/material.dart';
import 'package:untitled3/screens/Homework_screen.dart';
import 'Personal_screen.dart';
import 'Studing_screen.dart';
import 'Meeting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ToDoList',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.black12,
          leading: Icon(
            Icons.more_vert,
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black54,
        body: ListView(
            children: [
              Image.asset('assets/planner_vector.jpg'),

            Container(

            width: 200,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) => PersonalScreeen()));
                  },
              child: Text(
                  'Personal Activities',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                )),
                Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image.asset('assets/personal_vector.jpg'),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeworkScreen()));
                },
                child: Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: (MediaQuery.of(context).size.width - 80) / 2,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                    child: Text('HomeWork',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,
                      fontSize: 30
                    ),),
                  ),

                )),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudyingScreen()));
                },
                child: Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: (MediaQuery.of(context).size.width - 80) / 2,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.lightBlueAccent,
                  ),
                  child: Center(
                    child: Text('Studying',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,
                        fontSize: 30
                    ),),
                  ),

                ))
          ]),
              Container(

                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.all(20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => MeetingScreen()));
                        },
                        child: Text(
                          'Meeting',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Image.asset('assets/meeting_vector.png'),
                    ),
                  ],
                ),
              ),
        ]));
  }
}
