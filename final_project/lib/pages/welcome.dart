import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  Future getpost() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    print(url);
    var response = await http.get(Uri.parse(url));
    // ignore: unused_local_variable
    var responsebody = json.decode(response.body);
    print(responsebody);
    return responsebody;
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
         
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 140),
                        child: Text("WELCOME",style: TextStyle(fontSize: 24,color: Color(0xff6174e4) ),)),
                      Image.asset(
"images/animation_lnwzv349_small.gif"                       
                      ),
                      SizedBox(height: 100,),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                           style: ButtonStyle(
                        backgroundColor:
                         MaterialStateProperty.all(Color(0xff6174e4)),
                       padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                          child: Text("Login",style: TextStyle(color: Colors.grey[900],fontSize: 20),))
                          ,SizedBox(height: 22,),
                            ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                           style: ButtonStyle(
                        backgroundColor:
                          MaterialStateProperty.all(Color(0xff6174e4)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                          child: Text("Signup",style: TextStyle(color: Colors.grey[900],fontSize: 20),))
                         
                          
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  child: Image.asset(
                    "images/main_top.png",
                    width: 100,
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "images/main_bottom.png",
                    width: 100,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
