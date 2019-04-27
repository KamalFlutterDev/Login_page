import 'package:flutter/material.dart';
import 'package:login_page/colors.dart';
import 'topbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              TopBar(),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 30.0,
                ),
              ),
              Positioned(
                top: 100.0,
                left: MediaQuery.of(context).size.width / 3.5,
                child: Text(
                  "Create account",
                  style: TextStyle(fontSize: 32.0, color: Colors.white),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Form(
              child: Column(
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
                              hintText: "Name",
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
                    height: 20.0,
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
                                Icons.mail_outline,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
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
                          decoration: InputDecoration(
                              hintText: "Password",
                              // contentPadding: EdgeInsets.only(top: 18.0),
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
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
                          decoration: InputDecoration(
                              hintText: "Mobile",
                              // contentPadding: EdgeInsets.only(top: 18.0),
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 25.0,
                                color: Colors.black,
                              ),
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Create",
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  width: 5.8,
                ),
                Material(
                  child: Container(
                    height: 40.0,
                    width: 60.0,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [secondColor, firstColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              Center(
                child: Text("Or create account using social media", style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade600,
                ),),
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Material(
                    elevation: 25.0,
                    borderRadius: BorderRadius.circular(100.0),
                    shadowColor: Color.fromRGBO(211, 72, 54, 0.5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          FontAwesomeIcons.googlePlusG,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 72, 54, 1),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 25.0,
                    borderRadius: BorderRadius.circular(100.0),
                    shadowColor: Color.fromRGBO(56, 161, 243, 0.5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 161, 243, 1),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 25.0,
                    borderRadius: BorderRadius.circular(100.0),
                    shadowColor: Color.fromRGBO(60, 90, 153, 0.6),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 90, 153, 1),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
