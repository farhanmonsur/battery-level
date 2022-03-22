import 'package:assignment2/pages/battery_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isSelected = [false, false, false];

  void _selectIndex(int index) {
    setState(() {
      _isSelected = [false, false, false];
      _isSelected[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Select any flow',
              style: TextStyle(color: Colors.brown, fontSize: 20),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                _selectIndex(0);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20 / 2),
                decoration: BoxDecoration(
                    color: const Color(0xFFCF3442),
                    border: Border.all(
                        color: _isSelected[0]
                            ? const Color(0xFF3B89A6)
                            : const Color(0xFF39464E),
                        width: 3),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Broadcast',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                _selectIndex(1);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20 / 2),
                decoration: BoxDecoration(
                    color: const Color(0xFFCF3442),
                    border: Border.all(
                        color: _isSelected[1]
                            ? const Color(0xFF3B89A6)
                            : const Color(0xFF39464E),
                        width: 3),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Wifi RTT',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                _selectIndex(2);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20 / 2),
                decoration: BoxDecoration(
                    color: const Color(0xFFCF3442),
                    border: Border.all(
                        color: _isSelected[2]
                            ? const Color(0xFF3B89A6)
                            : const Color(0xFF39464E),
                        width: 3),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Battery',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  if (_isSelected[0]) {
                  } else if (_isSelected[1]) {
                  } else if (_isSelected[2]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BatteryInputPage()));
                  }
                },
                child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
