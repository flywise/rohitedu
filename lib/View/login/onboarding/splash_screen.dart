import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/onboarding/onboarding.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.to(Onbording());
        },
        child: BackGroundGradient(
            child: Center(
          child: Container(
            height: 15.h,
            width: 30.w,
            decoration: BoxDecoration(
                border: Border.all(width: 2.w, color: themColor),
                borderRadius: BorderRadius.circular(50.sp)),
            child: Center(
              child: Text(
                "LOGO",
                style: text1,
              ),
            ),
          ),
        )),
      ),
    );
  }
}
