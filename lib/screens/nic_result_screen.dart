import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nic_controller.dart';

class NICResultScreen extends StatelessWidget {
  final NICController nicController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NIC Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetail('NIC Format', nicController.nicFormat.value),
                _buildDetail('Date of Birth', nicController.dateOfBirth.value),
                _buildDetail('Weekday', nicController.weekday.value),
                _buildDetail('Age', nicController.age.value),
                _buildDetail('Gender', nicController.gender.value),
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget _buildDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(Icons.info, color: Colors.blueAccent),
          const SizedBox(width: 10),
          Text('$title: ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}