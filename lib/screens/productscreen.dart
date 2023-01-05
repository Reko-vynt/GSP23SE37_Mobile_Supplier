import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsp23se37_mobile_supplier/screens/homescreen.dart';
import 'package:gsp23se37_mobile_supplier/screens/profilescreen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Color onClickButtonColor = Colors.orange;
  Color offClickButtonColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          offClickButtonColor = onClickButtonColor;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: offClickButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      child: const Text('Button'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          offClickButtonColor = onClickButtonColor;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileScreen()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: offClickButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      child: const Text('Button'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          offClickButtonColor = onClickButtonColor;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: offClickButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      child: const Text('Button'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 130,
                      margin: const EdgeInsets.all(10),
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
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.network(
                                          'https://scontent.fsgn2-7.fna.fbcdn.net/v/t1.6435-9/90165832_2630008873907746_7104968027573059584_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=cdbe9c&_nc_ohc=ffpqYUc3YpcAX_8TOQK&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfCM3jbBsyzkJhxN7p4hBMhg-SGN8BDCzo8rTPBm44-V0w&oe=63DE6D27'),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: const [
                                      Text('data'),
                                      Text('data'),
                                      Text('text')
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 30, left: 50),
                                      child: const Icon(
                                        FontAwesomeIcons.trashCan,
                                        size: 15,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                12), // <-- Radius
                                          ),
                                        ),
                                        child: const Text('Button'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                12), // <-- Radius
                                          ),
                                        ),
                                        child: const Text('Button'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                12), // <-- Radius
                                          ),
                                        ),
                                        child: const Text('Button'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
