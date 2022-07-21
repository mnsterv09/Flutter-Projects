import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/login_page.dart';
import 'package:mycoach_app/utilities/constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Widget _buildNameTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Full Name',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
              alignment: Alignment.centerLeft,
              decoration: kBoxDecorationStyle,
              height: 54.0,
              child: TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 15.0),
                    prefixIcon: Icon(Icons.person, color: Colors.black12)),
              )),
        ],
      );
    }

    Widget _buildPhoneTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Phone',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 54.0,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15.0),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black12,
                  )),
            ),
          )
        ],
      );
    }

    Widget _buildEmailRegisterTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email address',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 54.00,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15.0),
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

    Widget _buildCreateAccountBttn() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => print('Create Account Button Pressed'),
          padding: EdgeInsets.all(15.0),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Color.fromRGBO(0, 173, 181, 1),
          child: Text('Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat')),
        ),
      );
    }

    Widget _buildPasswordRegisterTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 54,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15.0),
                prefixIcon: Icon(Icons.lock, color: Colors.black12),
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildRegisterWith() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Or Register with',
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.w300),
          ),
        ],
      );
    }

    Widget _buildSocialRegisterBttn(Function onTap, AssetImage logo) {
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

    Widget _buildSocialRegisterButtonRow() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildSocialRegisterBttn(
              () => print('Login with Google'),
              AssetImage(
                'assets/icons/googlelogo.svg',
              ),
            ),
            SizedBox(height: 30),
            _buildSocialRegisterBttn(
              () => print('Login with Facebook'),
              AssetImage(
                'assets/icons/facelogo.svg',
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildLoginButton() {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return LoginPage();
            },
          ));
        },
        child: Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account?',
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
                      text: ' Login!',
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

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding:
                    EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create Accounts',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Please enter your credentials to proceed',
                          style: TextStyle(
                            color: Color.fromRGBO(58, 71, 80, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        _buildNameTF(),
                        SizedBox(height: 15.0),
                        _buildPhoneTF(),
                        SizedBox(height: 15.0),
                        _buildEmailRegisterTF(),
                        SizedBox(height: 15.0),
                        _buildPasswordRegisterTF(),
                        SizedBox(height: 10.0),
                        _buildCreateAccountBttn(),
                        SizedBox(height: 10.0),
                        _buildRegisterWith(),
                        SizedBox(height: 30.0),
                        _buildSocialRegisterButtonRow(),
                        SizedBox(height: 30.0),
                        _buildLoginButton(),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
