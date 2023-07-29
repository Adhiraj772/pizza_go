import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizza_go/views/Mycart.dart';
import 'package:pizza_go/views/home_page.dart';
class DetailScreen extends StatefulWidget {
  final QuerySnapshot queryDocumentSnapshot;
  DetailScreen({required this.queryDocumentSnapshot});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int cheeseVal=0;
  int beaconVal=0;
  int onion=0;
  int totalItems=0;
  CollectionReference<Map<String, dynamic>> collectionRef = FirebaseFirestore.instance.collection('favourite');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingActionButton(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(context),pizzaImage(),middleData(),footerDetails()
,
        ],
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
  Widget pizzaImage(){
    return Center(
      child: SizedBox(
        height: 280.0,
        child: Container(
          child: Image.network(widget.queryDocumentSnapshot.docs[0]['image']),
          decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
  Widget middleData(){
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star,color: Colors.yellow.shade700,size: 20.0,),
            Padding
              (padding:EdgeInsets.only(left: 8.0) ,
                child: Text(widget.queryDocumentSnapshot.docs[0]['ratings'],style:TextStyle(fontSize: 20.0,color: Colors.grey.shade500) ,))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              constraints:  BoxConstraints(
    maxWidth: 300.0
    ),
              child: Text(widget.queryDocumentSnapshot.docs[0]['name'],
              style: TextStyle(fontSize: 40.0,color: Colors.grey.shade500,fontWeight:FontWeight.w400 ),),
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.rupeeSign,size: 20.0,color: Colors.cyan,),
                Text(widget.queryDocumentSnapshot.docs[0]['prices'].toString(),
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold
                ),)
              ],
            )

          ],
        )
      ],
    );
  }
  Widget footerDetails(){
    return SizedBox(
      height: 300.0,
      child: Stack(
        children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(40.0) ,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 5,
                  spreadRadius: 3
                )
              ]
            ),
            width: 400.0,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add more stuff',style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Cheese',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 20.0,
                      ),),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.minus)),
                          Text('$cheeseVal',style: TextStyle(
                            fontSize: 20.0,color: Colors.grey.shade500
                          ),),
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.plus)),
                        ],
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Onion',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 20.0,
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.minus)),
                          Text('$onion',style: TextStyle(
                              fontSize: 20.0,color: Colors.grey.shade500
                          ),),
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.plus)),
                        ],
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Beacon',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 20.0,
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.minus)),
                          Text('$beaconVal',style: TextStyle(
                              fontSize: 20.0,color: Colors.grey.shade500
                          ),),
                          IconButton(onPressed: (){}, icon:Icon(EvaIcons.plus)),
                        ],
                      )

                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    
                  ),
                  child: Text('S',style: TextStyle(
                    fontSize: 20.0,
                  ),),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(
                        color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  child: Text('M',style: TextStyle(
                    fontSize: 20.0,
                  ),),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(
                        color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  child: Text('L',style: TextStyle(
                    fontSize: 20.0,
                  ),),
                ),
              )

            ],
          )
        ],
      ),
    );
  }
  Widget floatingActionButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red.shade500,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
              child: Text('Add to cart',
              style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
        ),
        Stack(
          children: [
            FloatingActionButton(onPressed: (){
              Navigator.pushReplacement(context, PageTransition(child: MyCart(), type: PageTransitionType.bottomToTop));
            },
              child: Icon(Icons.shopping_basket,color: Colors.black,),),
            Positioned(
              left: 35,
                child: CircleAvatar(
                  radius: 10,
              child: Text('$totalItems'),
            ))
          ],
        )
      ],
    );
  }
}
