import 'package:flutter/material.dart';
import 'package:gsp23se37_mobile_supplier/utils/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            color: Colors.orange,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: (MySize.heightScreen(context) - 200) / 9,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 99, 95, 95)))));
                }),
          ),
        ],
      ),
    );
  }
}
