import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  final String name;
  final String time;
  final IconData? icon;
  final Color? iconColor;

  const AppointmentItem({
    super.key,
    required this.name,
    required this.time,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(
                  Icons.access_alarms,
                  size: 16,
                  color: Colors.black45,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 6),
              ),
              TextSpan(
                text: time,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        trailing:
        icon != null ? Icon(icon, color: iconColor) : null,
      ),
    );
  }
}
