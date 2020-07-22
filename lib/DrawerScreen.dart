import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Image.asset("assets/lion3.jpeg",fit: BoxFit.cover,),
            margin: EdgeInsets.only(top: 30, left: 10),
            color: Colors.yellow,
            height: 200,
            width: MediaQuery.of(context).size.width-150,
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Hello',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.account_circle,color: Colors.white,),
          ),
          ListTile(
            title: Text('Exit',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.cancel,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
