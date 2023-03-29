import 'package:bmi_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // brightness: Brightness.dark,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ), //const MyHomePage(title: 'Flutter Demo Home Page'),

        home: splash());
  }
}

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homestate();
  }
}

class homestate extends State<home> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var t3 = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        endDrawer: Drawer(
            child: Column(
          children: [
            CircleAvatar(
              radius: 32,
            ),
            Text('about'),
            Text('Setting'),
          ],
        )),
        appBar: AppBar(
          title: Row(children: [
            Icon(
              Icons.home,
              size: 45,
            ),
            SizedBox(width: 20),
            Text('BMI')
          ]),
        ),
        body: Stack(children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: SizedBox(
                          width: 300,
                          height: 50,
                          child: Center(
                            child: TextField(
                              controller: t1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 2.4)),
                                hintText: 'Enter your Weight (in kg)',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.4, color: Colors.green)),
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Container(
                          width: 300,
                          height: 50,
                          child: Center(
                            child: TextField(
                              controller: t2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 2.4)),
                                hintText: 'Enter your height (in feet)',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.4, color: Colors.green)),
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Container(
                          width: 300,
                          height: 50,
                          child: Center(
                            child: TextField(
                              controller: t3,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 2.4)),
                                hintText: 'Enter your height (in inch)',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.4, color: Colors.green)),
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      ' $result',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 36, 7, 255)),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var wt = t1.text.toString();
                        var ft = t2.text.toString();
                        var inch = t3.text.toString();

                        if (wt != "" && ft != '' && inch != '') {
                          //bmi

                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var iinch = int.parse(inch);

                          var tinch = (ift * 12) + iinch;

                          var tcm = tinch * 2.54;
                          var tm = tcm / 100;

                          var bmi = iwt / (tm * tm);
                          // result = '$bmi';
                          result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                          setState(() {});
                        } else {
                          setState(() {
                            result = "Please fill all the required blanks";
                          });
                        }
                      },
                      child: Text(
                        "Result",
                        style: TextStyle(fontSize: 35),
                      )),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      'Discription: this app helps to check fitness of your body.according to your Height and Weight it claculate your body mass index. if your BMi is less than 18 it means you are under weighted,if your BMi is grater than 25 it means you are over weighted,if your BMi is between 18 to 25 it means you are healthy, '),
                ],
              )),
        ]));
  }
}
