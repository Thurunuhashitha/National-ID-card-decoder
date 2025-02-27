import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nic_controller.dart';
import 'nic_result_screen.dart';

class NICInputScreen extends StatelessWidget {
  final NICController nicController = Get.put(NICController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NIC Decoder')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nicController.nicInputController,
              decoration: InputDecoration(
                labelText: 'Enter NIC Number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.blue.shade50,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                nicController.decodeNIC();
                Get.to(() => NICResultScreen());
              },
              child: const Text('Decode', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}