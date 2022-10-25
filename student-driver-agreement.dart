
import 'dart:ui';

import 'package:flutter/material.dart';
import 'bus_no.dart';

import 'stu_login.dart';

class SDA extends StatefulWidget {
  const SDA({Key? key}) : super(key: key);
  @override
  State<SDA> createState() => _SDAState();
}

class _SDAState extends State<SDA> {
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[40],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonTheme(minWidth: 200.0, height: 100.0,
               child: RaisedButton
                 (onPressed: flag?() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
               }: null,
                  child: Text('Students'),
                  disabledColor: Colors.deepOrange[300],
                  color: Colors.deepOrange[600],
                  disabledTextColor: Colors.white,
                  textColor: Colors.deepOrange[100],


              ),
            ),
            ButtonTheme(minWidth: 200.0, height: 100.0,
                child: RaisedButton
                  (onPressed: flag?() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Patro()));
                }:null,
                child: Text('Drivers'),
                disabledColor: Colors.green[300],
                color: Colors.green[600],
                disabledTextColor: Colors.white,
                textColor: Colors.green[50],

              )
            ),
            Container(
              height: 50,
              width: 350,
              color: Colors.pink.shade200,
              child: CheckboxListTile(
                selected: false,
                title: Text('I agree to terms and conditions'),
                secondary: Icon( Icons.corporate_fare_rounded),
                value: flag,
                onChanged: (val) {
                  setState(() {
                    flag=val!;
                  });
                },
                checkColor: Colors.amber[100],
              ),
            ),
          ],
        )
      )
    );
  }
}



