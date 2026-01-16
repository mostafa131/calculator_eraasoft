import 'package:bmi_eraasoft/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
   ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(withLeading: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    getStatusText(),
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  Text(result.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(statusBody,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8B8c9E)
                  ),
                  textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  String statusBody = "";

  String getStatusText() {
    if (result < 18.5) {
      statusBody =
      "You have a lower than normal body weight. You can eat a bit more.";
      return "UnderWeight";
    } else if (result < 25) {
      statusBody =
      "You have a normal body weight. Good job!";
      return "Normal";
    } else if (result < 30) {
      statusBody =
      "You have a higher than normal body weight. Try to exercise more.";
      return "OverWeight";
    } else {
      statusBody =
      "Your body weight is in the obese range. Consider consulting a doctor.";
      return "Obese";
    }
  }
  }
