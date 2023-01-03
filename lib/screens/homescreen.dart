import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.orange, Colors.red])),
            width: double.infinity,
            height: 150,
            child: const Text('Hello'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.only(top: 50),
                color: Colors.blueAccent,
              ),
              Wrap(alignment: WrapAlignment.start, children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.black,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
