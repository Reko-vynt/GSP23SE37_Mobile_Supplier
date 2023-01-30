import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuthService() : _auth = FirebaseAuth.instance;
  final FirebaseAuth _auth;

  Future<void> verifyPhone({
    required String phoneNumber,
    required Function onFailed,
    required Function onSendCode,
  }) async {
    try{
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          log("error code: ${e.code}");
          log("error message: ${e.message}");
          String? err;
          if(e.code=='too-many-requests'){
            err='Chúng tôi đã chặn tất cả các yêu cầu từ thiết bị này do hoạt động bất thường. Thử lại sau.';
          }else{
            err=e.message;
          }
          onFailed(err);
        },
        codeSent: (String verificationId, int? resendToken) {
          onSendCode(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }on FirebaseAuthException catch (e){
      rethrow;
    }
  }
}
