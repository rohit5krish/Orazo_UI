import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/circle_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class TechnologyBubbleWidget extends StatelessWidget {
  const TechnologyBubbleWidget({
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
      top: (currentBubble == 'tec-animation')
          ? screenSize.height * 0.4
          : (currentBubble == 'product-animation' ||
                  currentBubble == 'food-animation')
              ? screenSize.height * 0.34
              : screenSize.height * 0.27,
      left: (currentBubble == 'technology-animation')
          ? screenSize.width * 0.3
          : (currentBubble == 'tec-animation' ||
                  currentBubble == 'product-animation')
              ? screenSize.width * 0.55
              : (currentBubble == 'food-animation')
                  ? screenSize.width * 0.58
                  : screenSize.width * 0.43,
      child: CustomBubble(
        bubbleHeight: (currentBubble == 'technology-animation')
            ? screenSize.height * 0.28
            : (currentBubble == 'tec-animation' ||
                    currentBubble == 'food-animation')
                ? screenSize.height * 0.12
                : (currentBubble == 'product-animation')
                    ? screenSize.height * 0.14
                    : screenSize.height * 0.2,
        bubbleWidth: (currentBubble == 'technology-animation')
            ? screenSize.width * 0.65
            : (currentBubble == 'tec-animation')
                ? screenSize.width * 0.32
                : (currentBubble == 'product-animation' ||
                        currentBubble == 'food-animation')
                    ? screenSize.width * 0.34
                    : screenSize.width * 0.5,
        heroTag: 'technology-animation',
        bubbleShape: CircleShape(),
        contentText: 'Technology',
        contentStyle:
            (currentBubble == 'technology-animation') ? whiteTxt30 : whiteTxt18,
      ),
    );
  }
}
