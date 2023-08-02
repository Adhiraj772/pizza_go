import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizza_go/providers/authentication.dart';
import 'package:pizza_go/views/home_page.dart';
import 'package:provider/provider.dart';
class Login extends StatelessWidget {
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white24
        ),
        height:MediaQuery.of(context).size.width ,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text: TextSpan(text: 'Piz',style: TextStyle(
                fontSize: 56.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,


              ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'a',
                        style: TextStyle(
                          fontSize: 56.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,

                        )
                    ),
                    TextSpan(
                        text: 'go',
                        style: TextStyle(
                          fontSize: 56.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,

                        )
                    )
                  ]
              ),),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(onPressed:(){
                    loginSheet(context);
                  },
                    color: Colors.black54,
                  child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),),
                  MaterialButton(onPressed:(){
                    SignInSheet(context);
                  },
                    color: Colors.black54,
                    child: Text('SignIn',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),)
                ],
              )
            ],
          ) ,

        ),
      ),
    );
  }

  loginSheet(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 400.0,
        width: 400.0,
        color: Colors.blueGrey.shade700,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration:InputDecoration(
                    hintText: 'Enter email',
                    hintStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                  controller: emailController,
                  style: TextStyle(
                    color: Colors.white
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration:InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(
                          color: Colors.white
                      )
                  ),
                  controller: emailController,
                  style: TextStyle(
                      color: Colors.white
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: MaterialButton(
                  child: Text('Login',style: TextStyle(
                    color: Colors.white
                  ),),
                  color:Colors.lightBlue,
                  onPressed:() => Provider.of<Authentication>(context,listen: false).loginIntoAccount(emailController.text, passController.text).whenComplete(() => Navigator.pushReplacement(context,PageTransition(child:Homescreen() , type:PageTransitionType.leftToRight))),
                ),
              )
            ],
          ),
        ),
      );
    });

  }
  SignInSheet(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 400.0,
        width: 400.0,
        color: Colors.blueGrey.shade700,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration:InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(
                          color: Colors.white
                      )
                  ),
                  controller: emailController,
                  style: TextStyle(
                      color: Colors.white
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration:InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(
                          color: Colors.white
                      )
                  ),
                  controller: emailController,
                  style: TextStyle(
                      color: Colors.white
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: MaterialButton(
                  child: Text('SignIn',style: TextStyle(
                      color: Colors.white
                  ),),
                  color:Colors.lightBlue,
                  onPressed:() => Provider.of<Authentication>(context,listen: false).createNewAccount(emailController.text, passController.text).whenComplete(() => Navigator.pushReplacement(context,PageTransition(child:Homescreen() , type:PageTransitionType.leftToRight))),
                ),
              )
            ],
          ),
        ),
      );
    });

  }
}
