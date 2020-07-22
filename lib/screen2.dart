import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiddendrawer/configration.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
                child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: Colors.grey,
                    child: Hero(
                      tag: 1,
                        child: Image.asset('assets/cat1.jpeg')),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 80),

                    child: Text('hello anurag',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    color: Colors.white,
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
                      Navigator.pop(context);
                    },),
                    IconButton(icon: Icon(Icons.share),onPressed: (){},),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(padding: EdgeInsets.all(10),
                child: Text('hdhddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: shadowList
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.favorite_border),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 150,
                      child: Text('Adoption',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent
                      ),
                    )
                  ],
                ),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  color: Colors.grey[300],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
