import 'package:flutter/material.dart';
import 'package:flutter_auth_hacker_rank/sign_up_screen.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/icons/girl.png"),
            Padding(padding: EdgeInsets.only(top: 30)),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Email"),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: 300,
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Password"),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: 300,
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("forget password ?"),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),

            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: null,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  alignment: Alignment.center,
                  child: Text("Login in",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20)),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",style: TextStyle(color: Colors.grey),),
                  Text("Signup",style: TextStyle(color: Colors.purple),)
                ],
              ),
            ),


            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        ),
      ),
    );
  }
}
