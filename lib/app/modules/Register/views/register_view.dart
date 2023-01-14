import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Container(
                  height: tinggi * 0.89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Get.toNamed(Routes.LOGIN),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, top: 13),
                          child: Icon(
                            Icons.arrow_back,
                            color: tulis1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 7),
                        // width: lebar * 0.4,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              fontSize: 30,
                              color: tulis1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        // width: lebar * 0.8,
                        child: Text(
                          "Connect with your friends today!",
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
                              fontSize: 16,
                              color: tulis1,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                             hintText: "Enter your email",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: tulis2),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        // width: lebar * 0.8,
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 16,
                              color: tulis1,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                width: lebar * 0.13,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: Text(
                                        "+62",
                                        style: TextStyle(
                                            fontSize: 17, color: tulis2),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      height: tinggi * 0.04,
                                      child: VerticalDivider(
                                        color: tulis2,
                                        width: 2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                             hintText: "Enter your mobile number",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: tulis2),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 7),
                        // width: lebar * 0.8,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 16,
                              color: tulis1,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: TextField(
                          controller: controller.password,
                          obscureText:
                              controller.showhidepw.value ? false : true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(
                                    controller.showhidepw.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  )),
                             hintText: "Enter your password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: tulis2),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: lebar,
                        height: tinggi * 0.08,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: bgLogin2),
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: Divider(color: tulis2),
                            ),
                            Text(
                              "Or Sign up With",
                              style: TextStyle(color: tulis2),
                            ),
                            Container(
                              width: 100,
                              child: Divider(color: tulis2),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: lebar * 0.42,
                              height: tinggi * 0.08,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/gambar/Facebook.png"),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontSize: 20, color: tulis1),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              width: lebar * 0.42,
                              height: tinggi * 0.08,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/gambar/Google.png"),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            fontSize: 20, color: tulis1),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 85),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ? ",
                        style: TextStyle(color: tulis2, fontSize: 15),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.LOGIN),
                        child: Text(
                          "Login",
                          style: TextStyle(color: bgLogin2, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
