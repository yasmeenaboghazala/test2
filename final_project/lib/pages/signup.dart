import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(children: [
              Center(
                  child: Container(
                      child: Column(children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child:  Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 24, color: Color(0xff6174e4,), ),
                    )),
                Image.asset("images/animation_lnx3jikq_small.gif"),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Your name ',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Your Email ',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffix: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Create a password ',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffix: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Confirm a password  ',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6174e4)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 77, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.grey[900], fontSize: 20),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_constructors

                    Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 20),
                    ),

                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: const Text("Login now",
                            style: TextStyle(
                                color: Color(0xff6d7fe6), fontSize: 20))),
                  ],
                )
              ])))
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Color(0xff6074e4),
      ),
    );
  }
}
