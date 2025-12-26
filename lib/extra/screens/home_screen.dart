
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff6FA8DC),
              Color(0xff7A1F6A),



            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset("images/umbrella.png",height: 40,color: Colors.orangeAccent,),
              // child: Icon(Icons.umbrella,size: 50,color: Colors.orangeAccent,),
            ),
            SizedBox(height: 15,),
            Text(" This is a sample text.",
              style: TextStyle(fontSize: 18,color: Colors.white),)
          ],
        ),

      ),
    );
  }
}
