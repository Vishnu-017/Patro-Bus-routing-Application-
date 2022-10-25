import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'QRscan.dart';


class Patro extends StatefulWidget {
  const Patro({Key? key}) : super(key: key);

  @override
  State<Patro> createState() => _PatroState();
}

class _PatroState extends State<Patro> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Driver Login'),
            ),
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        alignment: Alignment.center,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                      Positioned(
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0,
                                  )
                                ]
                            ),
                          )),
                      Container(
                        child: NumberPicker(
                          axis: Axis.horizontal,
                          itemHeight: 40,
                          itemWidth: 40,
                          itemCount: 7,
                          value: current,
                          minValue: 1,
                          maxValue: 31,
                          onChanged: (v) {
                            setState(() {
                              current = v;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Bus NO: $current",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),),
                  MaterialButton(
                    minWidth: double.infinity,
                    child: Text('Next'),
                    color: Colors.teal,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ],
              ),
            )
        ));
  }


}
