import 'dart:math';
import 'package:bmi_eraasoft/screens/result_screen.dart';
import 'package:bmi_eraasoft/widgets/custom_app_bar.dart';
import 'package:bmi_eraasoft/widgets/gender_container.dart';
import 'package:bmi_eraasoft/widgets/info_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  bool isFemale = false;
  int height = 100;
  int weight=30;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
        child: ListView(
          children: [
            // Male / Female
            Row(
              children: [
                GenderContainer(
                  title: "Male",
                  icon: Icons.male,
                  color: isMale ? Colors.red : Color(0xff24263B),
                  onTap: () {
                    setState(() {
                      isMale = true;
                      isFemale = false;
                    });
                  },
                ),
                SizedBox(width: 9),
                GenderContainer(
                  title: "Female",
                  icon: Icons.female,
                  color: isFemale ? Colors.red : Color(0xff24263B),
                  onTap: () {
                    setState(() {
                      isMale = false;
                      isFemale = true;
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 25),

            // Height
            Container(
              height: 189,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: height.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " cm",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 300,
                    value: height.toDouble(),
                    activeColor: Color(0xffE83D67),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 29),

            // Weight & Age
            Row(
              children: [
                InfoContainer(
                  title: "Weight",
                  number: weight,
                  increaseOnTap: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decreaseOnTap: () {
                    setState(() {
                      if(weight>25){
                        weight--;
                      }
                    });
                  },
                ),
                SizedBox(width: 9),
                InfoContainer(title: "Age",
                    number: age,
                increaseOnTap: (){
                  setState(() {
                    age++;
                  });
                },
                decreaseOnTap: (){
                  if(age>10){
                    setState(() {
                      age--;
                    });
                  }
                },),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: (){
          double finalHeight = height / 100;
          double bmiResult = weight / pow(finalHeight, 2);
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
            result: bmiResult,
          )));
        },
        child: Container(
          height: 80,
          color: Color(0xffE83D67),
          alignment: Alignment.center,
          child: Text(
            "Calculate",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
