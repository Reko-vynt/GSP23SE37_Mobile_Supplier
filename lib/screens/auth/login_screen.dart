import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gsp23se37_mobile_supplier/screens/auth/register_screen.dart';
import 'package:gsp23se37_mobile_supplier/screens/auth/verify_screen.dart';
import 'package:gsp23se37_mobile_supplier/utils/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập', style: MyStyle.appBarTextStyle),
        backgroundColor: MyStyle.mainColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // image
            Container(
              height: 200,
              width: 200,
              color: MyStyle.mainColor,
            ),
            // text welcome
            const SizedBox(height: 8.0,),
            Text(
              'Chào mừng bạn đến với ESMP',
              style: MyStyle.textH1Style,
            ),
            const SizedBox(height: 8.0,),
            Text(
              'Đăng nhập để tham gia vào hê thống của chúng tôi',
              style: MyStyle.textH2Style,
            ),
            // phone number
            const SizedBox(height: 8.0,),
            Container(
              height: 56,
              width: double.infinity,
              // color: Colors.grey,
              decoration: const BoxDecoration(
                color: Color(0xFFeef2f9),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.phone_android_outlined,
                    size: MyStyle.iconSize,
                    color: MyStyle.mainColor,
                  ),
                  Text(
                    '+84',
                    style: MyStyle.textH2Style,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.left,
                      style: MyStyle.textH2Style,
                      controller: _phoneNumberController,
                      maxLines: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                ],
              ),
            ),
            // buttom login
            const SizedBox(height: 8.0,),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyScreen(phoneNumber: _phoneNumberController.text)));
                },
                style: MyStyle.myButtonStyle,
                child: Text('Đăng nhập', style: MyStyle.textButton),
              ),
            ),
            const SizedBox(height: 8.0,),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterScreen()));
                },
                style: MyStyle.myButtonStyle,
                child: Text('Đăng Ký', style: MyStyle.textButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
