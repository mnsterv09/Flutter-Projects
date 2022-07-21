import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycoach_app/screens/verify_account_page.dart';
import '../utilities/constants.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

Widget _buildEmailTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black12,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _buildResetPasswordBttn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      padding: EdgeInsets.all(15.0),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Color.fromRGBO(0, 173, 181, 1),
      onPressed: () {
        _navigateVerifyAccount(context);
      },
      child: Text('Reset Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            letterSpacing: 1.5,
          )),
    ),
  );
}

void _navigateVerifyAccount(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => VerifyAccount()));
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Please enter your email below to receive your password reset code',
                            style: TextStyle(
                              color: Color.fromRGBO(58, 71, 80, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          _buildEmailTF(),
                          SizedBox(height: 50),
                          _buildResetPasswordBttn(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
