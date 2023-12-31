import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizza_go/views/detailScreen.dart';
import 'package:provider/provider.dart';

import '../services/ManageData.dart';

class MiddleHelpers extends ChangeNotifier{
  Widget textFav(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: RichText(text: TextSpan(
          text: 'Favourite ',style: TextStyle(
        shadows:[
          BoxShadow(
            color: Colors.black,
            blurRadius: 1
          )
        ] ,
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 29.0,
      ),
          children: <TextSpan>[
            TextSpan(
                text: 'dishes',
                style: TextStyle(
                  shadows: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0
                    )
                  ] ,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),

            )
          ]
      )),
    );
  }
  Widget dataFav(BuildContext context,String collection){
    return Container(
      height: 300,
      child: FutureBuilder(
        future: Provider.of<ManageData>(context,listen:false).fetchData(collection),
          builder: (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: Lottie.asset('animations/delivery.json'),
            );
          }
          return ListView.builder(
            scrollDirection:Axis.horizontal ,
            itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context,int index){
              return InkWell(
                onTap:(){
                  Navigator.push(context, DetailScreen(queryDocumentSnapshot:snapshot.data[index]) as Route<Object?>);
                } ,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 320,
                    width: 200,
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 5,
                          spreadRadius: 3,

                        )
                      ]
                    ) ,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  height: 150,
                                  child:Image.network(snapshot.data[index].data()['image']) ,

                                ),
                              ),
                              Positioned(
                              left: 116.0,
                              child:IconButton(

                                  onPressed:(){}, icon: Icon(EvaIcons.heart,color: Colors.red,)))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(snapshot.data[index].data()['name'],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.black
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(snapshot.data[index].data()['category'],
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.cyan
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellow.shade700
                                        ),
                                    Text(snapshot.data[index].data()['ratings'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16.0,
                                          color: Colors.grey
                                      ),),

                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: [
                                      Icon(FontAwesomeIcons.rupeeSign,
                                        size: 12,
                                      ),
                                      Text(snapshot.data[index].data()['price'].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.black
                                        ),),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
              });
        })
    );
  }
  Widget textBuisness(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: RichText(text: TextSpan(
          text: 'Buisness  ',style: TextStyle(
        shadows:[
          BoxShadow(
              color: Colors.black,
              blurRadius: 1
          )
        ] ,
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 29.0,
      ),
          children: <TextSpan>[
            TextSpan(
              text: 'Lunch',
              style: TextStyle(
                  shadows: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0
                    )
                  ] ,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),

            )
          ]
      )),
    );
  }
  Widget dataBuisness(BuildContext context,String collection){
    return Container(
      height: 400.0,
      child: FutureBuilder(builder:(BuildContext context,AsyncSnapshot snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: Lottie.asset('animations/delivery.json'),
          );
        }
        else{
          return ListView.builder(
            itemCount: snapshot.data.length,
              itemBuilder:(BuildContext context,int index){
              return GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 5,
                            spreadRadius: 3,

                          )
                        ]
                    ) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:8.0 ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(snapshot.data[index].data()['name'],
                                style: TextStyle(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                              Text(snapshot.data[index].data()['category'],
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan
                                ),),
                              Text(snapshot.data[index].data()['notPrice'].toString(),
                                style: TextStyle(
                                  decoration:TextDecoration.lineThrough ,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.cyan
                                ),),
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.rupeeSign,size: 16.0,),
                                  Text(snapshot.data[index].data()['price'].toString(),
                                  style: TextStyle(

                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black
                                  ),),]
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 115,
                          child: Image.network(
                              snapshot.data[index].data()['image']

                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
              });
        }
      },
      future: Provider.of<ManageData>(context,listen: false).fetchData(collection),),
    );
  }
}
