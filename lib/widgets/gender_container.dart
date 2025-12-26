import 'package:flutter/material.dart';


class GenderContainer extends StatelessWidget {
 final String title;
 final IconData icon;
 final void Function()? onTap;
 final Color? color;

  const GenderContainer({super.key , required this.title, required this.icon, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap:onTap,
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 120, color: Colors.white),
              Text(title,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
