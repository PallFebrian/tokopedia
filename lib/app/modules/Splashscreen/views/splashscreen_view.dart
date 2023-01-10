import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [bgLogin, bgLogin2])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: lebar,
              height: tinggi * 0.3,
              // color: Colors.grey,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/gambar/sp.png'))),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: lebar *0.4,
              child: Text(
                "Let's Get Started",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              // width: lebar * 0.8,
              child: Text(
                "Connect with each other with chatting or calling. Enjoy safe and private texting",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w100
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 50),
                width: lebar,
                height: tinggi * 0.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 23),
                      child: Text(
                        'Join Now',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff0D8173)),
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.only(bottom: 80),
                  // width: lebar * 0.8,
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            // )
            //kasih judul sesuai pigma
            //kasih sub judul sesuai pigma
          ],
        ),
      ),
    );
  }
}
