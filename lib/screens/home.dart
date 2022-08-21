import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/controller/animation_controller.dart';
import 'package:orazo_ui/screens/bubbles/big_product_bubble.dart';
import 'package:orazo_ui/screens/bubbles/bottom_product_bubble.dart';
import 'package:orazo_ui/screens/bubbles/bottom_small_bubble.dart';
import 'package:orazo_ui/screens/bubbles/circle_food_bubble.dart';
import 'package:orazo_ui/screens/bubbles/food_bubble.dart';
import 'package:orazo_ui/screens/bubbles/food_right_bubble.dart';
import 'package:orazo_ui/screens/bubbles/products_bubble.dart';
import 'package:orazo_ui/screens/bubbles/small_food_bubble.dart';
import 'package:orazo_ui/screens/bubbles/small_product_bubble.dart';
import 'package:orazo_ui/screens/bubbles/tec_bubble.dart';
import 'package:orazo_ui/screens/bubbles/technology_bubble.dart';
import 'package:orazo_ui/screens/bubbles/top_small_bubble.dart';
import 'package:orazo_ui/screens/widgets/continue_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final AnimateBubbleController animateBubbleController =
      Get.put(AnimateBubbleController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GetBuilder<AnimateBubbleController>(
            init: AnimateBubbleController(),
            builder: (bubbleCtrl) {
              final currentBubble = bubbleCtrl.animatedBubble;
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ProductsBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        TechnologyBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        TopSmallBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        TecBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        BottomProductWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        SmallProductBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        BigProductBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        FoodBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        SmallFoodBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        CircleFoodBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        FoodRightBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                        BottomSmallBubbleWidget(
                            currentBubble: currentBubble,
                            screenSize: screenSize),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: blackTxt18,
                        )),
                  ),
                  ContinueButtonWidget(screenSize: screenSize),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  )
                ],
              );
            }),
      ),
    );
  }
}
