import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  final doctors = [
    {"name": "Dr Ahmed", "spec": "Cardiology"},
    {"name": "Dr Sara", "spec": "Dentist"},
  ];

  void book(String doctor) {
    FirebaseFirestore.instance.collection("bookings").add({
      "doctor": doctor,
      "time": DateTime.now().toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Clinic")),
      body: ListView(
        children: doctors.map((doc) {
          return Card(
            child: ListTile(
              title: Text(doc["name"]!),
              subtitle: Text(doc["spec"]!),
              trailing: ElevatedButton(
                child: Text("Book"),
                onPressed: () {
                  book(doc["name"]!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Booked")),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
