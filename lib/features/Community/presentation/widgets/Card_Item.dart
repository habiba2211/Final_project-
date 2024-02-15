import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      height: 160.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/nabta.jpg',
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 15.0,
              // backgroundImage:AssetImage('assets/images/person.jpg'),
              child: Icon(Icons.person),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Habiba',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_tasks/Login_page.dart';
//
// class SplashScreen extends StatefulWidget {
//   static const String routeName='Splash';
//
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//  @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(const Duration(seconds: 3), navigateToLoginPage);
//   }
//   void navigateToLoginPage(){
//     Navigator.pushNamedAndRemoveUntil(context, LoginPage.routeName, (route) => false);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//       ),
//       body: Image.asset('assets/images/splashScreen.jpg',
//       fit: BoxFit.fill,
//       ),
//     );
//   }
// }
