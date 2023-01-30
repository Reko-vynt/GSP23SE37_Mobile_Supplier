import 'package:flutter/material.dart';
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Lỗi hệ thống"),
            TextButton(onPressed: (){}, child:const Text('Trang chủ')),
          ],
        ),
      ),
    );
  }
}
