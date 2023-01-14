import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final controller = Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: tinggi * 0.89,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(Routes.LOGIN),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 13, top: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: tulis1,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    // width: lebar * 0.4,
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          fontSize: 30,
                          color: tulis1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    width: lebar * 0.7,
                    child: Text(
                      "Enter the email associated with your account and we'll send an email with instructions to reset your password",
                      style: TextStyle(
                          fontSize: 16,
                          color: tulis2,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 17),
                    // width: lebar * 0.8,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 18,
                        color: tulis1,
                        // fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Enter your email address",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: tulis2),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: lebar,
                    height: tinggi * 0.08,
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: bgLogin2),
                        onPressed: () => Get.toNamed(Routes.VERIFICATION),
                        child: Text(
                          "Send Instructions",
                          style: TextStyle(fontSize: 20),
                        )),
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
