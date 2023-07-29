import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'home_page.dart';
class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding:EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context),
            headerText(),
            cartData(),
            shipingDetail( context)

          ],
        ),
      ),

    );
  }
  Widget appBar(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Row(

        children: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context,PageTransition(child: Homescreen(), type:PageTransitionType.rightToLeftWithFade) );
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          Padding(
            padding: EdgeInsets.only(left: 300),
            child: IconButton(onPressed: (){

            }, icon: Icon(FontAwesomeIcons.trash,color: Colors.red,)),
          )
        ],
      ),
    );
  }
  Widget headerText(){
    return Column(
      children: [
        Text('Your',style: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,

        ),),
        Text('Cart',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,

        ),)
      ],
    );
  }
  Widget cartData(){
    return SizedBox(
      height: 300.0,
    );
  }
  Widget shipingDetail(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        boxShadow:
          [
            colo
          ]
      ),
      height: 130.0,
      width: 400.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.locationArrow),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 250.0
                      ),
                        child: Text('New Police Area')),
                  )
                  
                ],
              ),
              IconButton(onPressed:null, icon: Icon(Icons.edit))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(EvaIcons.clock),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Container(
                        constraints: BoxConstraints(
                            maxWidth: 250.0
                        ),
                        child: Text('6 pm')),
                  )

                ],
              ),
              IconButton(onPressed:null, icon: Icon(Icons.edit))
            ],
          )
        ],
      ),
    );
  }
}
