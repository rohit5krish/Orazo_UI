import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/circle_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class CircleFoodBubbleWidget extends StatelessWidget {
  const CircleFoodBubbleWidget({
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
            ? screenSize.height * 0.71
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.7
                : (currentBubble == 'product-animation')
                    ? screenSize.height * 0.63
                    : screenSize.height * 0.65,
        left: (currentBubble == 'tec-animation')
            ? screenSize.width * 0.5
            : (currentBubble == 'product-animation')
                ? screenSize.width * 0.42
                : screenSize.width * 0.35,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.1,
          bubbleWidth: (currentBubble == 'tec-animation')
              ? screenSize.width * 0.25
              : (currentBubble == 'product-animation')
                  ? screenSize.width * 0.25
                  : screenSize.width * 0.3,
          heroTag: 'food-circle-bubble',
          bubbleShape: CircleShape(),
        ));
  }
}
