import 'package:flutter/material.dart';
import 'package:dujo_demo_web/model/addmail/JLA_LIVE_addmail.dart';
import 'package:lottie/lottie.dart';

import '../widgets/button_Container.dart';

class JLALiveAddMailSCreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  JLALiveAddMailSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JLA Live Course'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 2700,
              width: 800,
              child: ListView(
                children: [
                  SizedBox(
                      height: 400,
                      width: 400,
                      child: LottieBuilder.asset(
                          "assets/images/72266-vr-learning.json")),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: "Add mail",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final addfirebase = JLALiveEmailAddModel(
                          email: emailcontroller.text.trim());
                      JLALIVEEmailAddToFireBase()
                          .EmailController(addfirebase, context);
                    },
                    child: ButtonContainerWidget(
                      curving: 30,
                      colorindex: 0,
                      height: 60,
                      width: 100,
                      child: const Center(
                        child: Text(
                          "Add mail",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
