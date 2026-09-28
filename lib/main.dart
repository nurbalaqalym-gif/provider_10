import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int colorIndex = 0;

List<Color> colors = [
  Colors.green,
  Colors.greenAccent,
  Colors.red,
  Colors.redAccent,
  Colors.purple,
  Colors.purpleAccent,
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Switch + Container")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, height: 120, color: colors[colorIndex]),

            const SizedBox(height: 20),

            Switch(
              value: light,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                  colorIndex = (colorIndex + 1) % colors.length;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
