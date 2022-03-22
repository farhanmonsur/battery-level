import 'dart:async';

import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

class BatteryComparePage extends StatefulWidget {
  const BatteryComparePage({Key? key, required this.userInput})
      : super(key: key);

  final String userInput;

  @override
  State<BatteryComparePage> createState() => _BatteryInputState();
}

class _BatteryInputState extends State<BatteryComparePage> {
  final Battery _battery = Battery();
  int _batteryLevel = 0;

  @override
  void initState() {
    super.initState();

    listenBatteryLevel();
  }

  void listenBatteryLevel() {
    getBatteryLevel();
  }

  Future getBatteryLevel() async {
    final batteryLevel = await _battery.batteryLevel;
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('fg');
    getBatteryLevel();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery'),
      ),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Text('Your input: ' + widget.userInput),
        Text('Actual Battery Level: $_batteryLevel'),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
