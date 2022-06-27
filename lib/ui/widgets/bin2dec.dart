import 'package:calculadorabinariodecimalgetx/ui/controllers/converter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bin2Dec extends GetView<ConverterController> {
  const Bin2Dec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          // this sintax expects to have the instance of the controller
          child: Obx(() => Text(
                // here we get the decimal value from the state
                controller.decimal,
                textAlign: TextAlign.right,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    key: const Key('decimal'),
              )),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Obx(() => Text(
                controller.binary,
                textAlign: TextAlign.right,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    key: const Key('binary'),
              )),
        ),
        Expanded(
          flex: 4,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      key: const Key('1'),
                      color: Theme.of(context).primaryColor,
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => controller.updateBinary(1),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      key: const Key('0'),
                      color: Theme.of(context).primaryColor,
                      child: const Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => controller.updateBinary(0),
                    ),
                  ),
                ),
              ]),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              key: const Key('reset'),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () => controller.reset(),
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
