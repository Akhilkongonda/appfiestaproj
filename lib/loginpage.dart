import 'package:flutter/material.dart';
import 'package:myproject/newuserpage.dart';
import 'package:myproject/forgotpasswordpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Event Management App',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUserPage()));
              },
              child: Text('Create New Account'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ForgotPasswordPage()));
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }

  void newUser(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NewUserPage()));
  }

  void forgotPassword(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
  }
}

