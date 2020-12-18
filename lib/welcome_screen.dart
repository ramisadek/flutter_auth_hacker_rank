import 'package:flutter/material.dart';
import 'package:flutter_auth_hacker_rank/sign_in_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            //..some code
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/group.png"),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Text("Welcome"),
          Text("Sign in to Emax Application"),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
         InkWell(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingInScreen(),));
           },
           child:  Container(
             width: 300,
             height: 50,
             decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.all(Radius.circular(20)),
             ),
             alignment: Alignment.center,
             child: Text("sign in",style: TextStyle(color: Colors.white),),
           ),
         ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text("Or"),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            alignment: Alignment.center,
            child: Text("sign up",style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
