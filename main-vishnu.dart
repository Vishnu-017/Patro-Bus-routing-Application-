import 'package:flutter/material.dart';
import 'package:patro/models/user.dart';
import 'user_dialouge.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
    const MyApp({Key? key}):super(key: key);
    @override
    Widget build(BuildContext context)
    {
      return MaterialApp(
        home: MyFlutterList(),
        title:' My Flutter List',
      );
    }
}
class MyFlutterList extends StatefulWidget{
  const MyFlutterList({Key? key}):super(key: key);
  @override
  _MyFlutterListState createState() => _MyFlutterListState();
}
class _MyFlutterListState extends State<MyFlutterList>{
  List<User> userList=[];
  @override
  Widget build(BuildContext context){

    void addUserData(User user){
      setState(() {
        userList.add(user);
      });
    }
    void showUserDialog() {
      showDialog(context: context, builder: (_){
        return AlertDialog(
          content: AddUserDialog(addUserData),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
    },);
  }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDialog,
        child: Icon(Icons.add),
        ),
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,

        child: ListView.builder(itemBuilder: (ctx,index){
          return Card(
            margin: EdgeInsets.all(4),
            elevation: 8,
            child: ListTile(
            title:Text(userList[index].username,style: TextStyle(
              fontSize: 22,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),),
            subtitle: Text(userList[index].email,style: TextStyle(
              fontSize: 18,
              color: Colors.black12,
              fontWeight: FontWeight.w600,
            ),),
            trailing: Text(userList[index].phoneNo,style: TextStyle(
              fontSize: 18,
              color: Colors.black26,
              fontWeight: FontWeight.w500,
            ),),
          ),
          );


        },itemCount: userList.length,),
        ),
      );
  }
}