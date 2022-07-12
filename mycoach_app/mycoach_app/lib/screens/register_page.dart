import 'package:flutter/material.dart';
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
                  contentPadding: EdgeInsets.only(top: 3.0)),
            ),
          )
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
                  contentPadding: EdgeInsets.only(top: 3.0)),
            ),
          )
        ],
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Please enter your credentials to proceed',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        _buildNameTF(),
                        SizedBox(height: 15.0),
                        _buildPhoneTF(),
                        SizedBox(height: 15.0),
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
