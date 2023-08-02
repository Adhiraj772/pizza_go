import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../views/Mycart.dart';

class Footers extends ChangeNotifier{
  Widget floatingActionButton(BuildContext context){
    return FloatingActionButton(
      child: Icon(EvaIcons.shoppingBag),
        onPressed: (){
          Navigator.pushReplacement(context,PageTransition(child: MyCart(), type:PageTransitionType.rightToLeftWithFade) );
        });
  }
}