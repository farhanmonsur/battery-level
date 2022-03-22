import 'package:assignment2/pages/battery_compare.dart';
import 'package:flutter/material.dart';

class BatteryInputPage extends StatefulWidget {
  const BatteryInputPage({Key? key}) : super(key: key);

  @override
  State<BatteryInputPage> createState() => _BatteryInputState();
}

class _BatteryInputState extends State<BatteryInputPage> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery'),
      ),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        TextFormField(
          controller: _textController,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BatteryComparePage(
                            userInput: _textController.text,
                          )));
            },
            child: const Text('Next')),
      ]),
    );
  }
}
