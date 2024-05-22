import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/image/login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "LogIn",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter UserName', labelText: 'Name'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter password', labelText: 'Password'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: Text("Login"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              // primary: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              elevation: 8),
        )
      ],
    ));
  }
}
