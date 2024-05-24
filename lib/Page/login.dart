import 'package:basics_dart/utils/routes.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(milliseconds: 800));

    await Navigator.pushNamed(context, MyRoutes.homeRoute);

    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/image/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {}); // change state on same page
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter UserName', labelText: 'Name'),
                      validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Username can't be empty";
                          } 
                          return null;
                        },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter password', labelText: 'Password'),
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Password can't be empty";
                          } 
                          else if(value.length < 6) {
                            return "password must be more than 6";
                          }
                          return null;
                        },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              child: InkWell(
                onTap: () {
                  return moveToHome(context);
                  // setState(() {
                  //   changeButton = true;
                  // });
                  // await Future.delayed(Duration(milliseconds: 800));

                  // await Navigator.pushNamed(context, MyRoutes.homeRoute);

                  // setState(() {
                  //   changeButton = false;
                  // });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Colors.blueAccent,
                  //   borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  // ),
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                ),
              ),
            ),

            // ElevatedButton(
            //   child: Text("Login"),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   style: ElevatedButton.styleFrom(
            //       // primary: Colors.blue,
            //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            //       textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       elevation: 8),
            // )
          ],
        ),
      ),
    ));
  }
}
