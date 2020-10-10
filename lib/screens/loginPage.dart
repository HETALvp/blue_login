import 'package:flutter/material.dart';
import 'package:loginDemo5/Animation/fadeAnimation.dart';
import 'package:loginDemo5/screens/register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              // plant banner
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    //light 1
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/light-1.png"))),
                            ))),

                    //light 2
                    Positioned(
                        left: 140,
                        width: 80,
                        height: 100,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/light-2.png"))),
                            ))),

                    //clock
                    Positioned(
                        right: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/clock.png"))),
                            ))),

                    //login heading
                    Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )))
                  ],
                ),
              ),
              //banner complete

              //info box
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(
                      1.8,
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ],
                            color: Colors.white),

                        //Textfields
                        child: Column(
                          children: <Widget>[
                            //email box
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              //email textfield
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone Number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),

                            //password box
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              //password textfield
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //info box
                    SizedBox(
                      height: 30,
                    ),

                    //button
                    FadeAnimation(
                      2,
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ])),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 70,
                    ),

                    //register
                    FadeAnimation(
                        2.2,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an Account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegisterPage();
                                }));
                              },
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ),
                            )
                          ],
                        ))
                    //button complete
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
