
import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  int sourceValue =0, destinationValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
                'Enter your source and destination',
                style: TextStyle(
                  //fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                )
            ),
            DropdownButtonFormField(
              value: sourceValue,
              items: const [
                DropdownMenuItem(
                  child: Text('-Select Source-'),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text('Kinathkadavu'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Company'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Petrol Bunk'),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text('Dangerous Curve'),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Text('Nam Eshwar College'),
                  value: 5,
                ),
              ], onChanged: (int? value) {  },
            ),

            DropdownButtonFormField(
              value: destinationValue,
              items: const [
                DropdownMenuItem(
                  child: Text('-Select Destination-'),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text('Kinathkadavu'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Company'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Petrol Bunk'),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text('Dangerous Curve'),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Text('Nam Eshwar College'),
                  value: 5,
                ),
              ], onChanged: (int? value) {  },
            ),
          ],
        ),
        toolbarHeight:MediaQuery.of(context).size.height/5,
        leading: Container(),
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.vertical(
            bottom: Radius.elliptical(500, 56.0),
          ),
        ),
      ),
      body: Center(

      )
    );
  }
}
