import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: tinggi * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: lebar * 0.4,
                    height: tinggi * 0.25,
                    decoration: BoxDecoration(
                        color: bekgronamplop,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/gambar/Vector.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, top: 40),
                    // width: lebar * 0.4,
                    child: Text(
                      "Check Your Email",
                      style: TextStyle(
                          fontSize: 30,
                          color: tulis1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: lebar * 0.7,
                    child: Text(
                      "We have sent a password recover instructions to your email.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: tulis2,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  InkWell(
                    //  onTap: () => Get.toNamed(Routes.LOGIN),
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      width: lebar * 0.40,
                      height: tinggi * 0.08,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: bgLogin2),
                          onPressed: () {},
                          child: Text(
                            "Open Email App",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: lebar * 0.7,
                    child: Text(
                      "Skip, I'll confirm later",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: tulis2,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: lebar * 0.7,
              // margin: EdgeInsets.only(top: 85),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Did not receive the email ? Check your spam filter,or",
                    style: TextStyle(color: tulis2, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.REGISTER),
                    child: Text(
                      // onPressed: () => Get.toNamed("/login"),
                      // child:
                      "try another email address",
                         textAlign: TextAlign.center,
                      style: TextStyle(color: bgLogin2, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
