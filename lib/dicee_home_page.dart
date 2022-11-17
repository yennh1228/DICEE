import 'package:flutter/material.dart';

class DiceeHomePage extends StatefulWidget {
  const DiceeHomePage({Key? key}) : super(key: key);

  @override
  State<DiceeHomePage> createState() => _DiceeHomePageState();
}

class _DiceeHomePageState extends State<DiceeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: const DiceePage(),
    );
  }
}

class DiceePage extends StatelessWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    debugPrint("Left button got pressed");
                  },
                  child: Image.asset('assets/images/dice1.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    debugPrint("Right button got pressed");
                  },
                  child: Image.asset('assets/images/dice2.png'))),
        ],
      ),
    );
  }
}
