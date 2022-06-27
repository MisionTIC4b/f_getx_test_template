import 'package:calculadorabinariodecimalgetx/ui/app.dart';
import 'package:calculadorabinariodecimalgetx/ui/controllers/converter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ConverterController());
  runApp(const App());
}
