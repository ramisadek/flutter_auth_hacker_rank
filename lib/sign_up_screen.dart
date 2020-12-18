import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isSelected =false;


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
              child: Text("Name"),
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

            InkWell(
              onTap: (){
                isSelected =! isSelected;
                print(isSelected);
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Save password"),
                  Container(
                    width: 20,height: 20,

                    decoration: BoxDecoration(
                        color: isSelected? Colors.purple : Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                  ),
                ],
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
                  child: Text("Sign up",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),



            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        ),
      ),
    );
  }
}
