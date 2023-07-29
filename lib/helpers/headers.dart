import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Headers extends ChangeNotifier{
Widget appBar(BuildContext context){
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.userLarge)),
          Row(
            children:[
              Icon(FontAwesomeIcons.locationArrow),
              Text('New Area',style: TextStyle(fontSize: 12,
            fontWeight: FontWeight.w300),),
            ]
          ),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.black,)),
        ],
      ),
    ),
  );


}
Widget headerText(){
  return Container(
    constraints: BoxConstraints(
      maxWidth: 310.0
    ),
    child: RichText(text: TextSpan(
      text: 'What would you like   ',style: TextStyle(
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontSize: 29.0,
    ),
      children: <TextSpan>[
        TextSpan(
          text: 'to eat?',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w600,
            color: Colors.black
          )
        )
      ]
    )),
  );
}
Widget headerMenu(BuildContext context){
  return Padding(
    padding:EdgeInsets.only(top: 20.0) ,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              // boxShadow:[ BoxShadow(
              //   color: Colors.redAccent,blurRadius: 15.0
              // ),
              // ],
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.grey.shade100,
            ),
            height: 40.0,
            width: 100.0,
            child: Center(
              child: Text('All Food',
              style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ) ,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              boxShadow:[ BoxShadow(
                  color: Colors.lightBlueAccent,blurRadius: 15.0
              ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.grey.shade100,
            ),
            height: 40.0,
            width: 100.0,
            child: Center(
              child: Text('Pizza',
                style:TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ) ,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              // boxShadow:[ BoxShadow(
              //     color: Colors.redAccent,blurRadius: 15.0
              // ),
              // ],
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.grey.shade100,
            ),
            height: 40.0,
            width: 100.0,
            child: Center(
              child: Text('Pasta',
                style:TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ) ,),
            ),
          ),
        )
      ],
    ),
  );
}
}