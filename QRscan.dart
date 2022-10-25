import 'package:flutter/material.dart';
//import 'ScanQR.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("QR Scan"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: (MediaQuery.of(context).size.height)-
                  AppBar().preferredSize.height-
                  kToolbarHeight,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/flutter-qr.png"
                  ),
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  radius: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Hero(
                        tag: "Scan QR",
                        child: Container(
                          width: ((MediaQuery.of(context).size.width)/2)-45,
                          height: 50,
                          child:FloatingActionButton(
                            focusColor:Colors.red,
                            //highlightedColor:Colors.blue,
                            hoverColor:Colors.lightBlue[100],
                            splashColor:Colors.blue,
                            //borderSide:BorderSide(width: 3,color: Colors.blue),
                            shape:StadiumBorder(),
                            child:
                            Text("Scan QR",
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQR()));
                            },
                          ),
                    ),
                    ),
                    SizedBox(width: 25,)
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

