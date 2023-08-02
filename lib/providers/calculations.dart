import 'package:flutter/material.dart';
import 'package:pizza_go/services/ManageData.dart';
import 'package:provider/provider.dart';

class Calculations with ChangeNotifier{
  int cheeseValue=0,beaconValue=0,onionValue=0,cartData=0;
  String? size;
  String? get getSize => size;
  bool isSelected=false,small=false,medium=false,large=false,selected=false;

  addCheese(){
    cheeseValue++;
    notifyListeners();
  }
  addBeacon(){
    beaconValue++;
    notifyListeners();
  }
  addOnion(){
    onionValue++;
    notifyListeners();
  }
  minusOnion(){
    onionValue--;
    notifyListeners();
  }
  minusBeacon() {
    beaconValue--;
    notifyListeners();
  }
  minusCheese(){
    cheeseValue--;
    notifyListeners();
  }
  selectSmallSize(){
    small=true;
    size ='s';
    notifyListeners();
  }
  selectMediumSize(){
    medium=true;
    size ='m';
    notifyListeners();
  }
  selectLargeSize(){
    large=true;
    size ='l';
    notifyListeners();
  }
  int getBeaconValue() {
    return beaconValue;
  }
  int getCheeseValue() {
    return cheeseValue;
  }
  int getOnionValue() {
    return onionValue;
  }
  removeAllData(){
    cheeseValue=0;
    beaconValue=0;
    onionValue=0;
    medium=false;
    small=false;;
    large=false;
    notifyListeners();
  }
  addToCart(BuildContext context,dynamic data)async{
    if(small!=false||medium!=false||large!=false){
      cartData++;
      await Provider.of<ManageData>(context,listen: false).submitData(context, data);
      notifyListeners();
    }
    else{
      return showModalBottomSheet(context: context, builder: (context){
        return Container(
          color: Colors.blueGrey,
          height:50.0,
          child:Center(
            child: Text('Select Size!',
            style: TextStyle(

            ),),
          ),
        );
      });
    }
  }



  }