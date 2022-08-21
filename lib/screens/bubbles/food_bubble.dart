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
                : screenSize.height * 0.48,
        left: (currentBubble == 'technology-animation')
            ? screenSize.width * 0.4
            : (currentBubble == 'tec-animation')
                ? screenSize.width * 0.38
                : screenSize.width * 0.35,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'tec-animation')
              ? screenSize.height * 0.12
              : (currentBubble == 'product-animation')
                  ? screenSize.height * 0.14
                  : screenSize.height * 0.15,
          bubbleWidth: (currentBubble == 'tec-animation')
              ? screenSize.width * 0.32
              : (currentBubble == 'product-animation')
                  ? screenSize.width * 0.34
                  : screenSize.width * 0.3,
          heroTag: 'food-animation',
          bubbleShape: CustomCommonShape(),
          contentText: 'Food',
          contentStyle: (currentBubble == 'technology-animation')
              ? whiteTxt20
              : (currentBubble == 'product-animation')
                  ? whiteTxt20
                  : (currentBubble == 'tec-animation')
                      ? whiteTxt20
                      : whiteTxt18,
        ));
  }
}
