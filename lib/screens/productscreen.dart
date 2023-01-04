import 'package:flutter/material.dart';

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
                ElevatedButton(
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
                ElevatedButton(
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
                ElevatedButton(
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
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      height: 100,
                    );
                  }),
            ),
          ],
        ));
  }
}
