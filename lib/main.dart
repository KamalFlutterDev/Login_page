import 'package:flutter/material.dart';
import 'package:login_page/colors.dart';
import 'package:login_page/sign_up.dart';
import 'package:login_page/topbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: appTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          TopBar(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 100.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "sign in to your account",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2.2,
              left: 20.0,
              right: 20.0,
            ),
            child: Form(
              child: new Column(
                children: <Widget>[
                  SizedBox(
                    height: 60.0,
                    child: Material(
                      shadowColor: Colors.grey.shade50,
                      color: Colors.white,
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              // contentPadding: EdgeInsets.only(top: 18.0),
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60.0,
                    child: Material(
                      shadowColor: Colors.grey.shade50,
                      color: Colors.white,
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              // contentPadding: EdgeInsets.only(top: 18.0),
                              focusedBorder: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 150.0),
                    child: Text(
                      "Forget your password?",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 32.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ));
                          },
                          borderRadius: BorderRadius.circular(100.0),
                          splashColor: firstColor,
                          child: Container(
                            width: 60.0,
                            height: 40.0,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 40.0,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              //  color: Colors.orange,
                              borderRadius: BorderRadius.circular(100.0),
                              gradient: LinearGradient(
                                  colors: [thirdColor, firstColor],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have account?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        },
                        child: Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
