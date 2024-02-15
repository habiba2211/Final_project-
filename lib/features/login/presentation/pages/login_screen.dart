import 'package:final_project/config/routes/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white10,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      'assets/images/logo.png',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter Eimal or Phone',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white24,
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    onSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white24,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white24,
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.green.shade200,
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.homeLayout);
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      disabledColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.signUp);
                          },
                          child: Text(
                            'Sign Up',
                          ))
                    ],
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Forgot PassWord ?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
