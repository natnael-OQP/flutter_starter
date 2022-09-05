import 'package:alegn_pay/models/Introduction.dart';
import 'package:alegn_pay/screen/introduction/components/IndexIndicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Introduction_demo[index].image,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(
            top: height * .1,
            left: width * .05,
            right: width * .05,
            bottom: width * .1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Introduction_demo[index].title.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.6,
                    ),
                  ),
                  Gap(width * .03),
                  SizedBox(
                    width: width * .7,
                    child: Text(
                      Introduction_demo[index].desc,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const IndexIndicator(),
                  Gap(width * .12),
                  index == Introduction_demo.length - 1
                      ? ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: HexColor("#194BE7"),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                                horizontal: width * .05,
                                vertical: width * .025),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width * .03),
                            ),
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  index = Introduction_demo.length - 1;
                                });
                              },
                              child: const Text(
                                "Skip",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Gap(width * .03),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  index = index + 1;
                                });
                              },
                              child: const Text(
                                "Next",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
