import 'dart:async';
import 'dart:ui';

import 'package:bmi_app/main.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return splashstate();
  }
}

class splashstate extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return splashpage();
  }
}

class splashpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
          child: Text(
        'WeLCoMe',
        style: TextStyle(
          fontFamily: 'font',
          fontSize: 77,
        ),
      )),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff4facfe),
        Color(0xff00f2fe),
      ])),
    );
  }
}















// Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 100,
//             ),
//             Center(
//                 child: SizedBox(
//                     width: 300,
//                     height: 50,
//                     child: Center(
//                       child: TextField(controller: t1),
//                     ))),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//                 child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Center(
//                       child: TextField(
//                         controller: t2,
//                       ),
//                     ))),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//                 child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Center(
//                       child: TextField(
//                         controller: t3,
//                       ),
//                     ))),
//             SizedBox(
        //       height: 60,
        //     ),
        //     Center(
        //       child: Text('Your BMI is Result'),
        //     )
        //   ],
        // ));
