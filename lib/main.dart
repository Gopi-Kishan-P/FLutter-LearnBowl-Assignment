import 'package:class_schedule/models/data.dart';
import 'package:class_schedule/widgets/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(CustomColors.primaryMaterialColor,
            CustomColors.primaryMaterialColorSwatch),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ClassSchedule> _classSchedule = [
      ClassSchedule(
        subjectName: 'Alphabets',
        startTime: '09:00 am',
        endTime: '09:50 am',
        instructor: 'Mr. Rajesh',
      ),
      ClassSchedule(
        subjectName: 'Greetings',
        startTime: '10:00 am',
        endTime: '10:50 am',
        instructor: 'Mr. Kumar',
      ),
      ClassSchedule(
        subjectName: 'Practise with Communication',
        startTime: '11:00 am',
        endTime: '11:50 am',
        instructor: 'Mrs. Nandini',
      ),
      ClassSchedule(
        subjectName: 'Accents',
        startTime: '12:00 pm',
        endTime: '12:50 pm',
        instructor: 'Mr. Ramesh',
      ),
      ClassSchedule(
        subjectName: 'Numbers',
        startTime: '01:40 am',
        endTime: '02:30 pm',
        instructor: 'Mrs. Vani',
      ),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: new SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "LearnBowl",
            style: TextStyle(color: Color(CustomColors.primaryMaterialColor)),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline_rounded, color: Theme.of(context).primaryColor,),
              onPressed: () {},
            ),
          ],
          elevation: 1,
          brightness: Brightness.light,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Color(CustomColors.primaryMaterialColor),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: _classSchedule.length,
            itemBuilder: (context, index) {
              return Schedule(_classSchedule[index]);
            },
          ),
        ),
      ),
    );
  }
}
