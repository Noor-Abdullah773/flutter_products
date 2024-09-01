import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _loginWithEmail() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Add your login logic here
    print('Login with email: $username, password: $password');
  }

  void _loginWithGoogle() {
    // Add your Google login logic here
    print('Login with Google');
  }

  void _loginWithFacebook() {
    // Add your Facebook login logic here
    print('Login with Facebook');
  }

  void _loginWithGitHub() {
    // Add your GitHub login logic here
    print('Login with GitHub');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _loginWithEmail,
              child: Text('Login'),
            ),
            SizedBox(height: 20.0),
            Text('OR'),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: _loginWithGoogle,
              icon: Icon(Icons.login),
              label: Text('Sign in with Google'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
            ElevatedButton.icon(
              onPressed: _loginWithFacebook,
              icon: Icon(Icons.facebook),
              label: Text('Sign in with Facebook'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            ElevatedButton.icon(
              onPressed: _loginWithGitHub,
              icon: Icon(Icons.code),
              label: Text('Sign in with GitHub'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 