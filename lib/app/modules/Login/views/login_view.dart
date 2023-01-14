import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
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
                Container(
                  height: tinggi * 0.89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: 10),
                        // width: lebar * 0.4,
                        child: Text(
                          "Hi, Welcome Back!👋",
                          style: TextStyle(
                              fontSize: 30,
                              color: tulis1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        // width: lebar * 0.8,
                        child: Text(
                          "Hello again, you’ve been missed!",
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
                        margin: EdgeInsets.only(bottom: 10),
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
                        margin: EdgeInsets.only(bottom: 15),
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
                      InkWell(
                          onTap: () => Get.toNamed(Routes.RESET_PASSWORD),
                        child: Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(bottom: 11),
                          width: lebar,
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontSize: 16,
                                color: tulis2,
                                fontWeight: FontWeight.w500),
                          ),
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
                              "Login",
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
                              "Or Login With",
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
                        "Don't have an account ? ",
                        style: TextStyle(color: tulis2, fontSize: 15),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.REGISTER),
                        child: Text(
                          // onPressed: () => Get.toNamed("/login"),
                          // child:
                          "Sign up",
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

//  decoration: BoxDecoration(
//                           // color: tulis2,
//                           border: Border.all(color: Colors.grey),
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10))),

//  decoration: BoxDecoration(
//                           // color: Colors.grey,
//                           border: Border.all(color: Colors.grey),
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10))),



