import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {},
        child: Center(
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue),
            child: Center(
              child: Text("click button"),
            ),
          ),
        ),
      ),
    );
  }
}
