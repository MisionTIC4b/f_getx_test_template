import 'package:calculadorabinariodecimalgetx/ui/controllers/converter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dec2Bin extends GetView<ConverterController> {
  const Dec2Bin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
        Widget>[
      Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Obx(
            () => Text(
              controller.decimal,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              key: const Key('decimal'),
            ),
          )),
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerRight,
        child: Obx(() => Text(
              controller.binary,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              key: const Key('binary'),
            )),
      ),
      Expanded(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('1'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(1),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('2'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // we raise a new event
                onPressed: () => controller.updateDecimal(2),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('3'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // we raise a new event
                onPressed: () => controller.updateDecimal(3),
              ),
            )),
          ],
        ),
      )),
      Expanded(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('4'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(4),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('5'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "5",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(5),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('6'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "6",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(6),
              ),
            )),
          ],
        ),
      )),
      Expanded(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('7'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "7",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(7),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('8'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "8",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(8),
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: MaterialButton(
                key: const Key('9'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "9",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => controller.updateDecimal(9),
              ),
            )),
          ],
        ),
      )),
      Expanded(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    key: const Key('0'),
                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "0",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(0),
                  ),
                )),
          ],
        ),
      )),
    ]);
  }
}
