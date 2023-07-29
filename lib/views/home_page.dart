import 'package:flutter/material.dart';
import 'package:pizza_go/helpers/Middle.dart';
import 'package:pizza_go/helpers/footer.dart';
import 'package:pizza_go/helpers/headers.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:Footers().floatingActionButton(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Headers().appBar(context),
              Headers().headerText(),
              Headers().headerMenu(context),
              Headers().headerMenu(context),
              Divider(),
              MiddleHelpers().textFav(),
              MiddleHelpers().dataFav(context,'favourite'),
              MiddleHelpers().textBuisness(),
              MiddleHelpers().dataBuisness(context, 'buisness')
            ],

          ),
        ),
      )
    );
  }
}
