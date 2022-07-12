import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycoach_app/screens/register_page.dart';
import 'package:mycoach_app/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

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

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.lock, color: Colors.black12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot password?',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            color: Color.fromRGBO(0, 173, 181, 1),
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black12),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.black,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
                color: Colors.black, fontSize: 10, fontFamily: 'Montserrat'),
          )
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromRGBO(0, 173, 181, 1),
        child: Text('Login',
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

  Widget _buildLoginWith() {
    return Column(
      children: <Widget>[
        Text(
          'Or login with',
          style: TextStyle(
              fontSize: 12.0, fontFamily: 'Montserrat', color: Colors.black),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildSocialButton(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        height: 30.0,
        width: 140.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButtonRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildSocialButton(
            () => print('Login with Google'),
            AssetImage(
              'assets/icons/googlelogo.svg',
            ),
          ),
          SizedBox(height: 30),
          _buildSocialButton(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/icons/facelogo.svg',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterButton() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return RegisterPage();
          },
        ));
      },
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Dont have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: ' Register!',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 173, 181, 1),
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                        'Welcome to Fitness!',
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
                            'Hello there, sign in to continue!',
                            style: TextStyle(
                              color: Color.fromRGBO(58, 71, 80, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          _buildEmailTF(),
                          SizedBox(height: 30.0),
                          _buildPasswordTF(),
                          _buildForgotPasswordButton(),
                          _buildRememberMeCheckbox(),
                          _buildLoginButton(),
                          SizedBox(height: 30.00),
                          _buildSocialButtonRow(),
                          SizedBox(height: 90.00),
                          _buildRegisterButton(),
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
