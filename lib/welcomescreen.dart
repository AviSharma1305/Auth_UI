import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignIn_Screen.dart';
import 'SignUp_Screen.dart';
import 'Themes.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/download.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "WoodPecker\n",
                        style: GoogleFonts.lobster(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 48,
                          color: kprime,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: "Woodpecker, Stay In Touch.",
                        style: GoogleFonts.lobster(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 28,
                          fontWeight: FontWeight.w100,
                          color: kprime,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonBar(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 120.0,
                        height: 40.0,
                        child: RaisedButton(
                          color: kprime,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()),
                            );
                          },
                          child: Text(
                            "Log In",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 120.0,
                        height: 40.0,
                        child: RaisedButton(
                          color: kprime,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp_Screen()),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}