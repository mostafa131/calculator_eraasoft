
import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final int number;
  final void Function()? increaseOnTap;
  final void Function()? decreaseOnTap;
  const InfoContainer({super.key, required this.title, required this.number, this.increaseOnTap, this.decreaseOnTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:EdgeInsets.only(top: 15,bottom: 21) ,
        decoration: BoxDecoration(
          color: Color(0xff333244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(title,
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 5,),
            Text(number.toString(),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height:21,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(onPressed:decreaseOnTap,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
                FloatingActionButton.small(onPressed:increaseOnTap,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
