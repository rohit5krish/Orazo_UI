import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class FoodBubbleWidget extends StatelessWidget {
  const FoodBubbleWidget({
    Key? key,
    required this.currentBubble,
    required this.screenSize,
  }) : super(key: key);

  final String currentBubble;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: animDuration,
        top: (currentBubble == 'technology-animation')
            ? screenSize.height * 0.55
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.58
                : (currentBubble == 'food-animation')
                    ? screenSize.height * 0.46
                    : screenSize.height * 0.48,
        left: (currentBubble == 'technology-animation')
            ? screenSize.width * 0.4
            : (currentBubble == 'tec-animation')
                ? screenSize.width * 0.38
                : (currentBubble == 'food-animation')
                    ? screenSize.width * 0.28
                    : screenSize.width * 0.35,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'tec-animation')
              ? screenSize.height * 0.12
              : (currentBubble == 'product-animation')
                  ? screenSize.height * 0.14
                  : (currentBubble == 'food-animation')
                      ? screenSize.height * 0.2
                      : screenSize.height * 0.15,
          bubbleWidth: (currentBubble == 'tec-animation')
              ? screenSize.width * 0.32
              : (currentBubble == 'product-animation')
                  ? screenSize.width * 0.34
                  : (currentBubble == 'food-animation')
                      ? screenSize.width * 0.52
                      : screenSize.width * 0.3,
          heroTag: 'food-animation',
          bubbleShape: CustomCommonShape(),
          contentText: 'Food',
          contentStyle: (currentBubble == 'technology-animation' ||
                  currentBubble == 'product-animation' ||
                  currentBubble == 'tec-animation')
              ? whiteTxt20
              : (currentBubble == 'food-animation')
                  ? whiteTxt30
                  : whiteTxt18,
        ));
  }
}
