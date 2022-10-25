import 'package:flutter/material.dart';
import 'package:patro/models/user.dart';

class AddUserDialog extends StatefulWidget {

  final Function(User) addUser;
  AddUserDialog(this.addUser);
  @override
  State<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {

  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller ){
        return Container(
          margin: EdgeInsets.all(4),
          child: TextField(
            decoration: InputDecoration(
              labelText: hint,

            ),
            controller: controller,
          ),
        );
    }

    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneNoController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
      child: Column (
      children: [
        Text
          (
            'Add User',
          style: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 32,
          color: Colors.blueGrey,
        )
        ),
        buildTextfield('username', usernameController),
        buildTextfield('email', emailController),
        buildTextfield('PhoneNo', phoneNoController),

        ElevatedButton(
          onPressed: (){
            final user =User(usernameController.text, emailController.text,phoneNoController.text);
            widget.addUser(user);
            Navigator.of(context).pop();
          },
          child: Text('Add User'),),



      ],
    ),
      ),
    );
  }
}

