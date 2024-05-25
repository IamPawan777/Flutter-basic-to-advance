// import 'package:basics_dart/Page/home_page.dart';
import 'package:basics_dart/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  // moveToHome(BuildContext context) {}
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Fill Form',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Employee Cradential',
                        style: TextStyle(
                          fontFamily: GoogleFonts.ubuntu().toString(),
                          color: Colors.black45,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'id',
                          labelText: 'Enter Id',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Id cant be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Name', labelText: 'Enter Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username can't be emoty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password', labelText: 'Create Password'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password can not be empty";
                          }
                          else if(value.length<6){
                            return 'password must be 6 character';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Address', labelText: 'Create Address'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "address cant be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () async {
                            // return moveToHome(context);
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                changeButton = true;
                              });
                              await Future.delayed(Duration(milliseconds: 800));

                              await Navigator.pushNamed(
                                  context, MyRoutes.homeRoute);

                              setState(() {
                                changeButton = false;
                              });
                            }
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                          ),
                        ),
                      ),
                      // ElevatedButton(

                      //     onPressed: () {
                      //       Navigator.push(context,
                      //           MaterialPageRoute(builder: (context) {
                      //         return HomePage();
                      //       }));
                      //     },
                      //     child: Text('Submit'))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
