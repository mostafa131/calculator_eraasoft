import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool withLeading;
  const CustomAppBar({super.key,this.withLeading=false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      leading:withLeading? InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ):null,
      
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
