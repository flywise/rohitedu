import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/student_pannel/home_Screen.dart';
import 'package:rohit_education/View/widget/bottom.dart';
import 'package:rohit_education/View/widget/common_button.dart';
import 'package:rohit_education/View/widget/input_widget.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundGradient(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Registration",
              style: blacktext,
            ),
            2.h.heightBox,
            Text(
              "First Name*",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "User Name",
              secure: false,
            ),
            2.h.heightBox,
            Text(
              "Middle Name",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "Middle name",
              secure: false,
            ),
            2.h.heightBox,
            Text(
              "Last Name*",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "Surname",
              secure: false,
            ),
            2.h.heightBox,
            Text(
              "Mobile Number*",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            Row(
              children: [
                Container(
                  height: 6.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.sp)),
                  child: Row(
                    children: [
                      Text("+91"),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 22.sp,
                      )
                    ],
                  ).pSymmetric(v: 0, h: 9.sp),
                ),
                5.w.widthBox,
                Container(
                  height: 6.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '0123456789',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            2.h.heightBox,
            Text(
              "Email*",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "",
              secure: false,
            ),
            2.h.heightBox,
            Text(
              "Country",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "",
              secure: false,
            ),
            2.h.heightBox,
            Text(
              "Captcha",
              style: blacktext1,
            ),
            1.5.h.heightBox,
            InputWidget(
              hinttext: "",
              secure: false,
            ),
            3.h.heightBox,
            Container(
              height: 10.h,
              width: 80.w,
              color: Colors.grey,
              child: Center(
                child: Text(
                  "8V2U4",
                  style: text1,
                ),
              ),
            ),
            4.h.heightBox,
            Commonbutton(
                onPress: () {
                  Get.to(Bottom());
                },
                btnname: "REGISTER")
          ],
        ).pSymmetric(v: 6.h, h: 4.h),
      )),
    );
  }
}
