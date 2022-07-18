import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/forget_password.dart';
import 'package:rohit_education/View/login/user/otp/otp_input.dart';
import 'package:rohit_education/View/login/user/registration.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/common_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: BackGroundGradient(
            child: Column(
          children: [
            Text(
              "Enter confirmation code",
              style: blacktext,
            ),
            3.h.heightBox,
            Text(
              "Enter the 4 digit one time password ",
              style: blacktext1,
            ),
            Text(
              "we have sent you on ",
              style: blacktext1,
            ),
            3.h.heightBox,
            Text(
              "+91-0123456789",
              style: blacktext1,
            ),
            Text(
              "&",
              style: blacktext1,
            ),
            Text(
              "userid@gmail.com",
              style: blacktext1,
            ),
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  OtpInput(
                      // validator: _timeController.otpValidator,
                      // controller: _timeController.otp[i],
                      autoFocus: i == 0 ? true : false),
              ],
            ),
            Text(
              "Resend",
              style: text1,
            ),
            5.h.heightBox,
            Commonbutton(
              btnname: "Verify",
              onPress: () {
                Get.to(const Registration());
              },
            ),
          ],
        ).pSymmetric(v: 13.h, h: 4.h)),
      ),
    );
  }
}
