import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/style.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key, required this.phoneNumber}) : super(key: key);
  final String phoneNumber;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        // border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        color:const Color(0xFFeef2f9),
        border: Border.all(color: MyStyle.mainColor,),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      // border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      border: Border.all(color: MyStyle.mainColor,),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        // color: Color.fromRGBO(234, 239, 243, 1),
        color: MyStyle.mainColor,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Xác thực',
          style: MyStyle.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: MyStyle.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                height: 200,
                width: 200,
                color: MyStyle.mainColor,
              ),
              const SizedBox(
                height: 50.0,
              ),
              Text("Xác Thực OTP", style: MyStyle.textH2Style),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Số điện thoại ${widget.phoneNumber}',
                style: MyStyle.textH2Style,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Pinput(
                length: 6,
                keyboardType: TextInputType.number,
                // controller: pinController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                // pinputAutovalidateMode: null,
                textInputAction: TextInputAction.next,
                showCursor: true,
                // validator: (s) {
                //   print('validating code: $s');
                // },
                onCompleted: null,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Không nhận được OTP? ', style: MyStyle.textH2Style,),
                  Text('Thử lại sau 60s', style: MyStyle.textH2Style,),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                  },
                  style: MyStyle.myButtonStyle,
                  child: Text('Xác thực', style: MyStyle.textButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
