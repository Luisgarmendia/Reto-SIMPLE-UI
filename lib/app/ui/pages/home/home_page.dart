import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taller_1/app/controllers/Home_controller.dart';
import 'package:taller_1/app/ui/pages/home/widget/button.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<HomeController>(
          builder: (_) {
            return Container(
              height: Get.height,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/home.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'Welcome to Sales TOP A Platform To Manager ReaL Estate Needs.',
                            style: TextStyle(
                              fontSize: 18,
                              textBaseline: TextBaseline.ideographic,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC3C3C3),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        function: () {},
                        text: 'Login',
                        textColor: Colors.white,
                        boxdecoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                        function: () {},
                        text: 'Sign Up',
                        textColor: Colors.deepPurple.shade700,
                        boxdecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 2, color: Colors.deepPurple.shade700),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    child: _socialfooter(),
                    alignment: Alignment.bottomCenter,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _socialfooter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Or via social media',
              style: TextStyle(
                fontSize: 18,
                textBaseline: TextBaseline.ideographic,
                color: Color(0xFFC3C3C3),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              socialMetod(
                colors: Colors.transparent,
                child: Image(
                  image: AssetImage('assets/images/fb.png'),
                ),
              ),
              socialMetod(
                colors: Colors.red,
                child: Transform.scale(
                  scale: 0.4,
                  child: Image(
                    image: AssetImage('assets/images/google.png'),
                    color: Colors.white,
                  ),
                ),
              ),
              socialMetod(
                colors: Colors.blue.shade900,
                child: Center(
                  child: Text(
                    'in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container socialMetod({Color? colors, Widget? child}) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: colors ?? Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
