import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/screens/LandingPage.dart';
import '../constant.dart';
import 'package:shikha_makeover_customer_app/screens/SignUpPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(
        AssetImage('asset/images/Wallpapers/LoginAndSignUp.jpg'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffe9ceb8),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/Wallpapers/LoginAndSignUp.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'inter',
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Please Log in with your ',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              color: Color(0xffff4b4b),
                              fontWeight: FontWeight.w700,
                              fontFamily: 'inter',
                            ),
                          ),
                          Text(
                            'M',
                            style: TextStyle(
                              color: Color(0xffffa64d),
                              fontWeight: FontWeight.w700,
                              fontFamily: 'inter',
                            ),
                          ),
                          Text(
                            ' Account',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password ? ',
                          style: TextStyle(
                              color: Color(0xffff7d85),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: openHomePage,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          gradient: kGradientStyle,
                        ),
                        child: Center(
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'sfpro',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text('OR'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('asset/images/googleLogo.png'),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('asset/images/fbLogo.png'),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'sfpro',
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    openSignUpPage();
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffff7d85),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void openSignUpPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LandingPage()));
  }
}
