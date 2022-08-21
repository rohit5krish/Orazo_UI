import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class TecBubbleWidget extends StatelessWidget {
  const TecBubbleWidget({
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
            ? screenSize.height * 0.28
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.33
                : (currentBubble == 'product-animation' ||
                        currentBubble == 'food-animation')
                    ? screenSize.height * 0.35
                    : screenSize.height * 0.26,
        left: (currentBubble == 'technology-animation')
            ? 0
            : (currentBubble == 'tec-animation')
                ? 0
                : (currentBubble == 'product-animation')
                    ? screenSize.width * 0.04
                    : screenSize.width * 0.02,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'technology-animation')
              ? screenSize.height * 0.15
              : (currentBubble == 'tec-animation')
                  ? screenSize.height * 0.26
                  : (currentBubble == 'product-animation' ||
                          currentBubble == 'food-animation')
                      ? screenSize.height * 0.13
                      : screenSize.height * 0.16,
          bubbleWidth: (currentBubble == 'technology-animation' ||
                  currentBubble == 'food-animation' ||
                  currentBubble == 'product-animation')
              ? screenSize.width * 0.3
              : (currentBubble == 'tec-animation')
                  ? screenSize.width * 0.5
                  : screenSize.width * 0.32,
          heroTag: 'tec-animation',
          bubbleShape: CustomCommonShape(),
          contentText: 'Tec',
          contentStyle: (currentBubble == 'technology-animation')
              ? whiteTxt22
              : (currentBubble == 'product-animation' ||
                      currentBubble == 'food-animation')
                  ? whiteTxt22
                  : (currentBubble == 'tec-animation')
                      ? whiteTxt35
                      : whiteTxt18,
        ));
  }
}
