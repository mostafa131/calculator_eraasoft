import 'package:bmi_eraasoft/extra/widget/appointment_item.dart';
import 'package:flutter/material.dart';
import 'package:bmi_eraasoft/widget/appointment_item.dart';
class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Appointments"),
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Wednesday, 22 May 2019",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  AppointmentItem(name: "Iulian Ruja", time: "10:50"),
                  AppointmentItem(name: "Victoria Olari", time: "13:00"),
                  AppointmentItem(name: "Diana Stefan", time: "15:20"),
                  AppointmentItem(name: "Gheorghe Popa", time: "16:10"),
                  AppointmentItem(
                    name: "Alexandru Sandu",
                    time: "16:40",
                    icon: Icons.close,
                    iconColor: Colors.red,
                  ),
                  AppointmentItem(
                    name: "Dumitru Simona",
                    time: "06:00",
                    icon: Icons.check,
                    iconColor: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
