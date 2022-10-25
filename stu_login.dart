import 'dart:ui';

import 'package:flutter/material.dart';

import 'source-destinatoin.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[40],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              'Student Login',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black26,
              )
            ),

            Form(
              child: Column(
                children: [

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: '  Email  ',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value) {},
                  ),

                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: '  Password  ',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value) {},
                  ),
                  MaterialButton(
                    onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Maps()));
                    },
                    color: Colors.blueAccent,
                    child: Text(
                          ' Login ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                    ),
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }
}

