import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _gmailController = TextEditingController();

  void signUp() {
    if (_usernameController.text == 'admin' &&
        _passwordController.text == 'admin' &&
        _phoneController.text == '+7 708 123 45 67' &&
        _gmailController.text == 'admin@gmail.com') {
      Navigator.of(context).pushReplacementNamed('/sign_in');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid username or password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void cancel() {
    Navigator.of(context).pushReplacementNamed('/sign_in');
  }

  @override
  Widget build(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    SystemUiOverlayStyle overlayStyle = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;
    SystemChrome.setSystemUIOverlayStyle(overlayStyle);

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: [
            Image.asset('images/lyric_reel.png'),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _phoneController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Phone',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _gmailController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Gmail',
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: signUp,
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: cancel,
              child: Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
