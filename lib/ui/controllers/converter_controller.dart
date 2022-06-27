import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  final _decimal = "0".obs;
  final _binary = "0".obs;

  String get decimal => _decimal.value;
  String get binary => _binary.value;

  void updateDecimal(int digit) {
    _decimal.value = Converter.adjustValue(decimal, digit);
    _binary.value = Converter.dec2bin(decimal);
  }

  void updateBinary(int digit) {
    _binary.value = Converter.adjustValue(binary, digit);
    _decimal.value = Converter.bin2dec(binary);
  }

  void reset() {
    _binary.value = "0";
    _decimal.value = "0";
  }
}
