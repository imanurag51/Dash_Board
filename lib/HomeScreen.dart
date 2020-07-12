import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset =0;
  double yOffset = 0;
  double scaleFactor =1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
      color: Colors.white),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale((scaleFactor)),
      duration: Duration(milliseconds: 200),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                isDrawerOpen ? IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                ) : IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){
                    setState(() {
                      xOffset = 230;
                      yOffset =150;
                      scaleFactor =0.6;
                      isDrawerOpen = true;
                    });
                  },
                ),
                Column(
                  children: <Widget>[
                    Text('Location'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,color: Colors.green,),
                        Text('Uttar Pradesh')
                      ],
                    ),
                  ],
                ),
                CircleAvatar(),
              ],
            ),
          ),
          Container(
            height: 240,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
