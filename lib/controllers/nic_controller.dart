import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/nic_decoder.dart';

class NICController extends GetxController {
  TextEditingController nicInputController = TextEditingController();

  var nicFormat = ''.obs;
  var dateOfBirth = ''.obs;
  var weekday = ''.obs;
  var age = ''.obs;
  var gender = ''.obs;

  void decodeNIC() {
    var nic = nicInputController.text;
    var result = NICDecoder.decode(nic);
    nicFormat.value = result['format']!;
    dateOfBirth.value = result['dob']!;
    weekday.value = result['weekday']!;
    age.value = result['age']!;
    gender.value = result['gender']!;
  }
}