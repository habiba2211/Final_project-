import 'package:final_project/features/Community/presentation/widgets/Card_Item.dart';
import 'package:final_project/features/Community/presentation/widgets/PostCard_Item.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'AI NABTA',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                ],
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
            PostCardItem(),
          ],
        ),
      ),
    );
  }
}

// Text('Owner',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                       ),

// Card(
//                   shape:OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                     borderSide: BorderSide(
//                       style: BorderStyle.none,
//                       color: Colors.black,
//                     ),
//                   ),
//               ),
