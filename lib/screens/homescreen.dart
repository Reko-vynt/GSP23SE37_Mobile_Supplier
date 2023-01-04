import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsp23se37_mobile_supplier/utils/size.dart';

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Colors.orange, Colors.red])),
              width: double.infinity,
              height: 100,
              child: const Text(
                textAlign: TextAlign.center,
                'Hello',
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 130,
                    width: MySize.widthScreen(context) - 30,
                    margin: const EdgeInsets.only(top: 50),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 0.5,
                              color: Color.fromARGB(255, 61, 60, 60),
                            ))),
                            width: MySize.widthScreen(context) - 50,
                            height: 50,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Total Sale'),
                                  Text('0.00')
                                ]),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                            width: 0.5,
                            color: Color.fromARGB(255, 61, 60, 60),
                          ))),
                          width: (MySize.widthScreen(context) - 50) / 3,
                          height: 50,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Text('4.4'), Text('Rating')]),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                            width: 0.5,
                            color: Color.fromARGB(255, 61, 60, 60),
                          ))),
                          width: (MySize.widthScreen(context) - 50) / 3,
                          height: 50,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('420'),
                                Text('Total Product')
                              ]),
                        ),
                        SizedBox(
                          width: (MySize.widthScreen(context) - 50) / 3,
                          height: 50,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('2000'),
                                Text('Total Orders')
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                Wrap(spacing: 10, children: <Widget>[
                  Container(
                    margin:
                        const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: (MySize.widthScreen(context) - 30) / 2 - 15,
                    height: (MySize.widthScreen(context) - 30) / 2 - 15,
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.wallet),
                          Text('Balance'),
                          Text('10000000')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: (MySize.widthScreen(context) - 30) / 2 - 15,
                    height: (MySize.widthScreen(context) - 30) / 2 - 15,
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.wallet),
                          Text('Report'),
                          Text('33333')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: (MySize.widthScreen(context) - 30) / 2 - 15,
                    height: (MySize.widthScreen(context) - 30) / 2 - 15,
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.box),
                          Text('Sold Out Products'),
                          Text('4')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: (MySize.widthScreen(context) - 30) / 2 - 15,
                    height: (MySize.widthScreen(context) - 30) / 2 - 15,
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.wallet,
                              color: Colors.pinkAccent),
                          Text('Low in Stock'),
                          Text('1')
                        ],
                      ),
                    ),
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: (MySize.widthScreen(context) - 40),
                  height: 300,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
