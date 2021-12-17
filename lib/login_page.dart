import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/fadeAnimation.dart';

import 'package:provider/provider.dart';

import 'shared/theme_mode.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                    themeNotifier.isDark
                        ? Icons.nightlight_round
                        : Icons.wb_sunny,
                    color: themeNotifier.isDark
                        ? Colors.white
                        : Colors.grey.shade900),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: size.height * 0.2,
                top: size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeAnimation(
                  2,
                  Text(
                    "Welcome Back.",
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontSize: size.width * 0.1,
                        ),
                  ),
                ),
                FadeAnimation(
                  2,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or Phone number"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Password"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Forgot Password?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  2,
                  Column(
                    children: [
                      RaisedButton(
                        onPressed: () => {},
                        elevation: 0,
                        padding: EdgeInsets.all(18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Create account",
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                FadeAnimation(
                  2,
                  Center(
                      child: Text('Or',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 15))),
                ),
                FadeAnimation(
                  2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(width: 38, image: AssetImage('assets/twitter.png')),
                      Image(width: 30, image: AssetImage('assets/google.png')),
                      Image(
                          width: 30, image: AssetImage('assets/facebook.png')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
