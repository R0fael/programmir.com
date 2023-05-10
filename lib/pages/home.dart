import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmir/controllers/home.cl.dart';
import 'package:programmir/widgets/button.widget.dart';
import 'package:programmir/widgets/styled_text.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return GetBuilder<HomeCl>(
      init: HomeCl(),
      builder: ((controller) {
        return Scaffold(
          backgroundColor: controller.colorList[1],
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: controller.colorList[2],
                ),
                width: dim.width,
                height: dim.height * 0.12,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ButtonWidget(
                      width: dim.width * 0.15,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "About Us")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.13,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Learn")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.13,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Apps")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.13,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Viver")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.15,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "docs")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.15,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Serveses")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.15,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Credits")),
                    ),
                    ButtonWidget(
                      width: dim.width * 0.2,
                      height: dim.height * 0.1,
                      func: () {},
                      color: controller.colorList[3],
                      child: Center(child: StyledText(text: "Coder's page")),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: dim.height * 0.85,
                width: dim.width * 0.95,
                child: ListView(
                  children: [
                    SizedBox(height: dim.height * 0.05),
                    Center(
                      child: StyledText(
                        text: "Hello Programmir.com! - We are create more",
                      ),
                    ),
                    SizedBox(height: dim.height * 0.05),
                    StyledText(
                      text:
                          "We are creating sites, apps, games and even Operating Systems",
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
